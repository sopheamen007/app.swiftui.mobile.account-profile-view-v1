//
//  ProfieView.swift
//  Youtube_ProfileView
//
//  Created by Sopheamen VAN on 18/7/24.
//
import SwiftUI
import Kingfisher

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                // content here
                VStack (spacing: 20){
                    // header view
                    ProfileHeaderView()
                    
                    // name and and username
                    NameAndUserNameView()
                    
                    // buttons action
                    ButtonsActionView()
                    
                    // add story
                    AddStoryView()
                    
                    // add custom tab posts such as images, videos, and tag of you
                    PhotosVideosTagofYouView()
                    
                }
            }
        }
    }
}


#Preview {
    ProfileView()
}

struct ProfileHeaderView:View {
    var body: some View {
        HStack {
            // profile image
            ProfileViewAndStory()
            // spacer
            Spacer()
            // custom likes, followers, following
            HStack {
                // likes,
                CustomLikesFollowersFollowingView(title: "Posts", totalCount: userDataCurrent.totalPosts)
                // followers,
                CustomLikesFollowersFollowingView(title: "Followers", totalCount: userDataCurrent.totalFollowers)
                // following
                CustomLikesFollowersFollowingView(title: "Following", totalCount: userDataCurrent.totalFollowing)
            }
        }
        .padding(.horizontal)
    }
}

struct ProfileViewAndStory:View {
    var body: some View {
        ZStack {
            ProfileImageView(profileImage: userDataCurrent.profileImage, size: 100)
            Button {
                // action of the button
            }label: {
                // layout here
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 28, height: 28)
                    .background(.white)
                    .clipShape(Circle())
                    .foregroundStyle(Color.primaryColor)
                    .overlay(Circle().stroke(.white, lineWidth: 4))
            }
            .offset(x:35, y: 35)
        }
        .frame(width: 100, height: 100)
    }
}

struct CustomLikesFollowersFollowingView:View {
    // set title and number count
    var title: String
    var totalCount: Int
    var body: some View {
        VStack {
            Text("\(totalCount)")
                .fontWeight(.semibold)
                .frame(height: 16)
            Text(title)
                .frame(height: 8)
            
        }
        // putting the same font
        .font(.subheadline)
        .frame(width: 75)
    }
}

struct NameAndUserNameView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text(userDataCurrent.fullname)
                .font(.headline)
                .fontWeight(.semibold)
                .frame(height: 16)
            Text("@\(userDataCurrent.username)")
                .font(.subheadline)
                .frame(height: 14)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

struct ButtonsActionView: View {
    // get size width of the screen
    var size = (UIScreen.main.bounds.width / 2)
    var body: some View {
        HStack {
            
            Button {
                
            }label: {
                ButtonGrayView(title: "Edit Profile")
                    
            }
            .frame(maxWidth: size)
            // spacer
            Spacer()
            Button {
                
            }label: {
                ButtonGrayView(title: "Share Profile")
                    
            }
            .frame(maxWidth: size)
            //
            Button {
                
            }label: {
                Image("add_contact_icon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.black)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 8)
            }
            .background(Color.textFieldBackgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .padding(.horizontal)
    }
}

struct AddStoryView: View {
    var storiesDatas:[UserStoryResponse] = userStoriesData
    var body: some View {
        VStack {
            // text title and subtitle
            VStack (spacing: 0){
                Text("Story highlight")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Keep your favourite stories on your profile")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .font(.subheadline)
            .padding(.bottom, 12)

            // first load add story action
            ScrollView(.horizontal, showsIndicators: false) {
                HStack (spacing: 18){
                    // add story button view
                    Button {
                        
                    }label: {
                        VStack (spacing: 5){
                            ZStack {
                                Circle()
                                    .fill(.clear)
                                    .frame(width: 65, height: 65)
                                    .overlay(Circle().stroke(Color.textFieldBackgroundColor, lineWidth: 1.5))
                                Image(systemName: "plus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25, height: 25)
                            }
                            Text("New")
                                .font(.subheadline)
                        }
                        .foregroundStyle(.black)
                    }
                    
                    // fetch dummy story data
                    LazyHStack (spacing: 18){
                        ForEach(storiesDatas) { data in
                            VStack (spacing: 5){
                                ProfileImageView(profileImage: data.imageUrl, size: 65)
                                Text(data.caption)
                                    .font(.subheadline)
                                    .frame(width: 65)
                                    .lineLimit(1)
                            }
                        }
                    }
                }
            }
            
           
        }
        .padding(.horizontal)
    }
}

struct PhotosVideosTagofYouView: View {
    // icons
    let icons = ["grid_icon", "reels_icon", "tag_icon"]
    // state default icon
    @State private var selectedTab = 0
    // name space for animation
    @Namespace private var underlineNamespace
    // get screen width and make sure space after /
    let width = (UIScreen.main.bounds.width / 3)
    
    var body: some View {
        VStack (spacing: 0){
            // header custom icon tabs
            HStack {
                ForEach(0..<icons.count, id: \.self) { index in
                    Button {
                        withAnimation {
                            selectedTab = index
                        }
                    }label: {
                        VStack (spacing: 10){
                            Image(icons[index])
                                .resizable()
                                .scaledToFit()
                                .frame(width: 22, height: 22)
                            
                            // check line if active with index
                            if selectedTab == index {
                                Rectangle()
                                    .fill(.black)
                                    .frame(height: 1.5)
                                    .matchedGeometryEffect(id: "tabIndicator", in: underlineNamespace)
                            }
                        }
                    }
                    // button width with 3
                    .frame(width: width)
                }
            }
            .frame(height: 40, alignment: .leading)
            
            // get content each tab
            getContentTab(value: selectedTab)
            
        }
       
    }
    
    @ViewBuilder
    func getContentTab(value: Int) -> some View {
        switch value {
        case 0:
            PostGridPhotoView()
        case 1:
            PostGridVideoView()
        case 2:
            TagofYouView()
        default:
            // default
            EmptyView()
        }
    }
}

struct TagofYouView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("contact_icon")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .padding(.all, 20)
                .overlay(Circle().stroke(.black, lineWidth: 2))
            
            Text("Photos and video of you")
                .font(.title3)
                .fontWeight(.semibold)
            Text("When people tag you in photos and video")
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundStyle(.gray)
        }
        .frame(height: 200)
        .frame(maxWidth: .infinity)
       
    }
}
