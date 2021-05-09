//
//  Router.swift
//  VIPER
//
//  Created by Vivek on 09/05/21.
//

import UIKit


//Object
//Entry point

typealias EntryPoint = AnyView & UIViewController
protocol AnyRouter {
    var entry: EntryPoint? {get}
    static func start() -> AnyRouter
}

class UserRouter: AnyRouter {
    
    var entry: EntryPoint?
    
    static func start() -> AnyRouter {
        let router = UserRouter()
        
        //Assign VIP
        var view: AnyView = UserViewController()
        var presenter: AnyPresenter = UserPresenter()
        var interactor: AnyInteractor = UserInteractor()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view
        
        router.entry = view as? EntryPoint
        return router
    }
    
    
}
