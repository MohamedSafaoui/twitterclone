//
//  TweetsRowView.swift
//  Twitter Clone
//
//  Created by MohamedSafaoui on 12/13/22.
//

import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // profile image + user info + tweet
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
               // user info & tweet caption
                VStack(alignment: .leading, spacing: 4) {
                    // user infor
                    HStack{
                        Text("Mo Safaoui")
                            .font(.subheadline).bold()
                        Text("@MoSafaoui")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                    Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    Text("I need Caffeine")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
                
            }
            // ACTION buttons
            HStack{
                Button{
                    
                } label: {
                    Image(systemName: "bubble.left")
                }
                Spacer()
                Button{
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                }
                Spacer()
                Button{
                    
                } label: {
                    Image(systemName: "heart")
                }
                Spacer()
                Button{
                    
                } label: {
                    Image(systemName: "bookmark")
                }
            }
            .padding()
            .foregroundColor(.gray)
             Divider()
        }
        
    }
}
struct TweetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsRowView()
    }
}
