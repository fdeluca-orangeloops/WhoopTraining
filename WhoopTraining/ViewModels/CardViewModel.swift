//
//  CardViewModel.swift
//  WhoopTraining
//
//  Created by Federico De Luca on 23/6/23.
//

import SwiftUI

protocol CardViewModel {
    var cardBackgroundColor: Color { get }
    var cardBorderColor: Color { get }

    var titleText: String { get }
    var titleTextColor: Color { get }
    var titleTextFont: Font { get }
    var titleTextCase: Text.Case? { get }

    var descriptionText: String { get }
    var descriptionTextColor: Color { get }
    var descriptionTextFont: Font { get }
    var descriptionTextCase: Text.Case? { get }

    var buttonIcon: Image? { get }
    var buttonText: String { get }
    var buttonTextColor: Color { get }
    var buttonTextFont: Font { get }
    var buttonTextCase: Text.Case? { get }
    var buttonAction: () -> Void { get }

    var representativeImage: Image? { get }
    var representativeImageColor: Color { get }

    var counterBackgroundColor: Color { get }
    var counterIcon: Image? { get }
    var counterTextColor: Color { get }
    var counterTextFont: Font { get }
    var counterValue: Int { get }
}
