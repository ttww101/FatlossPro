//
//  PolicyVC.swift
//  FatlossPro
//
//  Created by Apple on 2019/11/7.
//  Copyright © 2019 YaorongHuang. All rights reserved.
//

import UIKit

struct PolicyModel {
    var title: String
    var privacy: String
}

class PolicyVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        // Do any additional setup after loading the view.
    }
    
    func getData() {
        LCDatabase.shared.getPrivacy {[weak self] (result, error) in
            guard let data = result else { self?.toBeginVC(); return}
            let pWebVC = PolicyDetailView(policytitle: data.title, policyU: [data.privacy])
            pWebVC.setPDVCall(emwkwe: "", vkwe: "", cvkmw: "", asfmkw: {
                self?.toBeginVC()
            })
            self?.present(pWebVC, animated: true, completion: nil)
        }
    }
    
    func toBeginVC() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        UIApplication.shared.keyWindow?.rootViewController = storyboard.instantiateInitialViewController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
}
