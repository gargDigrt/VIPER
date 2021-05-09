//
//  APIService.swift
//  VIPER
//
//  Created by Vivek on 09/05/21.
//

import Foundation


class APIService {
    
    func load<T>(resource: Resource<T>, completion: @escaping (Result<T, Error>) -> Void) {
        
        URLSession.shared.dataTask(with: resource.url) { (data, response, error) in
            
            guard let data = data, error == nil else {
                completion(.failure(error!))
                return
            }
            do {
                let result = try JSONDecoder().decode(T.self, from: data)
                completion(.success(result))
            } catch let err {
                completion(.failure(err))
            }
        }.resume()
    }
}
