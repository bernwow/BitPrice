//
//  BitPrice.swift
//  BitPrice
//
//  Created by Берн on 28.12.2019.
//  Copyright © 2019 Bern. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import Moya
import Moya_ModelMapper

public class BitPrices {
    private var currencyTrackerModel: CurrencyTrackerModel!

    public init() {
        self.currencyTrackerModel = CurrencyTrackerModel(provider: MoyaProvider())
    }
    
    public func getCurrencies() -> Observable<[CryptoCurrency]?> {
        return currencyTrackerModel.trackCurrencies()
    }
    
    public func getCurrency(currencyId: String) -> Observable<[CryptoCurrency]?> {
        return currencyTrackerModel.trackCurrency(currencyId: currencyId)
    }
}
