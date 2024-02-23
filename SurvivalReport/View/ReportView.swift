//
//  ReportView.swift
//  SurvivalReport
//
//  Created by yongjun18 on 2/21/24.
//

import SwiftUI

struct ReportView: View {
    @StateObject var reportViewModel = ReportViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            TitleBar(title: "생존신고")
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    Text("사번")
                        .font(.system(size: 16))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    TextField("사번을 입력하세요", text: $reportViewModel.reportModel.userId)
                        .font(.system(size: 14))
                        .padding(13)
                        .background(Color(uiColor: .secondarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    Spacer().frame(height: 10)
                    
                    Text("이름")
                        .font(.system(size: 16))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    TextField("이름을 입력하세요", text: $reportViewModel.reportModel.name)
                        .font(.system(size: 14))
                        .padding(13)
                        .background(Color(uiColor: .secondarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    Spacer().frame(height: 10)
                    
                    Text("소속팀")
                        .font(.system(size: 16))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    TextField("소속팀을 입력하세요", text: $reportViewModel.reportModel.team)
                        .font(.system(size: 14))
                        .padding(13)
                        .background(Color(uiColor: .secondarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    Spacer().frame(height: 10)
                    
                    Text("사용 용도")
                        .font(.system(size: 16))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    TextField("사용 용도를 입력하세요", text: $reportViewModel.reportModel.purpose)
                        .font(.system(size: 14))
                        .padding(13)
                        .background(Color(uiColor: .secondarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .padding(20)
            }
            
            Color.gray.frame(height: 1)
            Button(action: {
                reportViewModel.submitReport()
            }, label: {
                Text("전송")
                    .frame(height: 40)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(Color.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 3))
            })
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .alert("생존신고", isPresented: $reportViewModel.alertPresented, actions: {
                Button("취소") { reportViewModel.alertPresented = false }
                Button("확인") { reportViewModel.alertPresented = false }
            }, message: {
                Text("생존신고를 전송하시겠습니까?")
            })
            
        }
    }
}

#Preview {
    ReportView()
}
