//
//  CurrencyTrackerModel.swift
//  BitPrice
//
//  Created by Берн on 30.12.2019.
//  Copyright © 2019 Bern. All rights reserved.
//

import Foundation
import Moya
import Mapper
import Moya_ModelMapper
import RxOptional
import RxSwift

struct CurrencyTrackerModel {
    
    let provider: MoyaProvider<Magic>
    
    func trackCurrencies() -> Observable<[CryptoCurrency]?> {
        return getCurrencies()
    }
    
    func trackCurrency(currencyId: String) -> Observable<[CryptoCurrency]?> {
        return getCurrency(currencyId: currencyId)
    }
    
    internal func getCurrencies() -> Observable<[CryptoCurrency]?> {
        return self.provider.rx
            .request(Magic.currencies)
            .debug()
            .mapOptional(to: [CryptoCurrency].self)
            .asObservable()
    }
    
    internal func getCurrency(currencyId: String) -> Observable<[CryptoCurrency]?> {
        return self.provider.rx
            .request(Magic.currency(currencyId: currencyId))
            .debug()
            .mapOptional(to: [CryptoCurrency].self)
            .asObservable()
    }
}
