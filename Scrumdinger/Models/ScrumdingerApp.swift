//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Massa Antonio on 15/07/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
	@ObservedObject private var data = ScrumData()

    var body: some Scene {
        WindowGroup {
			NavigationView {
				ScrumsView(scrums: $data.scrums) {
					data.save()
				}
			}
			.onAppear {
				data.load()
			}
        }
    }
}
