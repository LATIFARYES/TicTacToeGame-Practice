//
//  ContentView.swift
//  TicTacToeGame
//
//  Created by LATIFA on 06/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var TicTac = TicTacModel()
    
    var body: some View {
        VStack {
           
            Text("TIC TAC TOE 👾")
                .font(.title)
                .bold()
            
            let col = Array(repeating: GridItem( .flexible()), count: 3)
            
            LazyVGrid(columns: col, content: {
                ForEach(0..<9) { i in
                    Button(action: {

                        TicTac.buttonTap(i: i)
                        
                    }, label: {
                        Text(TicTac.buttonLabel(i: i))
                            .frame(width: 100, height: 100)
                            .background(.blue)
                            .foregroundStyle(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                    
                    })
                    
                }
            })
            .padding(.bottom)
            
            Button(action: {
                
                TicTac.resetGame()
                
            }, label: {
                Text("RESTART GAME ♺")
                    .foregroundColor(.green)
                    .font(.title3)
                    .bold()
                    
                
                
            })
            
        }
        
        
        .padding()
    }
}

#Preview {
    ContentView()
}
