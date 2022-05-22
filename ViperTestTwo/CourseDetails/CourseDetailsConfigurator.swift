//
//  CourseDetailsConfigurator.swift
//  ViperTestTwo
//
//  Created by Alexey on 22.05.2022.
//

protocol CourseDetailsConfiguratorInputProtocol {
    func configure(with view: CourseDetailsViewController, and course: Course)
}

class CourseDetailsConfigurator: CourseDetailsConfiguratorInputProtocol {
    
    func configure(with view: CourseDetailsViewController, and course: Course) {
        let presenter = CourseDetailsPresenter(view: view)
        let interactor = CourseDetailsInteractor(presenter: presenter, course: course )
        
        view.presenter = presenter
        presenter.interactor = interactor
    }
}
