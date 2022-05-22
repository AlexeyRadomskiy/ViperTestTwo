//
//  CourseListRouter.swift
//  ViperTestTwo
//
//  Created by Alexey on 22.05.2022.
//

import Foundation

protocol CourseListRouterInputProtocol {
    init(viewController: CourseListViewController)
    func openCourseDetailsViewController(with course: Course)
}

class CourseListRouter: CourseListRouterInputProtocol {
    
    unowned let viewController: CourseListViewController
    
    required init(viewController: CourseListViewController) {
        self.viewController = viewController
    }
    
    func openCourseDetailsViewController(with course: Course) {
        viewController.performSegue(withIdentifier: "ShowDetails", sender: course)
    }
}
