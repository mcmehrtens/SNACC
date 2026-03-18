// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import UIKit

enum NavigationBarAppearance {
    
    /// Configure the font style of the title in the navigation bar.
    ///
    /// - seealso:
    /// [TN3106](https://developer.apple.com/documentation/technotes/tn3106-customizing-uinavigationbar-appearance):
    /// Customizing the appearance of `UINavigationBar`
    static func configure() {
        let largeTitleDescriptor = UIFontDescriptor
            .preferredFontDescriptor(withTextStyle: .largeTitle)
            .withDesign(.rounded)!
            .withSymbolicTraits(.traitBold)!
        let inlineTitleDescriptor = UIFontDescriptor
            .preferredFontDescriptor(withTextStyle: .headline)
            .withDesign(.rounded)!
            .withSymbolicTraits(.traitBold)!

        let appearance = UINavigationBarAppearance()
        appearance.largeTitleTextAttributes = [.font: UIFont(descriptor: largeTitleDescriptor, size: 0)]
        appearance.titleTextAttributes = [.font: UIFont(descriptor: inlineTitleDescriptor, size: 0)]

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}
