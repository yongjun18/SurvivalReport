//
//  ReportView.swift
//  SurvivalReport
//
//  Created by yongjun18 on 2/21/24.
//

import SwiftUI

struct ReportView: View {
    var body: some View {
        VStack(spacing: 0) {
            TitleBar(title: "생존신고")
            ScrollView {
                Text("Report View")
            }
        }
    }
}

#Preview {
    ReportView()
}
