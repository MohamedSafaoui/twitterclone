////
////  ProfilePhotoSelector.swift
////  Twitter Clone
////
////  Created by MohamedSafaoui on 12/24/22.
////
//
//import SwiftUI
//
//struct ProfilePhotoSelector: View {
//    @State private var showImagePicker = false
//    @State private var selectedImage: UIImage?
//    @State private var profileImage: Image?
//    
//    var body: some View {
//        VStack{
//            AuthHeaderView(title1: "Setup account",
//                           title2: "Add a profile photo")
//            Button{
//                print("pick an image here...")
//            }label: {
//                if let profileImage = profileImage {
//                    profileImage
//                        .resizable()
//                        .modifier(ProfileImageModifier())
//                    
//                         
//                } else{
//                    Image("addpic2")
//                        .renderingMode(.template)
//                         .modifier(ProfileImageModifier())
//
//                }
//                    
//            }
//            .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
//                ImagePicker(selectedImage: $selectedImage)
//            }
//            .padding(.top, 44)
//            
//            Spacer()
//            
//        }
//        .ignoresSafeArea()
//    }
//    func loadImage() {
//        guard let selectedImage = selectedImage else{ return }
//        profileImage = Image(uiImage: selectedImage)
//        }
//    }
//
//private struct ProfileImageModifier: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//        
//             
//             
//             .foregroundColor(Color(.systemBlue))
//             .scaledToFit()
//             .frame(width: 180, height: 180)
//           
//             .clipShape(Circle())
//    }
//}
//
//struct ProfilePhotoSelector_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfilePhotoSelector()
//    }
//}
//
