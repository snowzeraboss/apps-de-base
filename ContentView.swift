//
//  ContentView.swift
//  LUIs
//
//  Created by Maker-Mac01 on 28/09/26.
//

import SwiftUI



struct ContentView: View {

    var body: some View {

        NavigationStack {

            ZStack {

                Image("zap")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                VStack(spacing: 25) {

                    Text("SEJA BEM VINDO")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(Color.white)
                        .padding(10)

                    Text("Meu aplicativo")
                        .font(.headline)
                        .foregroundStyle(Color.white.opacity(0.9))

                    NavigationLink("IR PARA A SEGUNDA TELA") {
                        segundaTela()
                    }
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .padding(.horizontal, 25)
                    .padding(.vertical, 15)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                }
            }
        }
    }
}






struct segundaTela: View {

    
    let fotos = [
        "foto1",
        "foto2",
        "foto3",
        "foto4",
        "foto5",
        
    ]

    let colunas = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {

        ZStack {

           
            Image("zap")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

        

            ScrollView {

                VStack {

                    Text("SEGUNDA TELA")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .padding(10)

                    Text("MEU ÁLBUM")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .padding(.bottom, 10)

                   
                    LazyVGrid(columns: colunas, spacing: 15) {

                        ForEach(fotos, id: \.self) { foto in

                            Image(foto)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 150)
                                .clipShape(
                                    RoundedRectangle(
                                        cornerRadius: 15
                                    )
                                )
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
        .navigationTitle("ÁLBUM")
        .navigationBarTitleDisplayMode(.inline)
    }
}










#Preview {
    ContentView()
}
