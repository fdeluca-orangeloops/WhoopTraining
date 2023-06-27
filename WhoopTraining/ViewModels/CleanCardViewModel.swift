//
//  CleanCardViewModel.swift
//  WhoopTraining
//
//  Created by Federico De Luca on 26/6/23.
//

import SwiftUI

class CleanCardViewModel: CardViewModel {
    var cardBackgroundColor: Color = .black
    var cardBorderColor: Color = .yellow

    var titleText: String = "Clean card"
    var titleTextColor: Color = .yellow
    var titleTextFont: Font = .cardH1
    var titleTextCase: Text.Case? = .uppercase

    var descriptionText: String? = "This card is so clean."
    var descriptionTextColor: Color? = .white
    var descriptionTextFont: Font? = .cardBody
    var descriptionTextCase: Text.Case? = nil

    var buttonIcon: Image? = nil
    var buttonText: String = "CTA"
    var buttonTextColor: Color = .brown
    var buttonTextFont: Font = .cardBody
    var buttonTextCase: Text.Case? = .uppercase
    var buttonAction: () -> Void = { print("CTA pressed") }

    var representativeImage: Image? = nil
    var representativeImageColor: Color? = nil

    var counterBackgroundColor: Color? = nil
    var counterIcon: Image? = nil
    var counterTextColor: Color? = nil
    var counterTextFont: Font? = nil
    var counterValue: Int? = nil
}
