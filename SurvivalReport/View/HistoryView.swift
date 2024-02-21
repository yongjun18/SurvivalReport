//
//  HistoryView.swift
//  SurvivalReport
//
//  Created by yongjun18 on 2/21/24.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack(spacing: 0) {
            TitleBar(title: "기록")
            ScrollView {
                Text("History View")
            }
        }
    }
}

#Preview {
    HistoryView()
}
