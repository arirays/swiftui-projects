//
//  NetworkManager.swift
//  Appetizers
//
//  Created by AS on 10/8/23.
//

import Foundation

/*
func getAppetizers() async throws -> [Appetizer] {
    guard let url = URL(string: appetizerURL) else {
        throw APError.invalidURL
    }
    
    let (data, _) = try await URLSession.shared.data(from url)
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(AppetizerResponse.self, from: data).request
    } catch {
        throwAPError.invalidData
    }
}


URL = https://api.edamam.com/api/recipes/v2?type=public&app_id=d1ed5062&app_key=e144b997943e3f6969fc0ea89fa1ede6&diet=low-carb&mealType=Teatime&dishType=Desserts&random=true&field=uri&field=label&field=image&field=ingredientLines

// 2053 desserts
URL = https://api.edamam.com/api/recipes/v2?type=public&app_id=d1ed5062&app_key=e144b997943e3f6969fc0ea89fa1ede6&diet=low-carb&mealType=Teatime&imageSize=REGULAR&field=uri&field=label&field=image&field=ingredientLines

// fetch
getRequest()
parseJSON()
*/
