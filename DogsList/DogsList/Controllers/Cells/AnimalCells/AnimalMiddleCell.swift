//
//  AnimalMiddleCell.swift
//  DogsList
//
//  Created by Nick Krasnitskiy on 18.07.2021.
//

import UIKit

class AnimalMiddleCell: UICollectionViewCell {
    
    static let reuseIdentifier = "AnimalMiddleCell"
    
    @IBOutlet private weak var animalImage: UIImageView!
    @IBOutlet private weak var animalBreed: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(animals: String) {
        DispatchQueue.main.async {
            self.animalBreed.text = animals
//            if let url = URL(string: urlImage) {
//                if let data = try? Data(contentsOf: url) {
//                    if let image = UIImage(data: data) {
//                        self.animalImage.image = image
//                    }
//                }
//            }
        }
    }
}