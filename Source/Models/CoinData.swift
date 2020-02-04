//
//  CoinData.swift
//  CoinMarket
//
//  Created by Александр on 03.02.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import Foundation

public typealias CoinListData = [CoinData]

public struct CoinData: Codable {
    public let id, name, symbol, rank: String
    public let priceUsd, priceBtc, the24HVolumeUsd, marketCapUsd, availableSupply, totalSupply: String
    public let maxSupply: String?
    public let percentChange1H, percentChange24H, percentChange7D, lastUpdated: String

    enum CodingKeys: String, CodingKey {
        case id, name, symbol, rank
        case priceUsd = "price_usd"
        case priceBtc = "price_btc"
        case the24HVolumeUsd = "24h_volume_usd"
        case marketCapUsd = "market_cap_usd"
        case availableSupply = "available_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case percentChange1H = "percent_change_1h"
        case percentChange24H = "percent_change_24h"
        case percentChange7D = "percent_change_7d"
        case lastUpdated = "last_updated"
    }
}
