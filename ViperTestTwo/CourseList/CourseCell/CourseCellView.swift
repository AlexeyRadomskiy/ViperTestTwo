//
//  CourseCellView.swift
//  ViperTestTwo
//
//  Created by Alexey on 22.05.2022.
//

import UIKit

protocol CellModelRepresentable {
    var viewModel: CellIdentifier? { get set }
}

class CourseCellView: UITableViewCell, CellModelRepresentable {
    
    var viewModel: CellIdentifier? {
        didSet {
            updateView()
        }
    }
    
    private func updateView() {
        guard let viewModel = viewModel as? CourseCellViewModel else { return }
        var content = defaultContentConfiguration()
        content.text = viewModel.courseName
        if let imageData = ImageManager.shared.fetchImageData(from: viewModel.imageURL) {
            content.image = UIImage(data: imageData)
        }
        contentConfiguration = content
    }
}
