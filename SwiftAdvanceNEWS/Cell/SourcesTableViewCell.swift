//
//  SourcesTableViewCell.swift
//  SwiftAdvanceNEWS
//
//  Created by Akdag on 2.03.2021.
//

import UIKit

class SourcesTableViewCell: UITableViewCell {

    let sourcesLabel : UILabel = {
       let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello"
        return label
    }()
    
    let countryLabel : UILabel = {
       let label = UILabel()
        label.textColor = .white
        label.font = label.font.withSize(12)
        label.backgroundColor = GNUIConfiguration.mainForegroundColor
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "US"
        return label
    }()
    
    let categoryLabel : UILabel = {
       let label = UILabel()
        label.textColor = .white
        label.backgroundColor = GNUIConfiguration.secondaryForegroundColor
        label.font = label.font.withSize(12)
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Science"
        return label
    }()
    
    let selectedDot: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.backgroundColor = GNUIConfiguration.selectedColor
        label.font = label.font.withSize(12)
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.textAlignment = .center
        label.isHidden = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "selected"
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .white
        setupViews()
        layoutViews()
    }


    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        addSubview(sourcesLabel)
        addSubview(countryLabel)
        addSubview(categoryLabel)
        addSubview(selectedDot)
    }
    func layoutViews() {
        sourcesLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4).isActive = true
        sourcesLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        sourcesLabel.widthAnchor.constraint(equalToConstant: 250).isActive = true
        sourcesLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        countryLabel.topAnchor.constraint(equalTo: sourcesLabel.bottomAnchor, constant: 0).isActive = true
        countryLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        countryLabel.widthAnchor.constraint(equalToConstant: 40).isActive = true
        countryLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        categoryLabel.topAnchor.constraint(equalTo: sourcesLabel.bottomAnchor, constant: 0).isActive = true
        categoryLabel.leftAnchor.constraint(equalTo: countryLabel.rightAnchor, constant: 8).isActive = true
        categoryLabel.widthAnchor.constraint(equalToConstant: 90).isActive = true
        categoryLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        selectedDot.topAnchor.constraint(equalTo: sourcesLabel.bottomAnchor, constant: 0).isActive = true
        selectedDot.leftAnchor.constraint(equalTo: categoryLabel.rightAnchor, constant: 12).isActive = true
        selectedDot.heightAnchor.constraint(equalToConstant: 20).isActive = true
        selectedDot.widthAnchor.constraint(equalToConstant: 60).isActive = true
    }
}

