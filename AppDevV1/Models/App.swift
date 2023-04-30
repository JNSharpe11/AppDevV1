//
//  App.swift
//  AppDevV1
//
//  Created by John Sharpe on 4/23/23.
//

import UIKit

struct App: Hashable {
    
    //let futureHeadline: String?
    
    //let title: String
   // let subtitle: String
    let price: Double?
    
    let futuresLabelText: String
    
    
    
    /*
    
    var formattedText: String {
        
        if let futureLabelText = futuresLabelText {
            
            guard let textForLabel = FuturesCollectionViewCell.contains(stockNameLabel) else {
                return String(futureLabelText)
            }
            
        }
        
    }
     
     */
    
    var formattedPrice: String {
        
        if let price = price {
            guard let localCurrencyCode = Locale.autoupdatingCurrent.currency?.identifier else {
                
                return String(price)
                
            }
            
            return price.formatted(.currency(code: localCurrencyCode))
        } else {
            return "GET"
        }
        
    }
    
    let color = UIColor.random

    
}
