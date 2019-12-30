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

class BitPrices {
    private var currencyTrackerModel: CurrencyTrackerModel!

    init() {
        self.currencyTrackerModel = CurrencyTrackerModel(provider: MoyaProvider())
    }
    
    func getCurrencies() -> Observable<[CryptoCurrency]?> {
        return currencyTrackerModel.trackCurrencies()
    }
}
