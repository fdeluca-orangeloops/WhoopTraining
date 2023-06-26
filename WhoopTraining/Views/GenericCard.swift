//
//  ImpactUnlockedView.swift
//  WhoopTraining
//
//  Created by Federico De Luca on 21/6/23.
//

import SwiftUI

struct GenericCard: View {
    var viewModel: CardViewModel
    @State private var cornerRadius: CGFloat = 20
    
    var body: some View {
        HStack(alignment: .top) {
            HStack(alignment: .center) {
                VStack (alignment: .leading) {
                    Text(viewModel.titleText)
                        .textCase(viewModel.titleTextCase)
                        .foregroundColor(viewModel.titleTextColor)
                        .bold()
                        .padding(.top, 4)
                        .padding(.leading)
                    Text(viewModel.descriptionText)
                        .textCase(viewModel.descriptionTextCase)
                        .foregroundColor(viewModel.descriptionTextColor)
                        .bold()
                        .padding(.top, 4)
                        .padding(.leading)
                        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                    Button(action: viewModel.buttonAction) {
                        HStack {
                            Text(viewModel.buttonText)
                        }
                        viewModel.buttonIcon
                    }
                    .foregroundColor(.customSkyblue)
                    .textCase(.uppercase)
                    .bold()
                    .padding(.top, 4)
                    .padding(.leading)
                    .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                }
                viewModel.representativeImage!
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(viewModel.representativeImageColor)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 24, height: 48)
                    .foregroundColor(viewModel.counterBackgroundColor)
                VStack {
                    viewModel.counterIcon!
                        .resizable()
                        .frame(width: 12, height: 12)
                    Text(String(viewModel.counterValue))
                }
                .foregroundColor(viewModel.counterTextColor)
            }
        }
        .padding()
        .background(viewModel.cardBackgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(viewModel.cardBorderColor, lineWidth: 3))
    }
}

struct ImpactUnlockedView_Previews: PreviewProvider {
    static var previews: some View {
        GenericCard(viewModel: ImpactUnlockedCardViewModel())
            .previewLayout(.sizeThatFits)
    }
}
