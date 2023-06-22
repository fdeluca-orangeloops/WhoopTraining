//
//  Styles.swift
//  WhoopTraining
//
//  Created by Federico De Luca on 21/6/23.
//

import SwiftUI

extension Button {
    func card() -> some View { self.modifier(ButtonCard()) }
}

extension Text {
    func cardBody() -> some View { self.modifier(TextCardBody()) }
    func cardH1() -> some View { self.modifier(TextCardH1()) }
}
