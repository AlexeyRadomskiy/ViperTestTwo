//
//  CourseListInteractor.swift
//  ViperTestTwo
//
//  Created by Alexey on 22.05.2022.
//

import Foundation

protocol CourseListInteractorInputProtocol: AnyObject {
    init(presenter: CourseListInteractorOutputProtocol)
    func fetchCourses()
    func getCourse(at indexPath: IndexPath)
}

protocol CourseListInteractorOutputProtocol: AnyObject {
    func coursesDidReceive(_ courses: [Course])
    func courseDidReceive(_ course: Course)
}

class CourseListInteractor: CourseListInteractorInputProtocol {
    
    unowned let presenter: CourseListInteractorOutputProtocol
    
    required init(presenter: CourseListInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func fetchCourses() {
        NetworkManager.shared.fetchData { courses in
            self.presenter.coursesDidReceive(courses)
            DataManager.shared.setCourses(courses)
        }
    }
    
    func getCourse(at indexPath: IndexPath) {
        let course = DataManager.shared.getCourses(at: indexPath)
        presenter.courseDidReceive(course)
    }
}
