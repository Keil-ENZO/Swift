//
//  CryptoCell.swift
//  wallet
//
//  Created by Enzo Keil on 03/10/2022.
//

import SwiftUI


struct CryptoCell: View {
    
    let crypto: CryptoCurrency
    
    var body: some View {
        HStack (spacing: 16) {
            Image(crypto.iconName)
                .resizable()
                .frame(width: 30, height: 30)
                .padding()
                .background(.gray)
                .cornerRadius(50)
            VStack(alignment: .leading, spacing: 6) {
                Text(crypto.name)
                    .font(.headline)
                    .foregroundColor(.gray)
                Text(crypto.symbol)
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .opacity(0.8)
            }
            Spacer()
            VStack (alignment: .trailing) {
                Text("\(String(format: "%.2f", crypto.value)) €")
                    .foregroundColor(.gray)
                HStack {
                    if crypto.evolution > 0 {
                        Image(systemName: "arrow.up.right")
                            .foregroundColor(.green)
                    } else {
                        Image(systemName: "arrow.down.right")
                            .foregroundColor(.red)
                    }
                    Text("\(String(format: "%.2f", crypto.evolution)) %")
                        .foregroundColor(crypto.evolution > 0 ? .green :  .red)
                }
            }
        }
        .padding()
        .background(.black)
        .cornerRadius(11)
    }
}

struct CryptoCell_Previews: PreviewProvider {
    static var previews: some View {
        CryptoCell(crypto: cryptoList[0])
            .padding()
            .background(.black)
            .previewLayout(.sizeThatFits)
    }
}
