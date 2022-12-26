//
//  UserStatsView.swift
//  Twitter Clone
//
//  Created by MohamedSafaoui on 12/18/22.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24){
            HStack(spacing: 4){
                
                Text("329")
                    .bold()
                    .font(.subheadline)
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            HStack(spacing: 4){
                
                Text("4.9M")
                    .bold()
                    .font(.subheadline)
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
