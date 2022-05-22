//
//  CourseCellViewModel.swift
//  ViperTestTwo
//
//  Created by Alexey on 22.05.2022.
//

import Foundation

protocol CellIdentifier {
    var cellIdentifier: String { get }
    var cellHeight: Double { get }
}

protocol SectionRowRepresentable {
    var rows: [CellIdentifier] { get set }
}

class CourseCellViewModel: CellIdentifier {
    
    let courseName: String
    let imageURL: URL
    
    var cellIdentifier: String {
        "CourseCell"
    }
    
    var cellHeight: Double {
        100
    }
    
    init(course: Course) {
        courseName = course.name
        imageURL = course.imageUrl
    }
}

class CourseSectionViewModel: SectionRowRepresentable {
    
    var rows: [CellIdentifier] = []
    
}
