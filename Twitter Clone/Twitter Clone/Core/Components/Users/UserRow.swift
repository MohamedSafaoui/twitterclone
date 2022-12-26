//
//  UserRow.swift
//  Twitter Clone
//
//  Created by MohamedSafaoui on 12/14/22.
//

import SwiftUI

struct UserRow: View {
    var body: some View {
        HStack(spacing:12){
            Circle()
                .frame(width: 48, height: 48)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 4){
                Text("Ibrahim • \"Store?\"")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                Text("Ibrahim")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
               // .padding(.horizontal)
                //.padding(.vertical, 4)
            
            
        }
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow()
    }
}
