//
//  ContentView.swift
//  SurvivalReport
//
//  Created by yongjun18 on 2/21/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var tabBarViewModel = TabBarViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            if (tabBarViewModel.selectedTab == .home) {
                HomeView()
            }
            if (tabBarViewModel.selectedTab == .history) {
                HistoryView()
            }
            if (tabBarViewModel.selectedTab == .report) {
                ReportView()
            }
            if (tabBarViewModel.selectedTab == .setting) {
                SettingView()
            }
            
            TabBarView(tabBarViewModel: tabBarViewModel)
        }
    }
}

#Preview {
    ContentView()
}
