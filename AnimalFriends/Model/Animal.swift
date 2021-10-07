/*
Abstract:
A representation of a single animal.
*/

import Foundation
import SwiftUI

struct Animal: Hashable, Codable, Identifiable {
    var id: String
    var isActive: Bool
    var name: String
    var gender: String
    var birthYear: Int
    var hairColor: String
    var size: String
    var house: String
    var location: String
    var registered: String
    var about: String
    var tags: [String]

    private var pictureName: String
    var picture: Image {
        Image(pictureName)
    }
}
