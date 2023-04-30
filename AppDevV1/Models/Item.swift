//
//  Item.swift
//  AppDevV1
//
//  Created by John Sharpe on 4/23/23.
//

import Foundation



enum Item: Hashable {
    
    case app(App)
    case category(StoreCategory)
    
    var app: App? {
        
        if case .app(let app) = self {
            return app
        } else {
            return nil
        }
    }
    
    var category: StoreCategory? {
        if case .category(let category) = self {
            
            return category
        } else {
            return nil
        }
    }
    
    static let futuresApps: [Item] = [
        
        .app(App(price: 3.99, futuresLabelText: "DOW")),
        .app(App(price: 3.99, futuresLabelText: "S&P")),
        .app(App(price: 3.99, futuresLabelText: "NASDAQ")),
    ]
    
    
    static let ShortsAndLongsApps: [Item] = [
        
        .app(App(price: 3.99, futuresLabelText: "Short-A")),
        .app(App(price: 3.99, futuresLabelText: "Long-A")),
        .app(App(price: 3.99, futuresLabelText: "Short-B")),
        .app(App(price: 3.99, futuresLabelText: "Long-B")),
        
    ]
    
    static let BitCoinApps: [Item] = [
        
        .app(App(price: 3.99, futuresLabelText: "BitCoin-A")),
        .app(App(price: 3.99, futuresLabelText: "BitCoin-B")),
        .app(App(price: 3.99, futuresLabelText: "BitCoin-C")),
        .app(App(price: 3.99, futuresLabelText: "BitCoin-D")),
        
    ]
    
}
