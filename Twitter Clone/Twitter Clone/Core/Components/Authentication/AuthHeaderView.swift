//
//  AuthenticationHeaderView.swift
//  Twitter Clone
//
//  Created by MohamedSafaoui on 12/19/22.
//

import SwiftUI

struct AuthHeaderView: View {
    let title1:String
    let title2: String
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Spacer()
            }
            Text(title1)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(title2)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(height: 260)
        .padding(.leading)
        
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(Roundedshape(corrners: [.bottomRight]))
    }
}

struct AuthenticationHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(title1: "Hello", title2: "Welcome Back")
    }
}
