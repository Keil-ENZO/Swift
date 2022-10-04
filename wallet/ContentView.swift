//
//  ContentView.swift
//  wallet
//
//  Created by Enzo Keil on 03/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            NavigationView {
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("My wallet")
                            .foregroundColor(Color.orange)
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.vertical, 24)
                            .padding(.horizontal, 16)
                            
                            
                            
                        ForEach(cryptoList, id: \.name) {crypto in
                            NavigationLink {
                                CryptoDetailScreen(crypto: crypto)
                            }   label: {
                                CryptoCell(crypto: crypto)
                            }
                        }
                    }
                    .padding()
                }
                .background(.gray)
            }
            .accentColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
