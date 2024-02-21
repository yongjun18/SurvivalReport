//
//  TabBarView.swift
//  SurvivalReport
//
//  Created by yongjun18 on 2/21/24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        Color.gray.frame(height: 1)
        Spacer().frame(height:5)
        HStack(spacing: 10) {
            TabBarButton(iconImage: "house", title: "홈")
            TabBarButton(iconImage: "doc.text", title: "기록")
            TabBarButton(iconImage: "hand.raised", title: "생존신고")
            TabBarButton(iconImage: "gearshape", title: "설정")
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
        TabBarView()
    }
}
