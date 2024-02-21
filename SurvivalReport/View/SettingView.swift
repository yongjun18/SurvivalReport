//
//  SettingView.swift
//  SurvivalReport
//
//  Created by yongjun18 on 2/21/24.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        VStack(spacing: 0) {
            TitleBar(title: "설정")
            ScrollView {
                Text("Setting View")
            }
        }
    }
}

#Preview {
    SettingView()
}
