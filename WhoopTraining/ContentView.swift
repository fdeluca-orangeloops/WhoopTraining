//
//  ContentView.swift
//  WhoopTraining
//
//  Created by Federico De Luca on 21/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GenericCard(viewModel: ImpactUnlockedCardViewModel())
            GenericCard(viewModel: CleanCardViewModel())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
