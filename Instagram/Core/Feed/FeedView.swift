//
//  FeedView.swift
//  Instagram
//
//  Created by Mario Ban on 08.12.2023..
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(Post.MOCK_POSTS) { post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image("Instagram_logo")
                        .resizable()
                        .frame(width: 100, height: 32)
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "paperplane")
                        .resizable()
                        .imageScale(.large)
                }


            }
        }
    }
}

#Preview {
    FeedView()
}
