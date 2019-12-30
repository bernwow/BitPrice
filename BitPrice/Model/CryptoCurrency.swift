import Mapper
struct CryptoCurrency : Mappable {
	let name : String?
	let symbol : String?
	let priceUsd : String?
	let priceBtc : String?

    init(map: Mapper) throws {
        try name = map.from("name")
        try symbol = map.from("symbol")
        try priceUsd = map.from("price_usd")
        try priceBtc = map.from("price_btc")
    }
}
