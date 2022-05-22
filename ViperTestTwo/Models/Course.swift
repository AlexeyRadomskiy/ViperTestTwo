//
//  Course.swift
//  ViperTestTwo
//
//  Created by Alexey on 22.05.2022.
//

import Foundation

struct Course: Decodable {
    let name: String
    let imageUrl: URL
    let numberOfLessons: Int
    let numberOfTests: Int
}
