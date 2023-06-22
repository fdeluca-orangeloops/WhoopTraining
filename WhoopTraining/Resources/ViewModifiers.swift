//
//  Styles.swift
//  WhoopTraining
//
//  Created by Federico De Luca on 21/6/23.
//

import SwiftUI

struct ButtonCard: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.customSkyblue)
            .textCase(.uppercase)
            .bold()
            .padding(.top, 4)
            .padding(.leading)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct TextCardBody: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.customLightGray)
            .padding(.top, 4)
            .padding(.leading)
    }
}

struct TextCardH1: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .bold()
            .padding(.top, 4)
            .padding(.leading)
    }
}

