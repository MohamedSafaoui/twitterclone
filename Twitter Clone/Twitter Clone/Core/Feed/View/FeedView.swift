//
//  FeedView.swift
//  Twitter Clone
//
//  Created by MohamedSafaoui on 12/13/22.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetsRowView()
                            .padding()
                    }
                }
            }
            Button {
                showNewTweetView.toggle()
            }label: {
                Image(systemName: "pencil.circle")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 58, height: 58)
            
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView) {
                NewTweetView()
            }
            
        }
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
