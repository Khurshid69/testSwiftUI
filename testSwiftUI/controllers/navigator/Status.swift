//
//  Status.swift
//  testSwiftUI
//
//  Created by user on 09/12/21.
//

import Foundation
import Combine

class Status: ObservableObject {
    var didChange = PassthroughSubject<Status, Never>()
    @Published var userId: String? {didSet {self.didChange.send(self)}}
    
    func listen(){
        if let userId = UserDefaults.standard.string(forKey: "userId"){
            self.userId = userId
        }else{
            self.userId = nil
        }
    }
}
