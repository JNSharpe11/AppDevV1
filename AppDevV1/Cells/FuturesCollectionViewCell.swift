//
//  FuturesCollectionViewCell.swift
//  AppDevV1
//
//  Created by John Sharpe on 4/23/23.


//https://github.com/JNSharpe11/AppDevelopment.git

import UIKit

class FuturesCollectionViewCell: UICollectionViewCell {
    
    
    static let reuseIdentifier = "FuturesCollectionViewCell"
    
    //let stockDataSource: [String] = ["Dow", "S&P, NASDAQ"]
    
    
    let stackView: UIStackView = {
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.distribution = .fill
        stackView.alignment = .fill
        
        return stackView
        
    }()
    
    let labelText: UILabel = {
        
        let labelText = UILabel()
        //labelText.frame = CGRectMake(self.view.bounds.size.width/2,50,self.view.bounds.size.width,self.view.bounds.size.height)
        labelText.textAlignment = .center
        labelText.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        labelText.backgroundColor = UIColor.white
        
        return labelText
        
    }()
    
    let cellView: UICollectionViewCell = {
        
        let cellView = UICollectionViewCell()
        cellView.layer.cornerRadius = 5.0
        
        return cellView
    }()
    
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        stackView.addArrangedSubview(cellView)
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor)
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configureCell(_ app: App) {
        
        labelText.text = app.futuresLabelText
        cellView.backgroundColor = .lightGray
        
    }
    
}
