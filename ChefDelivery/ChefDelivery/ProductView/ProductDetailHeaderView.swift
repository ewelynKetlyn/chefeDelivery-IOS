//
//  ProductDetailHeaderView.swift
//  ChefDelivery
//
//  Created by Ewelyn Silva on 18/02/24.
//

import SwiftUI

struct ProductDetailHeaderView: View {
    
    let product: ProductType
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 20)
            
            Text(product.name)
                .font(.title)
                .bold()
                .padding(.horizontal)
                .padding(.top)
            
            Text(product.description)
                .padding(.horizontal)
            
            Text(product.formattedPrince)
                .font(.title3)
                .bold()
                .padding(.horizontal)
        }
    }
}

#Preview {
    ProductDetailHeaderView(product: storesMock[0].products[0])
}
