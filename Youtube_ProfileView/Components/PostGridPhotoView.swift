//
//  PostGridPhotoView.swift
//  Youtube_ProfileView
//
//  Created by Sopheamen VAN on 18/7/24.
//

import SwiftUI
import Kingfisher

struct PostGridPhotoView: View {

    let columns:[GridItem] = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2)
    ]
    let size = ((UIScreen.main.bounds.width + 10) / 3)
    

    var body: some View {
        LazyVGrid(columns: columns, spacing: 2) {
            ForEach(postsData) { post in
                if let urlString = post.imageOrVideoUrl.first, let url = URL(string: urlString) {
                    
                    if(post.postType == 1){
                        // build photo collection
                        if(post.imageOrVideoUrl.count > 1){
                            ZStack (alignment: .topTrailing){
                                KFImage(url)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: size, height: size)
                                    .clipped()
                                
                                Image("photo_collection_icon")
                                    .padding(.all, 10)
                                    
                            }
                        }else {
                            KFImage(url)
                                .resizable()
                                .scaledToFill()
                                .frame(width: size, height: size)
                                .clipped()
                        }
                        
                    }else {
                       EmptyView()
                    }
                }
 
            }
        }
    }
}

#Preview {
    PostGridPhotoView()
}
