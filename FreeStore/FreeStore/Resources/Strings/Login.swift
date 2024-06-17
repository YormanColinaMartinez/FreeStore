//
//  Login.swift
//  FreeStore
//
//  Created by Apple on 17/6/24.
//

import Foundation

enum LoginStrings: String {
    case emailTitleLabel = "Email"
    case passwordTitleLabel = "Password"
    case nameTitleLabel = "Name"
    case lastNameTitleLabel = "LastName"
    
    var localized: String { return rawValue }
}
