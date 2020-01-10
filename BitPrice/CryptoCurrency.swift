
import Mapper

public struct CryptoCurrency : Mappable {
    public let id : String?
    public let name : String?
	public let symbol : String?
	public let priceUsd : String?
	public let priceBtc : String?

    public init(map: Mapper) throws {
        try id = map.from("id")
        try name = map.from("name")
        try symbol = map.from("symbol")
        try priceUsd = map.from("price_usd")
        try priceBtc = map.from("price_btc")
    }
}
