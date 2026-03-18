// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house.fill") {
                HomeView()
            }

            Tab("Log", systemImage: "list.bullet") {
                LogView()
            }

            Tab("Reflect", systemImage: "chart.bar.xaxis") {
                ReflectView()
            }
        }
    }
}

#Preview {
    ContentView()
}
