//
//  LatestNewsCell.swift
//  DogsList
//
//  Created by Nick Krasnitskiy on 16.08.2021.
//

import UIKit
import SDWebImage

class LatestNewsCell: UICollectionViewCell {
    
    static let reuseIdentifier = "LatestNewsCell"

    @IBOutlet private weak var image: UIImageView!
    @IBOutlet private weak var title: UILabel!
    @IBOutlet private weak var source: UILabel!
    @IBOutlet private weak var date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(news: Article) {
        guard let urlString = news.urlToImage else { return }
        guard let url = URL(string: urlString) else { return }
        
        image.sd_setImage(with: url)
        
        source.text = news.source.name
        date.text = date.dateConvert(dateString: news.publishedAt)
        title.text = news.title
    }
}