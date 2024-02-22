//
//  TabBarModel.swift
//  SurvivalReport
//
//  Created by yongjun18 on 2/22/24.
//

import Foundation

enum Tab {
    case home, history, report, setting
    var name: String {
        switch self {
        case .home: return "홈"
        case .history: return "기록"
        case .report: return "생존신고"
        case .setting: return "설정"
        }
    }
    var imageString: String {
        switch self {
        case .home: return "house"
        case .history: return "doc.text"
        case .report: return "hand.raised"
        case .setting: return "gearshape"
        }
    }
}
