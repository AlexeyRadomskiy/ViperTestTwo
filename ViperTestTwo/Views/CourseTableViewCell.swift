//
//  CourseTableViewCell.swift
//  ViperTestTwo
//
//  Created by Alexey on 22.05.2022.
//

import UIKit

class CourseTableViewCell: UITableViewCell {
    
    func configure(with course: Course) {
        var content = defaultContentConfiguration()
        content.text = course.name
        guard let imageData = ImageManager.shared.fetchImageData(from: course.imageUrl) else { return }
        content.image = UIImage(data: imageData)
        contentConfiguration = content
    }
}
