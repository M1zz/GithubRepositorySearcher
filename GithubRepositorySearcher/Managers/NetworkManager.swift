//
//  NetworkManager.swift
//  GithubRepositorySearcher
//
//  Created by 이현호 on 2021/06/20.
//

import UIKit

class NetworkManager {
    // singleton
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/search/repositories"

    private init() {}

    func getRepositories(for repositoryName: String, page: Int, completed: @escaping (Result<Response, GRError>) -> Void) {
        let endpoint = baseURL + "?q=\(repositoryName)"
        
        guard let url = URL(string: endpoint) else {
            completed(.failure(.invalidUsername))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in

            if let _ = error {
                completed(.failure(.unableToComplete))
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode(Response.self, from: data)
                completed(.success(followers))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
    
}
