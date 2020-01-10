//
//  Magic.swift
//  BitPrice
//
//  Created by Берн on 30.12.2019.
//  Copyright © 2019 Bern. All rights reserved.
//

import Foundation
import Moya

private extension String {
    var URLEscapedString: String {
        return self.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlHostAllowed)!
    }
}

enum Magic {
    case currencies
    case currency(currencyId: String)
}

extension Magic: TargetType {
    var headers: [String : String]? {
        return nil
    }
    
    var baseURL: URL { return URL(string: "https://api.coinmarketcap.com/v1/")! }
    var path: String {
        switch self {
        case .currencies:
            return "ticker/"
        case .currency(let currencyId):
            return "ticker/\(currencyId)"
        }
    }
    var method: Moya.Method {
        return .get
    }
    var parameters: [String: Any]? {
        switch self {
        default: do {
            return [:]
            }
        }
    }
    var sampleData: Data {
        switch self {
        default: do {
            return "".data(using: .utf8)!
            }
        }
    }
    var task: Task {
        return .requestParameters(parameters: parameters!, encoding: parameterEncoding)
    }
    var parameterEncoding: ParameterEncoding {
        return URLEncoding.queryString
    }
}
