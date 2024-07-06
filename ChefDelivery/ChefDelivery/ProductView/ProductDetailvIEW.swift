//
//  ProductDetailvIEW.swift
//  ChefDelivery
//
//  Created by Ewelyn Silva on 17/02/24.
//

import SwiftUI

struct ProductDetailvIEW: View {
    
    let product: ProductType
    
    var body: some View {
        VStack {
            ProductDetailHeaderView(product: product)
            
            Spacer()
            
            ProductDetailQuantityView()
            
            Spacer()
            Button {
                print("O botao foi pressionado")
            } label: {
                HStack {
                    Image(systemName: "cart")
                    
                    Text("Adicionar ao carrinho")
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .font(.title3)
                .bold()
                .background(Color("ColorRed"))
                .foregroundColor(.white)
                .cornerRadius(32)
                .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10, x:6, y:8)
            }
        }
    }
}

#Preview {
    ProductDetailvIEW(product: storesMock[0].products[0])
}
