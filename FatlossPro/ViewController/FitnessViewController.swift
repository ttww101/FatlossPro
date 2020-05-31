//
//  FitnessViewController.swift
//  FitnessProMan
//
//  Created by SYBM on 2018/9/19.
//  Copyright © 2019年 YaorongHuang. All rights reserved.
//

import UIKit
import UserNotifications
import Firebase

class FitnessViewController: UIViewController {
    
    private let cellIdenfifier = String(describing: FitnessViewCell.self)
    @IBOutlet weak var fitnessTableview: UITableView!

// MARK: - initView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fitnessTableview.separatorStyle = UITableViewCell.SeparatorStyle.none
        fitnessTableview.delegate = self
        fitnessTableview.dataSource = self
        
        navigationController?.navigationBar.isHidden = false
        
//        FirebaseManager.instance.loadData(address: "allAction")
       
 
  //      FirebaseManager.instance.getQuery(category: .arm)
    //    FirebaseManager.instance.getQuery(category: .leg)
        
//
//        let jsonEncoder = JSONEncoder()
//
//        let jsonData = try? jsonEncoder.encode(LocaolDatabase.instance.getAbs())
//
//        let jsonString = String(data: jsonData!, encoding: .utf8)!
//        print(jsonString)
        
    //    FirebaseManager.instance.updateData(path: "actionData", event: .create, value: ["allAction" : jsonData])
        checkHealth()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
//        GAManager.createNormalScreenEventWith("FitnessViewController")
        viewWillLayoutSubviews()
        
    }
    
    func checkHealth() {
        if let appleHealth = UserDefaults.standard.value(forKey: "appleHealth") as? Bool {
            if !appleHealth {
                healthAlert()
            }
        } else {
            healthAlert()
        }
    }
    
    func healthAlert() {
        let alert = UIAlertController(title: "Apple Health", message: "连结App Health记录您的每一天！", preferredStyle: .alert)
        let action = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let action2 = UIAlertAction(title: "前往设定", style: .destructive) { (action) in
            self.tabBarController?.selectedIndex = 2
        }
        alert.addAction(action)
        alert.addAction(action2)
        self.present(alert, animated: true, completion: nil)
    }
}

// MARK: - Table view delegate

extension FitnessViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //1. set the initaial state of the cell
        let transform = CATransform3DTranslate(CATransform3DIdentity, -250, 0, 0)
        
            cell.layer.transform = transform
        
        //2. UIView animation method to chang to the final state of the cell
        UIView.animate(withDuration: 0.3) {
            cell.layer.transform = CATransform3DIdentity
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return fitnessTableview.frame.size.height / 2
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//        if FirebaseManager.instance.alllistModelFromFirebase.count == 0 {
//
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//
//                if FirebaseManager.instance.alllistModelFromFirebase.count != 0 {
//
//                    let list = LocaolDatabase.instance.getfitCategories()[indexPath.row]
//                    self.performSegue(withIdentifier: "toListViewController", sender: list)
//
//                }
//            }
//
//        } else {
        
            let list = LocaolDatabase.instance.getfitCategories()[indexPath.row]
            performSegue(withIdentifier: "toListViewController", sender: list)
            
//        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let listViewController = segue.destination as? ListViewController {
            
            listViewController.initList(category: (sender as? FitnessModel)!)
            
        }
    }
    
}

// MARK: - Table view data source

extension FitnessViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return LocaolDatabase.instance.getfitCategories().count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = fitnessTableview.dequeueReusableCell(withIdentifier: cellIdenfifier ) as? FitnessViewCell {
            
            let category = LocaolDatabase.instance.getfitCategories()[indexPath.row]
            cell.updataViews(fitnessCategory: FitnessViewCellModel(category: category))
        
            cell.selectionStyle = .none
        
            return cell
            
        } else {
            
            return FitnessViewCell()
        }
    }
}
