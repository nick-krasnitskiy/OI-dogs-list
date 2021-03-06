//
//  Animal.swift
//  DogsList
//
//  Created by Nick Krasnitskiy on 19.07.2021.
//

import UIKit

struct DogBreed: Codable {
    let message: [String: [String]]
    let status: String
}

struct CatBreed: Codable {
    let id, name: String
    let image: Image?
}

struct Image: Codable {
    let url: String?
    let id: String?
}

struct CatImages: Codable {
    let url: String
}

struct DogImage: Codable {
    let message: String
    let status: String
}

struct DogImages: Codable {
    let message: [String]
    let status: String
}

struct Animal: Codable, Hashable {
    let breed: String
    let image: String
}

struct AnimalImages: Codable, Hashable {
    let breed: String
    let images: [String]
}
