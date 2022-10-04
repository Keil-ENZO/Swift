//
//  Data.swift
//  wallet
//
//  Created by Enzo Keil on 03/10/2022.
//

import Foundation

struct CryptoCurrency {
    let name: String
    let symbol: String
    let iconName: String
    let value: Float
    let evolution: Float
}


let cryptoList = [
    CryptoCurrency(name: "Bitcoin", symbol: "BTC", iconName: "bitcoin-btc-logo", value: 34065.36, evolution: +2.56),
    CryptoCurrency(name: "Etherum", symbol: "ETH", iconName: "etherum-eth-logo", value: 2167.34, evolution: +2.56),
    CryptoCurrency(name: "Tether", symbol: "USDT", iconName: "tether-usdt-logo", value: 0.96, evolution: -0.56),
    CryptoCurrency(name: "Binance USD", symbol: "BUSD", iconName: "binance-usd-busd-logo", value: 289.23, evolution: +2.56),
    CryptoCurrency(name: "Cardano", symbol: "ADA", iconName: "cardano-ada-logo", value: 0.49, evolution: -6.56),
    CryptoCurrency(name: "Solana", symbol: "SOL", iconName: "solana-sol-logo", value: 52.78, evolution: +2.56),
    CryptoCurrency(name: "Terra", symbol: "LUNA", iconName: "terra-luna-luna-logo", value: 0.05, evolution: -15.56),
]
