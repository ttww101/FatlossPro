//
//  LCDatabase.swift
//  FitnessProMan
//
//  Created by Apple on 7/30/19.
//  Copyright © 2019 YaorongHuang. All rights reserved.
//

import Foundation
import LeanCloud

class LCDatabase {
    static let shared = LCDatabase()
    let userDefault = UserDefaults.standard
    var objectId = ""
    
    private init() {
        
    }
    
    func configure() {
        do {
            try LCApplication.default.set(
                id:  "Pzz0RrKcAMt6DUwkcSbo8UD8-MdYXbMMI",
                key: "62GQmzjiDskkrOomYHyWBiqO"
            )
        } catch {
            print("")
        }
    }
    
    func getPrivacy(completion: @escaping (PolicyModel?, Error?) -> Void) {
        let query = LCQuery(className: "Policy")
        let _ = query.getFirst { (result) in
            switch result {
            case .success(object: let object):
                // get value by string key
                guard let title = object.get("title")?.stringValue else {
                    completion(nil, nil)
                    return
                }
                guard let privacy = object.get("policy_address")?.stringValue else {
                    completion(nil, nil)
                    return
                }
                let beginModel = PolicyModel(title: title, privacy: privacy)
                completion(beginModel, nil)
            case .failure(error: let error):
                completion(nil, error)
            }
        }
    }
}
