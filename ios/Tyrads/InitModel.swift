//
//  InitModel.swift
//  TyradsSdk
//
//  Created by ibnShamas on 8/13/24.
//

import Foundation

struct AcmoInitModel: Codable {
    let data: Data
}

struct Data: Codable {
    let newRegisteredUser: Bool
    let user: User
    let publisherApp: PublisherApp
    
    enum CodingKeys: String, CodingKey {
        case newRegisteredUser = "newRegisteredUser"
        case user
        case publisherApp
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        newRegisteredUser = try container.decodeIfPresent(Bool.self, forKey: .newRegisteredUser) ?? false
        user = try container.decode(User.self, forKey: .user)
        publisherApp = try container.decode(PublisherApp.self, forKey: .publisherApp)
    }
}

struct User: Codable {
    let publisherUserId: String
}

struct PublisherApp: Codable {
    let headerColor: String
    let mainColor: String
  let premiumColor: String
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        headerColor = try container.decodeIfPresent(String.self, forKey: .headerColor) ?? ""
        mainColor = try container.decodeIfPresent(String.self, forKey: .mainColor) ?? ""
      premiumColor = try container.decodeIfPresent(String.self, forKey: .premiumColor) ?? ""
    }
}
