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
            TabBarButton(tabType: .home, tabBarViewModel: tabBarViewModel)
            TabBarButton(tabType: .history, tabBarViewModel: tabBarViewModel)
            TabBarButton(tabType: .report, tabBarViewModel: tabBarViewModel)
            TabBarButton(tabType: .setting, tabBarViewModel: tabBarViewModel)
        }
    }
}

struct TabBarButton: View {
    let tabType: Tab
    @ObservedObject var tabBarViewModel: TabBarViewModel
    
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: tabType.imageString + (tabType == tabBarViewModel.selectedTab ? ".fill" : ""))
                .font(.system(size: 23))
            Spacer().frame(height: 5)
            Text(tabType.name)
                .font(.system(size: 11))
        }
        .frame(maxWidth: .infinity)
        .onTapGesture { tabBarViewModel.setSelectedTab(tab: tabType) }
    }
}

#Preview {
    VStack {
        Spacer()
        TabBarView(tabBarViewModel: TabBarViewModel())
    }
}
