//
//  CSDetail.swift
//  exerciseDay4
//
//  Created by laptop MCO on 03/08/23.
//

import SwiftUI

struct CSDetail: View {
    let shopDetail: Coffeeshop
    var body: some View {
        VStack{
            
            Text(shopDetail.name)
                .font(.system(size: 40, design: .rounded))
                .fontWeight(.black)
                .padding(.bottom)
                .multilineTextAlignment(.center)
            
            Image("\(shopDetail.image)")
                .resizable()
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.bottom)
            
            Text(shopDetail.location)
                .font(.system(size: 18, design: .rounded))
                .lineSpacing(14)
                .multilineTextAlignment(.center)
                .padding(.bottom, 1)
            
            Text(shopDetail.review)
                .font(.body)
                .fontWeight(.black)
                .padding(.bottom)
                .multilineTextAlignment(.center)
 
            Spacer()
        }
    }
    
    struct CSDetail_Previews: PreviewProvider {
        static var previews: some View {
            CSDetail(shopDetail: Coffeeshop(image: "bojaeatery", name: "Boja", location: "Bandung", review: "Joss"))
        }
    }
}
