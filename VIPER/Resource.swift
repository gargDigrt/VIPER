//
//  Resource.swift
//  VIPER
//
//  Created by Vivek on 09/05/21.
//

import Foundation


struct Resource<T: Codable> {
    let url: URL
    
    init?(url urlString: String) {
        guard let url = URL(string: urlString) else {return nil}
        self.url = url
    }
}
