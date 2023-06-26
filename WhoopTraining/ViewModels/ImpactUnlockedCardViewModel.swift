//
//  ImpactUnlockedCardViewModel.swift
//  WhoopTraining
//
//  Created by Federico De Luca on 26/6/23.
//

import Foundation
import SwiftUI

class ImpactUnlockedCardViewModel: CardViewModel {
    var cardBackgroundColor: Color = .customDarkGray
    var cardBorderColor: Color = .customSkyblue

    var titleText: String = String(localized: "impact_unlocked_card_title")
    var titleTextColor: Color = .white
    var titleTextFont: Font = .h1
    var titleTextCase: Text.Case? = nil

    var descriptionText: String = String(format: NSLocalizedString("impact_unlocked_card_description", comment: ""),
                                         "[Behavior name]")
    var descriptionTextColor: Color = .customLightGray
    var descriptionTextFont: Font = .body
    var descriptionTextCase: Text.Case? = nil

    var buttonIcon: Image? = Image(systemName: "arrow.right")
    var buttonText: String = String(localized: "impact_unlocked_card_button")
    var buttonTextColor: Color = .customSkyblue
    var buttonTextFont: Font = .button
    var buttonTextCase: Text.Case? = .uppercase
    var buttonAction: () -> Void = { print("Button pressed") }

    var representativeImage: Image? = Image(systemName: "target")
    var representativeImageColor: Color = .customLightGray

    var counterBackgroundColor: Color = .customGray
    var counterIcon: Image? = Image(systemName: "checkmark")
    var counterTextColor: Color = .white
    var counterTextFont: Font = .body
    var counterValue: Int = 2
}
