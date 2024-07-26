//
//  StoryResponse.swift
//  Youtube_ProfileView
//
//  Created by Sopheamen VAN on 18/7/24.
//
import Foundation

struct StoryResponse: Hashable, Identifiable {
    let id: Int
    let user: UserInstagramResponse
}
