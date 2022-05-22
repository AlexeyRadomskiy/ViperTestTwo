//
//  DataManager.swift
//  ViperTestTwo
//
//  Created by Alexey on 22.05.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private let userDefaults = UserDefaults()
    private var courses: [Course] = []
    
    private init() {}
    
    func setFavoriteStatus(for courseName: String, with status: Bool) {
        userDefaults.set(status, forKey: courseName)
    }
    
    func getFavoriteStatus(for courseName: String) -> Bool {
        userDefaults.bool(forKey: courseName)
    }
    
    func setCourses(_ courses: [Course]) {
        self.courses = courses
    }
    
    func getCourses(at indexPath: IndexPath) -> Course {
        courses[indexPath.row]
    }
}
