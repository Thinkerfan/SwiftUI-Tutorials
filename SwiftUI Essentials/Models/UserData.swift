/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A model object that stores app data.
 */

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}

