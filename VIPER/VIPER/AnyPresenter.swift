//
//  Presenter.swift
//  VIPER
//
//  Created by Vivek on 09/05/21.
//

import Foundation


//Object
//Protocol
//Ref to Interactor, Router, View


protocol AnyPresenter {
    var router: AnyRouter? {get set}
    var interactor: AnyInteractor? {get set}
    var view: AnyView? {get set}
    
    func interactorDidFetchUsers(with result: Result<[User], Error>)
}

class UserPresenter: AnyPresenter {
    var router: AnyRouter?
    
    var interactor: AnyInteractor?
    
    var view: AnyView?
    

    
    func interactorDidFetchUsers(with result: Result<[User], Error>) {
        
    }
    
}
