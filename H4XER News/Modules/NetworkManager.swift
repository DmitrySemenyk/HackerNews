//
//  NetworkManager.swift
//  H4XER News
//
//  Created by Dmitry Semenuk on 12/01/2020.
//  Copyright © 2020 Dmitry Semenuk. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [ProtocolData]()
    
    func fetchData (){
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?query=foo&tags=story"){
            let sesion = URLSession(configuration: .default)
            let task = sesion.dataTask(with: url) { (data, responce, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do{
                            let results = try decoder.decode(Result.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        }catch {
                            print(error)
                        }
                         
                    }
                }
            }
            task.resume()
        }
    }
}
