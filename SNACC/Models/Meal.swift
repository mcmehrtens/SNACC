// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import Foundation
import SwiftData
import HealthKitUI

@Model
class Meal {
    // required fields
    /// A list of food items in this meal.
    var food: [String]
    /// The time the meal began.
    var time: Date
    /// The type of meal being logged (_e.g._, breakfast, lunch, snack, etc.)
    var mealType: MealType

    // optional fields
    /// The size of the meal from [0,1], 0 representing small and 1 representing large.
    var portionSize: Double?
    /// The location of the meal.
    var location: String?
    /// A list of individuals eating with the user.
    var coeaters: [String]?
    /// The perceived hunger level of the user before eating from [-1,1], -1 representing not hungry at all and 1 representing very hungry.
    var hungerLevelPreMeal: Double?
    /// The perceived hunger level of the user after eating from [-1,1], -1 representing not hungry at all and 1 representing very hungry.
    var hungerLevelPostMeal: Double?
    /// The activity the user was participating in prior to eating.
    var activityPreMeal: String?
    /// The activity the user was participating in after eating.
    var activityPostMeal: String?
    /// The emotion of the user prior to eating.
    var emotionPreMeal: HKStateOfMind?
    /// The emotion of the user after eating.
    var emotionPostMeal: HKStateOfMind?
    /// Miscellaneous notes the user has regarding the meal.
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
        emotionPreMeal: HKStateOfMind? = nil,
        emotionPostMeal: HKStateOfMind? = nil,
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
        self.emotionPreMeal = emotionPreMeal
        self.emotionPostMeal = emotionPostMeal
        self.notes = notes
    }
}
