//
//  ExploreView.swift
//  Twitter Clone
//
//  Created by MohamedSafaoui on 12/13/22.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    LazyVStack{
                        ForEach( 0 ... 25, id: \.self){ _ in
                            NavigationLink{
                                ProfileView()
                            } label: {
                                UserRow()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
