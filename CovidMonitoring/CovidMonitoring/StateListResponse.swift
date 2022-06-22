//
//  StateListResponse.swift
//  CovidMonitoring
//
//  Created by Константин Малков on 20.06.2022.
//

import Foundation

struct StateListResponse: Codable {
    let data: [State]
}

struct State: Codable {
    let name: String
    let state_code: String
}

struct CovidDataResponse: Codable {
    let data: [CovidDayData]
    
}

struct CovidDayData: Codable{
    let cases: CovidCases?
    let date: String
}

struct CovidCases: Codable {
    let total: TotalCases
}

struct TotalCases: Codable {
    let value: Int?
}

struct DayData{
    let date: Date
    let count: Int
}
