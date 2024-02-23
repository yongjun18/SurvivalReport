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
                VStack(spacing: 0) {
                    
                    Spacer().frame(height: 5)
                    
                    SettingItemView(name: "다크모드")
                    Spacer().frame(height: 1)
                    SettingItemView(name: "화면잠금설정")
                    Spacer().frame(height: 1)
                    SettingItemView(name: "알림설정")
                    Spacer().frame(height: 1)
                    SettingItemView(name: "혜택 알림설정")
                    Spacer().frame(height: 1)
                    SettingItemView(name: "비밀번호 변경")
                    
                    Spacer().frame(height: 5)
                    
                    SettingItemView(name: "도움말")
                    Spacer().frame(height: 1)
                    SettingItemView(name: "이용약관")
                    Spacer().frame(height: 1)
                    SettingItemView(name: "개인정보 처리방침")
                    Spacer().frame(height: 1)
                    SettingItemView(name: "버전")
                    
                    Spacer().frame(height: 5)
                    
                    SettingItemView(name: "인증 초기화")
                }
                .frame(maxWidth: .infinity)
            }
            .background(Color(hex: "#cccccc"))
        }
    }
}

struct SettingItemView: View {
    let name: String
    
    var body: some View {
        HStack(spacing: 0) {
            Text(name)
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundStyle(Color(hex:"#555555"))
        }
        .font(.system(size: 16))
        .padding(15)
        .background(Color.white)
    }
}

#Preview {
    SettingView()
}
