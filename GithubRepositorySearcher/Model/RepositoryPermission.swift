//
//  RepositoryPermission.swift
//  GithubRepositorySearcher
//
//  Created by 이현호 on 2021/06/21.
//

import Foundation

struct RepositoryPermission : Codable {
    public let admin : Bool?
    public let pull : Bool?
    public let push : Bool?

    enum CodingKeys: String, CodingKey {
        case admin
        case pull
        case push
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        admin = try values.decodeIfPresent(Bool.self, forKey: .admin)
        pull = try values.decodeIfPresent(Bool.self, forKey: .pull)
        push = try values.decodeIfPresent(Bool.self, forKey: .push)
    }
}
