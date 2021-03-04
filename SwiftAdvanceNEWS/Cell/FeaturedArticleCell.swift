//
//  FeaturedArticleCell.swift
//  SwiftAdvanceNEWS
//
//  Created by Akdag on 2.03.2021.
//

import UIKit

class FeaturedArticleCell: UICollectionViewCell, SelfConfiguringCell {
    static var reuseIdentifier: String = "ForYouArticles"
    let imageCache = NSCache<AnyObject, AnyObject>()
    
    let backgroundImageView: UIImageView = {
       let imageView = UIImageView()
        //imageView.backgroundColor = .red
        imageView.alpha = 1
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let articleName: UILabel = {
       let label = UILabel()
        label.text = "This is some sort of a headline"
        //label.backgroundColor = .red
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.numberOfLines = 4
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let articlePublishedDate: UILabel = {
        let label = UILabel()
        label.text = "2 hours ago"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 9)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true
        //setupViews()
        layoutViews()
    }
    
    override func prepareForReuse() {
         self.backgroundImageView.image = nil
         self.backgroundImageView.cancelImageLoad()
     }
func layoutViews() {


    let stackView = UIStackView(arrangedSubviews: [backgroundImageView, articleName, articlePublishedDate])
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = .vertical
    stackView.distribution = .equalSpacing
    addSubview(stackView)
    
    NSLayoutConstraint.activate([
        stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
        stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
        stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
        stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
    ])

    stackView.setCustomSpacing(6, after: backgroundImageView)
    stackView.setCustomSpacing(6, after: articleName)
}
//

required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}

func configure(with article: Article) {
    articleName.text = article.title
    backgroundImageView.loadImage(at: article.urlToImage ?? "")
    articlePublishedDate.text = Date().getElapsedInterval(date: article.publishedAt ?? "")
}

}
