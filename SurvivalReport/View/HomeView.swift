//
//  HomeView.swift
//  SurvivalReport
//
//  Created by yongjun18 on 2/21/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            TitleBar(title: "홈")
            ScrollView {
                VStack(spacing: 5) {
                    HomeUserInfoView()
                    HomeDeviceInfoView()
                    HomeMyDeviceView()
                    HomeAllDeviceView()
                }
                .frame(maxWidth: .infinity)
            }
            .background(Color(hex: "#cccccc"))
        }
    }
}

struct HomeUserInfoView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Image(systemName: "person.circle")
                .font(.system(size: 40))
                .foregroundStyle(Color(hex:"#555555"))
            
            Spacer().frame(width: 15)
            
            VStack(alignment: .leading, spacing: 0) {
                Text("정용준님 사용 중 (835282)")
                    .font(.system(size: 18))
                    .lineLimit(1)
                Spacer().frame(height:3)
                Text("AM 2팀")
                    .font(.system(size: 16))
                    .foregroundStyle(Color(hex:"#333333"))
                    .lineLimit(1)
                Text("제일제당 mSFA 앱 운영")
                    .font(.system(size: 16))
                    .foregroundStyle(Color(hex:"#333333"))
                    .lineLimit(1)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
        .padding(15)
        .background(.white)
    }
}

struct HomeDeviceInfoView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Image(systemName: "iphone.gen1.circle")
                .font(.system(size: 40))
                .foregroundStyle(Color(hex:"#555555"))
            
            Spacer().frame(width: 15)
            
            VStack(alignment: .leading, spacing: 0) {
                Text("iPhone 13 Pro Max")
                    .font(.system(size: 18))
                    .lineLimit(1)
                Spacer().frame(height:3)
                Text("ONIT-M46")
                    .font(.system(size: 16))
                    .foregroundStyle(Color(hex:"#333333"))
                    .lineLimit(1)
                Text("iOS 16.6.1")
                    .font(.system(size: 16))
                    .foregroundStyle(Color(hex:"#333333"))
                    .lineLimit(1)
                Text("최근 생존신고 날짜 : 2024.02.21")
                    .font(.system(size: 16))
                    .foregroundStyle(Color(hex:"#333333"))
                    .lineLimit(1)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
        .padding(15)
        .background(.white)
    }
}

struct HomeMyDeviceView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("현재 보유 중인 기기")
                .font(.system(size: 17))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
            
            Spacer().frame(height:10)
            
            HStack {
                Text("iPhone 13 Pro Max").lineLimit(1)
                Spacer()
                Text("ONIT-M46").lineLimit(1)
            }
            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            ForEach(0..<5) { _ in
                Color(hex: "#cccccc").frame(height: 1)
                HStack {
                    Text("iPhone 13 Pro Max").lineLimit(1)
                    Spacer()
                    Text("ONIT-M46").lineLimit(1)
                }
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            }
        }
        .padding(15)
        .background(.white)
    }
}

struct HomeAllDeviceView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("모든 기기")
                .font(.system(size: 17))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
            
            Spacer().frame(height:10)
            
            HStack {
                Text("갤럭시 S7").lineLimit(1)
                Spacer()
                Text("정열창님 사용 중").lineLimit(1)
            }
            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            ForEach(0..<5) { _ in
                Color(hex: "#cccccc").frame(height: 1)
                HStack {
                    Text("갤럭시 S7").lineLimit(1)
                    Spacer()
                    Text("정열창님 사용 중").lineLimit(1)
                }
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            }
        }
        .padding(15)
        .background(.white)
    }
}


struct TitleBar: View {
    let title: String
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text(title)
                    .font(.system(size: 22))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 5, trailing: 0))
                Spacer()
            }
            Color.gray.frame(height: 1)
        }
    }
}

#Preview {
    HomeView()
}
