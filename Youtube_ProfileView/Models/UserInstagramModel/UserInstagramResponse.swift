//
//  UserInstagramResponse.swift
//  Youtube_ProfileView
//
//  Created by Sopheamen VAN on 18/7/24.
//

import Foundation

struct UserInstagramResponse: Hashable, Identifiable {
     let id: Int
     let username: String
     let profileImage: String
     let fullname: String
     let pronouns: String?
     let bio: String?
     let link: String?
     let gender: String?
     let totalPosts: Int
     let totalFollowers: Int
     let totalFollowing: Int
}
