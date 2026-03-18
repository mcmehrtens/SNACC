// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import Foundation
import SwiftData

@Model
class Meal {
    // required fields
    var food: [String]
    var time: Date
    var mealType: MealType

    // optional fields
    var portionSize: Double?
    // - TODO: For location, coeaters, and activities - add seperate lookup
    var location: String?
    var coeaters: [String]?
    var hungerLevelPreMeal: Double?
    var hungerLevelPostMeal: Double?
    var activityPreMeal: String?
    var activityPostMeal: String?
    // - TODO: Integrate with `HKStateOfMind`
    var emotionalStatePreMeal: String?
    var emotionalStatePostMeal: String?
    var notes: String?

    init(
        food: [String],
        time: Date,
        mealType: MealType,
        portionSize: Double? = nil,
        location: String? = nil,
        coeaters: [String]? = nil,
        hungerLevelPreMeal: Double? = nil,
        hungerLevelPostMeal: Double? = nil,
        activityPreMeal: String? = nil,
        activityPostMeal: String? = nil,
        emotionalStatePreMeal: String? = nil,
        emotionalStatePostMeal: String? = nil,
        notes: String? = nil
    ) {
        self.food = food
        self.time = time
        self.mealType = mealType
        self.portionSize = portionSize
        self.location = location
        self.coeaters = coeaters
        self.hungerLevelPreMeal = hungerLevelPreMeal
        self.hungerLevelPostMeal = hungerLevelPostMeal
        self.activityPreMeal = activityPreMeal
        self.activityPostMeal = activityPostMeal
        self.emotionalStatePreMeal = emotionalStatePreMeal
        self.emotionalStatePostMeal = emotionalStatePostMeal
        self.notes = notes
    }
}
