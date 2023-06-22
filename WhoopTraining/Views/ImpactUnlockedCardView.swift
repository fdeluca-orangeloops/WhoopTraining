//
//  ImpactUnlockedCardView.swift
//  WhoopTraining
//
//  Created by Federico De Luca on 22/6/23.
//

import SwiftUI

struct ImpactUnlockedCardView: View {
    var behaviorName: String
    
    var body: some View {
        GenericCard(title: String(localized: "impact_unlocked_card_title"),
                    description: String(format: NSLocalizedString("impact_unlocked_card_description", comment: ""), behaviorName),
             counterValue: 2,
             buttonText: String(localized: "impact_unlocked_card_button"),
             buttonAction: {
            print("Button pressed")
        },
             image: Image(systemName: "arrow.right"))
    }
}

struct ImpactUnlockedCardView_Previews: PreviewProvider {
    static var previews: some View {
        ImpactUnlockedCardView(behaviorName: "[Behavior name]")
    }
}
