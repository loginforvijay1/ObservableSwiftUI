//
//  ContentView.swift
//  ObservableSwiftUI
//
//  Created by Vemireddy Vijayasimha Reddy on 06/04/24.
//

import SwiftUI

// Old Way
//class User: ObservableObject {
//    
//    @Published var name: String
//    @Published var jobTitile: String
//    @Published var followerCount: Int
//    @Published var bio: String
//    
//    init(name: String, jobTitile: String, followerCount: Int, bio: String) {
//        self.name = name
//        self.jobTitile = jobTitile
//        self.followerCount = followerCount
//        self.bio = bio
//    }
//}

import Observation

@Observable class User {
    
     var name: String
     var jobTitile: String
     var followerCount: Int
     var bio: String
    
    init(name: String, jobTitile: String, followerCount: Int, bio: String) {
        self.name = name
        self.jobTitile = jobTitile
        self.followerCount = followerCount
        self.bio = bio
    }
}

struct ContentView: View {
    
    // Old Way
    // @StateObject var user  = User(name: "Vijay", jobTitile: "iOS Developer", followerCount: 100000, bio: "My Bio")
    
    var user  = User(name: "Vijay", jobTitile: "iOS Developer", followerCount: 100000, bio: "My Bio")
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text(user.name)
                .font(.title.bold())
            Text(user.jobTitile)
                .foregroundStyle(.secondary)
            Text("\(user.followerCount) Followers")
                .foregroundStyle(.secondary)
            
            Button(action: {
                user.followerCount += 1
            }, label: {
                Text("Add Follower")
            })
            .buttonStyle(.borderedProminent)
            .padding(.top, 30)
            
        })
    }
}

#Preview {
    ContentView()
}
