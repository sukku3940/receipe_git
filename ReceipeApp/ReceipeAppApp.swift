//
//  ReceipeAppApp.swift
//  ReceipeApp
//
//  Created by apple on 02/04/22.
//

import SwiftUI

@main
struct ReceipeAppApp: App {
    var body: some Scene {
        WindowGroup {
            ReceipeFeaturedView()
                .environmentObject(receipemodel())
        }
    }
}
