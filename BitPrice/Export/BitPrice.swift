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

class BitPrice {
    private var timer: Timer?
    private var currencies: Observable<[CryptoCurrency]?>
    private var currencyTrackerModel: CurrencyTrackerModel!

    init() {
        self.currencies = Observable<[CryptoCurrency]?>.empty()
        self.currencyTrackerModel = CurrencyTrackerModel(provider: MoyaProvider())
    }
    
    func getCurrencies() -> Observable<[CryptoCurrency]?> {
        return currencyTrackerModel.trackCurrencies()
    }
}
