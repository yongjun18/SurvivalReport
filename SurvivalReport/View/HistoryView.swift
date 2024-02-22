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
                VStack(spacing: 2) {
                    HistoryRecentView(name: "정용준님", userId: "835282", startDt: "2024.02.04", lastReportDt: "2024.02.21")
                    HistoryOldView(name: "정열창님", userId: "835200", startDt: "2024.01.25")
                    HistoryOldView(name: "정용준님", userId: "835282", startDt: "2024.01.20")
                    HistoryOldView(name: "정열창님", userId: "835200", startDt: "2024.01.12")
                    HistoryOldView(name: "정용준님", userId: "835282", startDt: "2024.01.01")
                    HistoryOldView(name: "정열창님", userId: "835200", startDt: "2023.12.24")
                    HistoryOldView(name: "정용준님", userId: "835282", startDt: "2023.12.01")
                    HistoryOldView(name: "정열창님", userId: "835200", startDt: "2023.10.25")
                    HistoryOldView(name: "정용준님", userId: "835282", startDt: "2023.07.29")
                    HistoryOldView(name: "정열창님", userId: "835200", startDt: "2023.06.25")
                    HistoryOldView(name: "정용준님", userId: "835282", startDt: "2023.02.04")
                    HistoryOldView(name: "정열창님", userId: "835200", startDt: "2022.12.25")
                }
                .frame(maxWidth: .infinity)
            }
            .background(Color(hex: "#cccccc"))
        }
    }
}

struct HistoryRecentView: View {
    let name: String
    let userId: String
    let startDt: String
    let lastReportDt: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Image(systemName: "person.fill")
                .font(.system(size: 20))
                .foregroundStyle(Color(hex:"#555555"))
            
            Spacer().frame(width: 15)
            
            VStack(alignment: .leading, spacing: 0) {
                Text("\(name) 사용 중 (\(userId))")
                    .font(.system(size: 18))
                    .lineLimit(1)
                Spacer().frame(height:3)
                Text("\(startDt) 사용 시작")
                    .font(.system(size: 15))
                    .foregroundStyle(Color(hex:"#333333"))
                    .lineLimit(1)
                Text("\(lastReportDt) 마지막 생존신고")
                    .font(.system(size: 15))
                    .foregroundStyle(Color(hex:"#ee2222"))
                    .lineLimit(1)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
        .padding(15)
        .background(.white)
    }
}

struct HistoryOldView: View {
    let name: String
    let userId: String
    let startDt: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Image(systemName: "person.fill")
                .font(.system(size: 20))
                .foregroundStyle(Color(hex:"#555555"))
            
            Spacer().frame(width: 15)
            
            VStack(alignment: .leading, spacing: 0) {
                Text("\(name) 사용 (\(userId))")
                    .font(.system(size: 18))
                    .lineLimit(1)
                Spacer().frame(height:3)
                Text("\(startDt) 사용 시작")
                    .font(.system(size: 15))
                    .foregroundStyle(Color(hex:"#333333"))
                    .lineLimit(1)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
        .padding(15)
        .background(.white)
    }
}

#Preview {
    HistoryView()
}
