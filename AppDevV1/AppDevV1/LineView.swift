//
//  LineView.swift
//  AppDevV1
//
//  Created by John Sharpe on 4/26/23.
//

import UIKit

class LineView: UICollectionReusableView {
    
    static let reuseIdentifier = "LineView"
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)

        backgroundColor = .lightGray
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    func setColor(_ color: UIColor) {
        
        backgroundColor = color
        
    }
        
}
