//
//  GRError.swift
//  GithubRepositorySearcher
//
//  Created by 이현호 on 2021/06/20.
//

import Foundation

enum GRError: String, Error {
    case invalidRepositoryname = "이 레파지토리 이름은 잘못된 요청입니다. 다시 요청해주세요."
    case unableToComplete = "요청을 완료할 수 없습니다. 네트워크 연결을 확인해주세요."
    case invalidResponse = "유효하지 않은 서버로 부터의 응답입니다. 다시 요청해주세요."
    case invalidData = "서버로 받은 데이터가 유효하지 않습니다. 다시 요청해주세요."
    case emptyTextField = "검색창이 비어있습니다 검색어를 입력해주세요."
    case noResult = "검색 결과가 없습니다. 다른 검색어를 입력해주세요."
}
