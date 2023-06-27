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
                        .font(viewModel.titleTextFont)
                        .foregroundColor(viewModel.titleTextColor)
                        .bold()
                        .padding(.top, 4)
                        .padding(.leading)
                    if let descriptionText = viewModel.descriptionText {
                        Text(descriptionText)
                            .textCase(viewModel.descriptionTextCase)
                            .font(viewModel.descriptionTextFont)
                            .foregroundColor(viewModel.descriptionTextColor)
                            .bold()
                            .padding(.top, 4)
                            .padding(.leading)
                            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                    }
                    Button(action: viewModel.buttonAction) {
                        HStack {
                            Text(viewModel.buttonText)
                                .font(viewModel.buttonTextFont)
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
                Spacer()
                if let representativeImage = viewModel.representativeImage {
                    representativeImage
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(viewModel.representativeImageColor)
                }
            }
            ZStack {
                if let counterValue = viewModel.counterValue {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 24, height: 48)
                        .foregroundColor(viewModel.counterBackgroundColor)
                    VStack {
                        if let counterIcon = viewModel.counterIcon {
                        counterIcon
                            .resizable()
                            .frame(width: 12, height: 12)
                        }
                        Text(String(counterValue))
                            .font(viewModel.counterTextFont)
                    }
                    .foregroundColor(viewModel.counterTextColor)
                }
            }
        }
        .padding()
        .background(viewModel.cardBackgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(viewModel.cardBorderColor, lineWidth: 3))
        .padding(.leading)
        .padding(.trailing)
    }
}

struct ImpactUnlockedView_Previews: PreviewProvider {
    static var previews: some View {
        GenericCard(viewModel: ImpactUnlockedCardViewModel())
            .previewLayout(.sizeThatFits)
        GenericCard(viewModel: CleanCardViewModel())
            .previewLayout(.sizeThatFits)
    }
}
