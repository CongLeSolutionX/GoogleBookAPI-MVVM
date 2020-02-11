//
//  URLExtension.swift
//  GoogleBook
//
//  Created by Consultant on 2/9/20.
//  Copyright © 2020 Enhance IT. All rights reserved.
//

import UIKit

typealias ImageHandler = (UIImage?) -> Void


extension URL {
    func downloadImage(completion: @escaping ImageHandler){
        URLSession.shared.dataTask(with: self) { (dat, _, _) in
            if let data = dat {
                let image = UIImage(data: data)
                DispatchQueue.main.async {
                    completion(image)
                }
            }
        }.resume()
        
    }
}
