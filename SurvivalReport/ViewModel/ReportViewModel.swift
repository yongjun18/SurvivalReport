//
//  ReportViewModel.swift
//  SurvivalReport
//
//  Created by yongjun18 on 2/22/24.
//

import Foundation

class ReportViewModel: ObservableObject {
    @Published var reportModel = ReportModel()
    @Published var alertPresented: Bool = false
    
    func submitReport() {
        alertPresented = true
    }
}
