//
//  PostData.swift
//  Youtube_ProfileView
//
//  Created by Sopheamen VAN on 18/7/24.
//

import Foundation


let postsData: [PostResponse] = [
    PostResponse(id: 1, user: userData[0], caption: "A beautiful day at the beach! 🏖️", postType: 1, imageOrVideoUrl: [
        "https://images.unsplash.com/photo-1710156958953-329d3531c745?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHx8",
        "https://images.unsplash.com/photo-1660486358484-975da44dc68e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"], totalLikes: 300, totalComments: 50),
    PostResponse(id: 2, user: userData[1], caption: "Exploring the mountains 🏔️ #adventure", postType: 1, imageOrVideoUrl: ["https://images.unsplash.com/photo-1489914169085-9b54fdd8f2a2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.M3wxMjA3fDB8MHxzZWFyY2h8M3x8RXhwbG9yaW5nJTIwdGhlJTIwbW91bnRhaW5zJTIwJUYwJTlGJThGJTk0JUVGJUI4JThGJTIwJTIzYWR2ZW50dXJlfGVufDB8fDB8fHww0.3&ixid="], totalLikes: 450, totalComments: 75),
    PostResponse(id: 3, user: userData[0], caption: "My morning coffee ☕ #coffeelover", postType: 1, imageOrVideoUrl: ["https://images.unsplash.com/photo-1495862433577-132cf20d7902?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fE15JTIwbW9ybmluZyUyMGNvZmZlZSUyMCVFMiU5OCU5NSUyMCUyM2NvZmZlZWxvdmVyfGVufDB8fDB8fHww"], totalLikes: 200, totalComments: 30),
    PostResponse(id: 4, user: userData[2], caption: "Sunset vibes 🌇 #photography", postType: 1, imageOrVideoUrl: ["https://images.unsplash.com/photo-1494548162494-384bba4ab999?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8U3Vuc2V0JTIwdmliZXMlMjAlRjAlOUYlOEMlODclMjAlMjNwaG90b2dyYXBoeXxlbnwwfHwwfHx8MA%3D%3D"], totalLikes: 500, totalComments: 90),
    PostResponse(id: 5, user: userData[0], caption: "Check out this cool video I made! 🎥", postType: 2, imageOrVideoUrl: ["https://videos.pexels.com/video-files/5896379/5896379-sd_360_640_24fps.mp4"], totalLikes: 600, totalComments: 120),
    PostResponse(id: 6, user: userData[0], caption: "New recipe tried today! 🍲 #Foodie", postType: 1, imageOrVideoUrl: ["https://images.pexels.com/photos/7538074/pexels-photo-7538074.jpeg?auto=compress&cs=tinysrgb&w=600"], totalLikes: 320, totalComments: 45),
    PostResponse(id: 7, user: userData[1], caption: "Nothing beats a good book on a rainy day 📚 #BookLover", postType: 1, imageOrVideoUrl: ["https://images.pexels.com/photos/6001171/pexels-photo-6001171.jpeg?auto=compress&cs=tinysrgb&w=600"], totalLikes: 275, totalComments: 65),
    PostResponse(id: 8, user: userData[0], caption: "Let the music play! 🎶 #LiveConcert", postType: 2, imageOrVideoUrl: ["https://videos.pexels.com/video-files/3636753/3636753-sd_640_360_30fps.mp4"], totalLikes: 400, totalComments: 85),
    PostResponse(id: 9, user: userData[4], caption: "Back to nature 🌿 #HikingAdventures", postType: 1, imageOrVideoUrl: ["https://images.pexels.com/photos/7215477/pexels-photo-7215477.jpeg?auto=compress&cs=tinysrgb&w=600"], totalLikes: 520, totalComments: 98),
    PostResponse(id: 10, user: userData[5], caption: "City lights and starry nights 🌃 #Cityscape", postType: 1, imageOrVideoUrl: ["https://images.pexels.com/photos/2787074/pexels-photo-2787074.jpeg?auto=compress&cs=tinysrgb&w=600"], totalLikes: 412, totalComments: 100),
]
