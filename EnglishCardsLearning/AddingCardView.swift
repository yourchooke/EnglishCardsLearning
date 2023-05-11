//
//  AddingCardView.swift
//  EnglishCardsLearning
//
//  Created by Olga Yurchuk on 09.05.2023.
//

import SwiftUI

struct AddingCardView: View {
    var willLearnCount: String
    
    var body: some View {
        NavigationStack {
            ZStack {
                RoundedRectangle(cornerRadius: 24)
                    .foregroundColor(Color(uiColor: UIColor(red: 1, green: 0.848, blue: 0.762, alpha: 1)))
                VStack {
                    HStack {
                        Text("Буду учить")
                        Text(willLearnCount)
                            .foregroundColor(Color(uiColor: UIColor(red: 0.821, green: 0.367, blue: 0.116, alpha: 1)))
                        Spacer()
                        NavigationLink {
                        } label: {
                            Text("Посмотреть")
                                .foregroundColor(Color(uiColor:  UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                                .underline(true, color: Color( UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct AddingCardView_Previews: PreviewProvider {
    static var previews: some View {
        AddingCardView(willLearnCount: "10")
    }
}
