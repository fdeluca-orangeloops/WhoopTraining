//
//  ImpactUnlockedView.swift
//  WhoopTraining
//
//  Created by Federico De Luca on 21/6/23.
//

import SwiftUI

struct GenericCard: View {
    var title: String
    var description: String
    var counterValue: Int
    var buttonText: String
    var buttonAction: () -> Void
    var image: Image
    
    var body: some View {
        HStack(alignment: .top) {
            HStack(alignment: .center) {
                VStack (alignment: .leading) {
                    Text(title).cardH1()
                    Text(description).cardBody()
                    Button(action: buttonAction) {
                        HStack {
                            Text(buttonText)
                            image
                        }
                    }.card()
                }
                Image(systemName: "target")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.customLightGray)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 24, height: 48)
                    .foregroundColor(.customGray)
                VStack {
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 12, height: 12)
                        .foregroundColor(.white)
                    Text(String(counterValue))
                        .foregroundColor(.white)
                }
            }
        }
        .padding()
        .background(Color.customDarkGray)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.customSkyblue, lineWidth: 3))
    }
}

struct ImpactUnlockedView_Previews: PreviewProvider {
    static var previews: some View {
        GenericCard(
            title: "Title",
            description: "Description",
            counterValue: 2,
            buttonText: "Button text",
            buttonAction: {
                print("Button pressed")
            }, image: Image(systemName: "arrow.right"))
            .previewLayout(.sizeThatFits)
    }
}
