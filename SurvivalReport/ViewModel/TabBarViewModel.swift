//
//  TabBarViewModel.swift
//  SurvivalReport
//
//  Created by yongjun18 on 2/21/24.
//

import Foundation

class TabBarViewModel: ObservableObject {
    @Published var selectedTab = Tab.home
    
    func setSelectedTab(tab: Tab) {
        selectedTab = tab
    }
}
