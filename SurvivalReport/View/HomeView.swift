//
//  HomeView.swift
//  SurvivalReport
//
//  Created by yongjun18 on 2/21/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            TitleBar(title: "홈")
            ScrollView {
                Text("Home View")
            }
        }
    }
}

struct TitleBar: View {
    let title: String
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text(title)
                    .font(.system(size: 22))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 5, trailing: 0))
                Spacer()
            }
            Color.gray.frame(height: 1)
        }
    }
}

#Preview {
    HomeView()
}
