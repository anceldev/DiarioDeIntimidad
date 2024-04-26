//
//  ApiService.swift
//  DiarioDeIntimidad
//
//  Created by Ancel Dev account on 26/4/24.
//

import Foundation

let endpoint = "https://bible-api.deno.dev/api"

class ApiService {
    
    init() {
    }
    
//    func makeRequest<T: Codable>(_ apiRoute: ApiRoutes, _ book: BooksList? = nil) async throws -> T {
    func makeRequest<T: Codable>(_ url: String) async throws -> T {
//        let includesBook = book != nil ? book!.rawValue : ""
//        let absoluteRoute = apiRoute.fullRoute + includesBook
        
        do {
            let data: T = try await fetchItem(route: url)
            return data
        } catch {
            print(error.localizedDescription)
            throw error
        }
    }
    
    
    private func fetchItem<T: Codable>(route: String) async throws -> T {
        guard let url = URL(string: route) else {
            throw ApiServiceError.wrongURL
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw ApiServiceError.wrongResponse
        }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let decodedData = try decoder.decode(T.self, from: data)
            return decodedData
        } catch {
            print("Cannot decode data")
            throw ApiServiceError.wrongDecoded
        }
    }
}
extension ApiService {
    enum ApiServiceError: Error {
        case wrongURL
        case wrongResponse
        case wrongDecoded
    }
}
//    enum ApiRoutes: String {
//        case books = "/books"
//        case book = "/book/"
//        
//        var fullRoute: String {
//            endpoint + self.rawValue
//        }
//    }
//    enum Version: String {
//        case rv1960
//        case nvi
//        case dhh
//        
//        var name: String {
//            switch self {
//            case .rv1960: "Reina Valera 1960"
//            case .nvi: "Nueva Versión Internacional"
//            case .dhh: "Dios Habla Hoy"
//            }
//        }
//        var route: String {
//            "/read/" + self.rawValue
//        }
//    }
//}
