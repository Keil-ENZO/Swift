//
//  CryptoDetailScreen.swift
//  wallet
//
//  Created by Enzo Keil on 03/10/2022.
//

import SwiftUI

struct CryptoDetailScreen: View {
    
    let crypto:CryptoCurrency
    @State var quantity: Float = 1.0
    
    var body: some View {
        VStack {
            HStack {
                Text(crypto.name)
                    .foregroundColor(.black)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.vertical, 24)
                    .padding(.horizontal, 16)
                Spacer()
                Image(crypto.iconName)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(8)
                    .background(.black)
                    .cornerRadius(50)
            }
            VStack(spacing: 16) {
                Text("\(String(format: "%.2f",quantity * crypto.value)) €")
                    .font(.system(size:32, weight: .bold))
                HStack {
                    Text("\(String(format: "%.2f", crypto.evolution)) %")
                    if crypto.evolution > 0 {
                        Image(systemName: "arrow.up.right")
                            .foregroundColor(.green)
                    } else {
                        Image(systemName: "arrow.down.right")
                            .foregroundColor(.red)
                    }
                }
                .foregroundColor(crypto.evolution > 0 ? .green :  .red)
                Text("Quantité : \(quantity)")
                    .foregroundColor(.black)
            }
            Spacer()
            HStack(spacing: 16) {
                Button {
                    quantity = quantity - 1
                } label: {
                    Text("Acheter")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.yellow)
                        .cornerRadius(10)
                }
                Button {
                    quantity = quantity + 1
                } label: {
                    Text("Vendre")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.yellow)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
        .background(.gray)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CryptoDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        CryptoDetailScreen(crypto: cryptoList[0])
    }
}
