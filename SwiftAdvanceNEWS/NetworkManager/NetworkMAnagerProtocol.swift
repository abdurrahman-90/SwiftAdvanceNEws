//
//  NetworkMAnagerProtocol.swift
//  SwiftAdvanceNEWS
//
//  Created by Akdag on 2.03.2021.
//

import UIKit
protocol NewsNetworkManagerProtocol {
    func fetchNewsSources(completion: @escaping ([NewsSource]) -> ())
    func fetchArticles(sources: [NewsSource: Bool], completion: @escaping ([ForYouSection]) -> ())
    func fetchTopicalArticles(topics: [String], completion: @escaping (ForYouSection) -> ())
    func fetchForYouArticles(sources: [NewsSource: Bool], domains: [String]?, completion: @escaping ([ForYouSection]) -> ())
    func fetchDomainArticles(domains: [String], page: Int, completion: @escaping (ForYouSection) -> ())
}
