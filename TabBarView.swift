//
//  TabBarView.swift
//  SurvivalReport
//
//  Created by yongjun18 on 2/21/24.
//

import SwiftUI

struct TabBarView: View {
    @ObservedObject var tabBarViewModel: TabBarViewModel
    
    var body: some View {
        Color.gray.frame(height: 1)
        Spacer().frame(height:5)
        HStack(spacing: 10) {
            TabBarButton(iconImage: "house", title: "홈")
                .onTapGesture { tabBarViewModel.setSelectedTab(tab: .home) }
            TabBarButton(iconImage: "doc.text", title: "기록")
                .onTapGesture { tabBarViewModel.setSelectedTab(tab: .history) }
            TabBarButton(iconImage: "hand.raised", title: "생존신고")
                .onTapGesture { tabBarViewModel.setSelectedTab(tab: .report) }
            TabBarButton(iconImage: "gearshape", title: "설정")
                .onTapGesture { tabBarViewModel.setSelectedTab(tab: .setting) }
        }
    }
}

struct TabBarButton: View {
    let iconImage: String
    let title: String
    
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: iconImage)
                .font(.system(size: 23))
            Spacer().frame(height: 5)
            Text(title)
                .font(.system(size: 11))
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    VStack {
        Spacer()
        TabBarView(tabBarViewModel: TabBarViewModel())
    }
}
