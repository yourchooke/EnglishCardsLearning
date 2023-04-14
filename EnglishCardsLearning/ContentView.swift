//
//  ContentView.swift
//  EnglishCardsLearning
//
//  Created by Olga Yurchuk on 31.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var textToTranslate = ""
    @State private var translation = ""
    
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                Text("The simpliest way to learn English words")
                    .font(.system(.largeTitle, design: .monospaced))
                    .foregroundColor(.gray)
                Spacer()
                HStack{
                    VStack{
                        TextField("Введите слово", text: $textToTranslate)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.leading)
                        TextField("Перевод", text: $translation)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                    Button("Добавить к изучению", action: addToLearnAction)
                        .buttonStyle(.bordered)
                } .padding()
                Spacer(minLength: 20)
                Text("Статистика")
                    .font(.system(.title2))
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Ещё учу")
                            .padding()
                        Text("5")
                            .foregroundColor(.blue)
                    }
                    Spacer()
                    VStack {
                        Text("Изучено")
                            .padding()
                        Text("500")
                            .foregroundColor(.blue)
                    }
                    Spacer()
                }
                Spacer()
                Button("Начать изучение", action: startLearningAction)
                    .buttonStyle(.borderedProminent)
                    .frame(minWidth: 500, minHeight: 200)
            }
            .padding()
        }
    }
    private func addToLearnAction(){
        print("слово \(textToTranslate) добавлено к изучению")
    }
    
    private func startLearningAction() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
