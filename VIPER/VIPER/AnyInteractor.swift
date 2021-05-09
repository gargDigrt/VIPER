//
//  Interactor.swift
//  VIPER
//
//  Created by Vivek on 09/05/21.
//

import Foundation


//Object
//Protocol
//Ref to presenter

// API Call

protocol AnyInteractor {
    var presenter: AnyPresenter? {get set}
    
    func getUsers()
}


class UserInteractor: AnyInteractor {
    var presenter: AnyPresenter?
    
    func getUsers() {
        
        
    }
    
    
}
