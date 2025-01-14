//
//  HomeService.swift
//  ChefDelivery
//
//  Created by Ewelyn Silva on 24/03/24.
//

import Foundation

enum RequestError: Error {
    case invalidURL
    case errorRequest(error:String)
}

struct HomeService {
    func fetchData() async throws -> Result<[StoreType], RequestError>{
        guard let url = URL(string: "https://private-665e5-matheusperez.apiary-mock.com/home") else {
            return .failure(.invalidURL)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let storesObjects = try JSONDecoder().decode([StoreType].self, from: data)
        
        return .success(storesObjects)
        
//        URLSession.shared.dataTask(with: url) { data, _, error in
//            if let error = error {
//                print(error.localizedDescription)
//            }
//            else if let data = data {
//                let storesObjects = try? JSONDecoder().decode([StoreType].self, from: data)
//                print(storesObjects)
//            }
//        }.resume()
    }
}
