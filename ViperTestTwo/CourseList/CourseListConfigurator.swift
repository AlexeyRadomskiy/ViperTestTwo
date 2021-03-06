//
//  CourseListConfigurator.swift
//  ViperTestTwo
//
//  Created by Alexey on 22.05.2022.
//
protocol CourseListConfiguratorInputProtocol {
    func configure(with viewController: CourseListViewController)
}

class CourseListConfigurator: CourseListConfiguratorInputProtocol {
    
    func configure(with viewController: CourseListViewController) {
        let presenter = CourseListPresenter(view: viewController)
        let interactor = CourseListInteractor(presenter: presenter)
        let router = CourseListRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
