//
//  PolicyDetailView.swift
//  FatlossPro
//
//  Created by Apple on 2019/11/7.
//  Copyright © 2019 YaorongHuang. All rights reserved.
//

import Foundation
import UIKit
import WebKit

let titleBarColorpdv:UIColor = .white
let bottomBarColorpdv:UIColor = .white
let titleFontpdv:UIFont = UIFont.boldSystemFont(ofSize: CGFloat(18))
let titleTextColorpdv:UIColor = .black
let windowMaskColorpdv:UIColor = UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 0.75)
let btnBackgroundColorpdv:UIColor = .white
let btnOnLineColorpdv:UIColor = UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 0.68)
//let btnOnLineColorpdv:UIColor = .init(red: 230/255, green: 57/255, blue: 70/255, alpha: 1.0)
let btnOffLineColorpdv:UIColor = .lightGray

class PolicyDetailView: UIViewController, WKNavigationDelegate {
    
    var wkWebViewpdv:WKWebView!
    var backBtnpdv:UIButton!
    var forwardBtnpdv:UIButton!
    var titleDescpdv:String = " "
    var isInitpdv = false
    var multiUrlpdv:[String] = [String]()
    var backUrlpdv:String?
    var callbackpdv: (() -> Void)?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(policytitle:String, policyU:[String]?) {
        super.init(nibName: nil, bundle: nil)
        self.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        titleDescpdv = policytitle
        if (policyU != nil) {
            multiUrlpdv = policyU!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainViewpdv = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        self.view.addSubview(mainViewpdv)
        mainViewpdv.translatesAutoresizingMaskIntoConstraints = false
        mainViewpdv.backgroundColor = windowMaskColorpdv
        
        let leftViewpdv = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        mainViewpdv.addSubview(leftViewpdv)
        leftViewpdv.translatesAutoresizingMaskIntoConstraints = false
        leftViewpdv.backgroundColor = UIColor.clear
        
        let rightViewpdv = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        mainViewpdv.addSubview(rightViewpdv)
        rightViewpdv.translatesAutoresizingMaskIntoConstraints = false
        rightViewpdv.backgroundColor = UIColor.clear
        
        let topViewpdv = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        mainViewpdv.addSubview(topViewpdv)
        topViewpdv.translatesAutoresizingMaskIntoConstraints = false
        topViewpdv.backgroundColor = UIColor.clear
        
        let bottmViewpdv = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        mainViewpdv.addSubview(bottmViewpdv)
        bottmViewpdv.translatesAutoresizingMaskIntoConstraints = false
        bottmViewpdv.backgroundColor = UIColor.clear
        
        let titleViewpdv = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        mainViewpdv.addSubview(titleViewpdv)
        titleViewpdv.translatesAutoresizingMaskIntoConstraints = false
        titleViewpdv.clipsToBounds = true
        titleViewpdv.backgroundColor = titleBarColorpdv
        
        let toolsViewpdv = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        mainViewpdv.addSubview(toolsViewpdv)
        toolsViewpdv.translatesAutoresizingMaskIntoConstraints = false
        toolsViewpdv.backgroundColor = bottomBarColorpdv
        
        wkWebViewpdv = WKWebView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        mainViewpdv.addSubview(wkWebViewpdv)
        wkWebViewpdv.translatesAutoresizingMaskIntoConstraints = false
        wkWebViewpdv.backgroundColor = UIColor.groupTableViewBackground
        
        let titleLabelpdv = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        titleViewpdv.addSubview(titleLabelpdv)
        titleLabelpdv.translatesAutoresizingMaskIntoConstraints = false
        titleLabelpdv.numberOfLines = 1
        titleLabelpdv.backgroundColor = UIColor.clear
        titleLabelpdv.font = titleFontpdv
        titleLabelpdv.textAlignment = NSTextAlignment.center
        
        let homeBtnpdv = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        toolsViewpdv.addSubview(homeBtnpdv)
        homeBtnpdv.translatesAutoresizingMaskIntoConstraints = false
        homeBtnpdv.backgroundColor = btnBackgroundColorpdv
        
        homeBtnpdv.imageView?.contentMode = .scaleAspectFit
        homeBtnpdv.setContentHuggingPriority(UILayoutPriority(rawValue: 100), for: NSLayoutConstraint.Axis.vertical)
        homeBtnpdv.setContentHuggingPriority(UILayoutPriority(rawValue: 100), for: NSLayoutConstraint.Axis.horizontal)
        homeBtnpdv.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 50), for: NSLayoutConstraint.Axis.vertical)
        homeBtnpdv.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 50), for: NSLayoutConstraint.Axis.horizontal)
        
        homeBtnpdv.imageView?.contentMode = .scaleAspectFit
        homeBtnpdv.setImage(getNaviHomeLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOnLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.normal)
        homeBtnpdv.setImage(getNaviHomeLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOffLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.highlighted)
        
        backBtnpdv = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        toolsViewpdv.addSubview(backBtnpdv)
        backBtnpdv.translatesAutoresizingMaskIntoConstraints = false
        backBtnpdv.backgroundColor = btnBackgroundColorpdv
        
        backBtnpdv.imageView?.contentMode = .scaleAspectFit
        backBtnpdv.setContentHuggingPriority(UILayoutPriority(rawValue: 100), for: NSLayoutConstraint.Axis.vertical)
        backBtnpdv.setContentHuggingPriority(UILayoutPriority(rawValue: 100), for: NSLayoutConstraint.Axis.horizontal)
        backBtnpdv.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 50), for: NSLayoutConstraint.Axis.vertical)
        backBtnpdv.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 50), for: NSLayoutConstraint.Axis.horizontal)
        
        backBtnpdv.imageView?.contentMode = .scaleAspectFit
        backBtnpdv.setImage(getNaviBackLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOnLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.normal)
        backBtnpdv.setImage(getNaviBackLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOffLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.highlighted)
        
        forwardBtnpdv = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        toolsViewpdv.addSubview(forwardBtnpdv)
        forwardBtnpdv.translatesAutoresizingMaskIntoConstraints = false
        forwardBtnpdv.backgroundColor = btnBackgroundColorpdv
        
        forwardBtnpdv.imageView?.contentMode = .scaleAspectFit
        forwardBtnpdv.setContentHuggingPriority(UILayoutPriority(rawValue: 100), for: NSLayoutConstraint.Axis.vertical)
        forwardBtnpdv.setContentHuggingPriority(UILayoutPriority(rawValue: 100), for: NSLayoutConstraint.Axis.horizontal)
        forwardBtnpdv.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 50), for: NSLayoutConstraint.Axis.vertical)
        forwardBtnpdv.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 50), for: NSLayoutConstraint.Axis.horizontal)
        
        forwardBtnpdv.imageView?.contentMode = .scaleAspectFit
        forwardBtnpdv.setImage(getNaviForwardLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOnLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.normal)
        forwardBtnpdv.setImage(getNaviForwardLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOffLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.highlighted)
        
        
        let refreshBtnpdv = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        toolsViewpdv.addSubview(refreshBtnpdv)
        refreshBtnpdv.translatesAutoresizingMaskIntoConstraints = false
        refreshBtnpdv.backgroundColor = btnBackgroundColorpdv
        
        refreshBtnpdv.imageView?.contentMode = .scaleAspectFit
        refreshBtnpdv.setContentHuggingPriority(UILayoutPriority(rawValue: 100), for: NSLayoutConstraint.Axis.vertical)
        refreshBtnpdv.setContentHuggingPriority(UILayoutPriority(rawValue: 100), for: NSLayoutConstraint.Axis.horizontal)
        refreshBtnpdv.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 50), for: NSLayoutConstraint.Axis.vertical)
        refreshBtnpdv.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 50), for: NSLayoutConstraint.Axis.horizontal)
        
        refreshBtnpdv.imageView?.contentMode = .scaleAspectFit
        refreshBtnpdv.setImage(getNaviRefreshLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOnLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.normal)
        refreshBtnpdv.setImage(getNaviRefreshLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOffLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.highlighted)
        
        
        let exitBtnpdv = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        toolsViewpdv.addSubview(exitBtnpdv)
        exitBtnpdv.translatesAutoresizingMaskIntoConstraints = false
        exitBtnpdv.backgroundColor = btnBackgroundColorpdv
        
        exitBtnpdv.imageView?.contentMode = .scaleAspectFit
        exitBtnpdv.setContentHuggingPriority(UILayoutPriority(rawValue: 100), for: NSLayoutConstraint.Axis.vertical)
        exitBtnpdv.setContentHuggingPriority(UILayoutPriority(rawValue: 100), for: NSLayoutConstraint.Axis.horizontal)
        exitBtnpdv.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 50), for: NSLayoutConstraint.Axis.vertical)
        exitBtnpdv.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 50), for: NSLayoutConstraint.Axis.horizontal)
        
        exitBtnpdv.imageView?.contentMode = .scaleAspectFit
        exitBtnpdv.setImage(getNaviExitLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOnLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.normal)
        exitBtnpdv.setImage(getNaviExitLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOffLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.highlighted)
        
        let linview = UIView()
        linview.backgroundColor = .lightGray
        toolsViewpdv.addSubview(linview)
        linview.translatesAutoresizingMaskIntoConstraints = false
        linview.topAnchor.constraint(equalTo: toolsViewpdv.topAnchor).isActive = true
        linview.leadingAnchor.constraint(equalTo: toolsViewpdv.leadingAnchor).isActive = true
        linview.trailingAnchor.constraint(equalTo: toolsViewpdv.trailingAnchor).isActive = true
        linview.bottomAnchor.constraint(equalTo: toolsViewpdv.topAnchor, constant: 0.3).isActive = true
        
        let closeBtnpdv = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        toolsViewpdv.addSubview(closeBtnpdv)
        closeBtnpdv.translatesAutoresizingMaskIntoConstraints = false
        closeBtnpdv.backgroundColor = titleBarColorpdv
        closeBtnpdv.imageView?.contentMode = .scaleAspectFit
        closeBtnpdv.setImage(getNaviExitLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: titleTextColorpdv, backgroundColorpdv: .clear), for: UIControl.State.normal)
        closeBtnpdv.setImage(getNaviExitLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOffLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.highlighted)
        
        let titleLabelHeightpdv = NSLayoutConstraint(item: titleLabelpdv,
                                                        attribute: .height,
                                                        relatedBy: .equal,
                                                        toItem: nil,
                                                        attribute: .notAnAttribute,
                                                        multiplier: 1.0,
                                                        constant: 21.0)
        titleLabelHeightpdv.priority = UILayoutPriority(rawValue: 249)
        titleLabelpdv.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: NSLayoutConstraint.Axis.vertical)
        titleLabelpdv.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 750), for: NSLayoutConstraint.Axis.vertical)
        
        titleLabelpdv.setContentHuggingPriority(UILayoutPriority(rawValue: 50), for: NSLayoutConstraint.Axis.horizontal)
        titleLabelpdv.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 50), for: NSLayoutConstraint.Axis.horizontal)
        
        titleLabelpdv.addConstraint(titleLabelHeightpdv)
        
        
        titleViewpdv.addConstraints([NSLayoutConstraint(item: titleLabelpdv,
                                                           attribute: NSLayoutConstraint.Attribute.centerY,
                                                           relatedBy: .equal,
                                                           toItem: titleViewpdv,
                                                           attribute: .centerY,
                                                           multiplier: 1.0,
                                                           constant: 0.0),
                                        NSLayoutConstraint(item: titleLabelpdv,
                                                           attribute: .trailing,
                                                           relatedBy: .equal,
                                                           toItem: titleViewpdv,
                                                           attribute: .trailing,
                                                           multiplier: 1.0,
                                                           constant: 0.0),
                                        NSLayoutConstraint(item: titleLabelpdv,
                                                           attribute: .leading,
                                                           relatedBy: .equal,
                                                           toItem: titleViewpdv,
                                                           attribute: .leading,
                                                           multiplier: 1.0,
                                                           constant: 0.0),
                                        NSLayoutConstraint(item: titleLabelpdv,
                                                           attribute: .height,
                                                           relatedBy: .equal,
                                                           toItem: titleViewpdv,
                                                           attribute: .height,
                                                           multiplier: 0.5,
                                                           constant: 0.0)])
        
        self.view.addConstraints([NSLayoutConstraint(item: mainViewpdv,
                                                     attribute: .leading,
                                                     relatedBy: .equal,
                                                     toItem: self.view,
                                                     attribute: .leading,
                                                     multiplier: 1.0,
                                                     constant: 0.0),
                                  NSLayoutConstraint(item: mainViewpdv,
                                                     attribute: .top,
                                                     relatedBy: .equal,
                                                     toItem: self.topLayoutGuide,
                                                     attribute: .bottom,
                                                     multiplier: 1.0,
                                                     constant: 0.0),
                                  NSLayoutConstraint(item: mainViewpdv,
                                                     attribute: .trailing,
                                                     relatedBy: .equal,
                                                     toItem: self.view,
                                                     attribute: .trailing,
                                                     multiplier: 1.0,
                                                     constant: 0.0),
                                  NSLayoutConstraint(item: mainViewpdv,
                                                     attribute: .bottom,
                                                     relatedBy: .equal,
                                                     toItem: self.bottomLayoutGuide,
                                                     attribute: .top,
                                                     multiplier: 1.0,
                                                     constant: 0.0)])
        
        mainViewpdv.addConstraints([NSLayoutConstraint(item: leftViewpdv,
                                                          attribute: .leading,
                                                          relatedBy: .equal,
                                                          toItem: mainViewpdv,
                                                          attribute: .leading,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: leftViewpdv,
                                                          attribute: .top,
                                                          relatedBy: .equal,
                                                          toItem: mainViewpdv,
                                                          attribute: .top,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: leftViewpdv,
                                                          attribute: .bottom,
                                                          relatedBy: .equal,
                                                          toItem: mainViewpdv,
                                                          attribute: .bottom,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: leftViewpdv,
                                                          attribute: .trailing,
                                                          relatedBy: .equal,
                                                          toItem: bottmViewpdv,
                                                          attribute: .leading,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: leftViewpdv,
                                                          attribute: .trailing,
                                                          relatedBy: .equal,
                                                          toItem: toolsViewpdv,
                                                          attribute: .leading,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: leftViewpdv,
                                                          attribute: .trailing,
                                                          relatedBy: .equal,
                                                          toItem: wkWebViewpdv,
                                                          attribute: .leading,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: leftViewpdv,
                                                          attribute: .trailing,
                                                          relatedBy: .equal,
                                                          toItem: titleViewpdv,
                                                          attribute: .leading,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: leftViewpdv,
                                                          attribute: .trailing,
                                                          relatedBy: .equal,
                                                          toItem: topViewpdv,
                                                          attribute: .leading,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: leftViewpdv, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: titleViewpdv, attribute: NSLayoutConstraint.Attribute.height, multiplier: 0.5, constant: 0),
                                       NSLayoutConstraint(item: rightViewpdv,
                                                          attribute: .trailing,
                                                          relatedBy: .equal,
                                                          toItem: mainViewpdv,
                                                          attribute: .trailing,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: rightViewpdv,
                                                          attribute: .bottom,
                                                          relatedBy: .equal,
                                                          toItem: mainViewpdv,
                                                          attribute: .bottom,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: rightViewpdv,
                                                          attribute: .top,
                                                          relatedBy: .equal,
                                                          toItem: mainViewpdv,
                                                          attribute: .top,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: rightViewpdv,
                                                          attribute: .leading,
                                                          relatedBy: .equal,
                                                          toItem: bottmViewpdv,
                                                          attribute: .trailing,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: rightViewpdv,
                                                          attribute: .leading,
                                                          relatedBy: .equal,
                                                          toItem: topViewpdv,
                                                          attribute: .trailing,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: rightViewpdv,
                                                          attribute: .leading,
                                                          relatedBy: .equal,
                                                          toItem: toolsViewpdv,
                                                          attribute: .trailing,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: rightViewpdv,
                                                          attribute: .leading,
                                                          relatedBy: .equal,
                                                          toItem: titleViewpdv,
                                                          attribute: .trailing,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: rightViewpdv,
                                                          attribute: .leading,
                                                          relatedBy: .equal,
                                                          toItem: wkWebViewpdv,
                                                          attribute: .trailing,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: rightViewpdv, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: titleViewpdv, attribute: NSLayoutConstraint.Attribute.height, multiplier: 0.5, constant: 0),
                                       NSLayoutConstraint(item: topViewpdv,
                                                          attribute: .top,
                                                          relatedBy: .equal,
                                                          toItem: mainViewpdv,
                                                          attribute: .top,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: topViewpdv,
                                                          attribute: .bottom,
                                                          relatedBy: .equal,
                                                          toItem: titleViewpdv,
                                                          attribute: .top,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: topViewpdv, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: titleViewpdv, attribute: NSLayoutConstraint.Attribute.height, multiplier: 1.5, constant: 0),
                                       NSLayoutConstraint(item: bottmViewpdv,
                                                          attribute: .bottom,
                                                          relatedBy: .equal,
                                                          toItem: mainViewpdv,
                                                          attribute: .bottom,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: bottmViewpdv,
                                                          attribute: .top,
                                                          relatedBy: .equal,
                                                          toItem: toolsViewpdv,
                                                          attribute: .bottom,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: bottmViewpdv, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: titleViewpdv, attribute: NSLayoutConstraint.Attribute.height, multiplier: 1.5, constant: 0),
                                       NSLayoutConstraint(item: titleViewpdv,
                                                          attribute: .bottom,
                                                          relatedBy: .equal,
                                                          toItem: wkWebViewpdv,
                                                          attribute: .top,
                                                          multiplier: 1.0,
                                                          constant: 0.0),
                                       NSLayoutConstraint(item: toolsViewpdv,
                                                          attribute: .top,
                                                          relatedBy: .equal,
                                                          toItem: wkWebViewpdv,
                                                          attribute: .bottom,
                                                          multiplier: 1.0,
                                                          constant: 0.0)])
        
        
        
        toolsViewpdv.addConstraints([NSLayoutConstraint(item: closeBtnpdv,
                                                           attribute: .leading,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .leading,
                                                           multiplier: 1.0,
                                                           constant: 0.0),
                                        NSLayoutConstraint(item: closeBtnpdv,
                                                           attribute: .top,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .top,
                                                           multiplier: 1.0,
                                                           constant: 0.0),
                                        NSLayoutConstraint(item: closeBtnpdv,
                                                           attribute: .trailing,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .trailing,
                                                           multiplier: 1.0,
                                                           constant: 0.0),
                                        NSLayoutConstraint(item: closeBtnpdv,
                                                           attribute: .bottom,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .bottom,
                                                           multiplier: 1.0,
                                                           constant: 0.0),
                                        NSLayoutConstraint(item: toolsViewpdv,
                                                           attribute: .height,
                                                           relatedBy: .equal,
                                                           toItem: nil,
                                                           attribute: .notAnAttribute,
                                                           multiplier: 1.0,
                                                           constant: 44.0),
                                        NSLayoutConstraint(item: homeBtnpdv,
                                                           attribute: .leading,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .leading,
                                                           multiplier: 1.0,
                                                           constant: 5.0),
                                        NSLayoutConstraint(item: homeBtnpdv,
                                                           attribute: .bottom,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .bottom,
                                                           multiplier: 1.0,
                                                           constant: -5.0),
                                        NSLayoutConstraint(item: homeBtnpdv,
                                                           attribute: .top,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .top,
                                                           multiplier: 1.0,
                                                           constant: 5.0),
                                        NSLayoutConstraint(item: homeBtnpdv,
                                                           attribute: .trailing,
                                                           relatedBy: .equal,
                                                           toItem: backBtnpdv,
                                                           attribute: .leading,
                                                           multiplier: 1.0,
                                                           constant: -5.0),
                                        NSLayoutConstraint(item: homeBtnpdv,
                                                           attribute: .width,
                                                           relatedBy: .equal,
                                                           toItem: backBtnpdv,
                                                           attribute: .width,
                                                           multiplier: 1.0,
                                                           constant: 0.0),
                                        NSLayoutConstraint(item: homeBtnpdv,
                                                           attribute: .width,
                                                           relatedBy: .equal,
                                                           toItem: forwardBtnpdv,
                                                           attribute: .width,
                                                           multiplier: 1.0,
                                                           constant: 0.0),
                                        NSLayoutConstraint(item: homeBtnpdv,
                                                           attribute: .width,
                                                           relatedBy: .equal,
                                                           toItem: refreshBtnpdv,
                                                           attribute: .width,
                                                           multiplier: 1.0,
                                                           constant: 0.0),
                                        NSLayoutConstraint(item: homeBtnpdv,
                                                           attribute: .width,
                                                           relatedBy: .equal,
                                                           toItem: exitBtnpdv,
                                                           attribute: .width,
                                                           multiplier: 1.0,
                                                           constant: 0.0),
                                        NSLayoutConstraint(item: backBtnpdv,
                                                           attribute: .bottom,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .bottom,
                                                           multiplier: 1.0,
                                                           constant: -5.0),
                                        NSLayoutConstraint(item: backBtnpdv,
                                                           attribute: .top,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .top,
                                                           multiplier: 1.0,
                                                           constant: 5.0),
                                        NSLayoutConstraint(item: backBtnpdv,
                                                           attribute: .trailing,
                                                           relatedBy: .equal,
                                                           toItem: forwardBtnpdv,
                                                           attribute: .leading,
                                                           multiplier: 1.0,
                                                           constant: -5.0),
                                        NSLayoutConstraint(item: forwardBtnpdv,
                                                           attribute: .bottom,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .bottom,
                                                           multiplier: 1.0,
                                                           constant: -5.0),
                                        NSLayoutConstraint(item: forwardBtnpdv,
                                                           attribute: .top,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .top,
                                                           multiplier: 1.0,
                                                           constant: 5.0),
                                        NSLayoutConstraint(item: forwardBtnpdv,
                                                           attribute: .trailing,
                                                           relatedBy: .equal,
                                                           toItem: refreshBtnpdv,
                                                           attribute: .leading,
                                                           multiplier: 1.0,
                                                           constant: -5.0),
                                        NSLayoutConstraint(item: refreshBtnpdv,
                                                           attribute: .bottom,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .bottom,
                                                           multiplier: 1.0,
                                                           constant: -5.0),
                                        NSLayoutConstraint(item: refreshBtnpdv,
                                                           attribute: .top,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .top,
                                                           multiplier: 1.0,
                                                           constant: 5.0),
                                        NSLayoutConstraint(item: refreshBtnpdv,
                                                           attribute: .trailing,
                                                           relatedBy: .equal,
                                                           toItem: exitBtnpdv,
                                                           attribute: .leading,
                                                           multiplier: 1.0,
                                                           constant: -5.0),
                                        NSLayoutConstraint(item: exitBtnpdv,
                                                           attribute: .bottom,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .bottom,
                                                           multiplier: 1.0,
                                                           constant: -5.0),
                                        NSLayoutConstraint(item: exitBtnpdv,
                                                           attribute: .top,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .top,
                                                           multiplier: 1.0,
                                                           constant: 5.0),
                                        NSLayoutConstraint(item: exitBtnpdv,
                                                           attribute: .trailing,
                                                           relatedBy: .equal,
                                                           toItem: toolsViewpdv,
                                                           attribute: .trailing,
                                                           multiplier: 1.0,
                                                           constant: -5.0)])
        
        self.view.layoutIfNeeded()
        
        titleViewpdv.backgroundColor = titleBarColorpdv
        titleLabelpdv.textColor = titleTextColorpdv
        toolsViewpdv.backgroundColor = bottomBarColorpdv
        homeBtnpdv.backgroundColor = btnBackgroundColorpdv
        backBtnpdv.backgroundColor = btnBackgroundColorpdv
        forwardBtnpdv.backgroundColor = btnBackgroundColorpdv
        refreshBtnpdv.backgroundColor = btnBackgroundColorpdv
        exitBtnpdv.backgroundColor = btnBackgroundColorpdv
        closeBtnpdv.backgroundColor = titleBarColorpdv
        
        titleLabelpdv.text = titleDescpdv
        if (titleLabelpdv.text!.count > 0) {
            toolsViewpdv.backgroundColor = titleBarColorpdv
            closeBtnpdv.isHidden = false
        } else {
            toolsViewpdv.backgroundColor = bottomBarColorpdv
            closeBtnpdv.isHidden = true
        }
        wkWebViewpdv.navigationDelegate = self
        
        homeBtnpdv.addTarget(self, action: #selector(homeBtnClickpdv(sender:)), for: UIControl.Event.touchUpInside)
        
        forwardBtnpdv.addTarget(self, action: #selector(forwardBtnClickpdv(sender:)), for: UIControl.Event.touchUpInside)
        
        backBtnpdv.addTarget(self, action: #selector(backBtnClickpdv(sender:)), for: UIControl.Event.touchUpInside)
        
        refreshBtnpdv.addTarget(self, action: #selector(refreshBtnClickpdv(sender:)), for: UIControl.Event.touchUpInside)
        
        exitBtnpdv.addTarget(self, action: #selector(exitBtnClickpdv(sender:)), for: UIControl.Event.touchUpInside)
        
        closeBtnpdv.addTarget(self, action: #selector(closeBtnClickpdv(sender:)), for: UIControl.Event.touchUpInside)
        
        resetBtnColorpdv(pdvx: nil, pdvy: nil, pdvz: nil)
        
        if (multiUrlpdv.count > 0) {
            isInitpdv = true
            while (multiUrlpdv.count > 0) {
                if let gotoUrlpdv:URL = URL(string: multiUrlpdv[0]) {
                    let requestpdv:URLRequest = URLRequest(url: gotoUrlpdv)
                    self.multiUrlpdv.removeFirst()
                    self.wkWebViewpdv.load(requestpdv)
                    break
                } else {
                    self.multiUrlpdv.removeFirst()
                    if (self.multiUrlpdv.count == 0) {
                        isInitpdv = false
                    }
                }
            }
        }
        
    }
    
    func setPDVCall(emwkwe: String?, vkwe: String?, cvkmw: String?, asfmkw: (() -> Void)?) {
        callbackpdv = asfmkw
    }
    
    func loadMultipdv(pdvx: String?, pdvy: String?, pdvz: String?, urlspdv:[String]) {
        multiUrlpdv = urlspdv
        if (multiUrlpdv.count > 0) {
            while (multiUrlpdv.count > 0) {
                if let gotoUrlpdv:URL = URL(string: multiUrlpdv[0]) {
                    let requestpdv:URLRequest = URLRequest(url: gotoUrlpdv)
                    self.multiUrlpdv.removeFirst()
                    self.wkWebViewpdv.load(requestpdv)
                    break
                } else {
                    self.multiUrlpdv.removeFirst()
                }
            }
        }
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        self.resetBtnColorpdv(pdvx: nil, pdvy: nil, pdvz: nil)
        
        if let urlpdv = navigationAction.request.url {
            
            let htpdv:[Character] = ["h", "-", "t", "-", "t", "-", "p", "-", ":", "-", "/", "-", "/"]
            let htspdv:[Character] = ["h", "-", "t", "-", "t", "-", "p", "-", "s", "-", ":", "-", "/", "-", "/"]
            let ftpdv:[Character] = ["f", "-", "t", "-", "p", "-", ":", "-", "/", "-", "/"]
            
            if (!(urlpdv.absoluteString.hasPrefix(String(htpdv).replacingOccurrences(of: "-", with: "")) || urlpdv.absoluteString.hasPrefix(String(htspdv).replacingOccurrences(of: "-", with: "")) || urlpdv.absoluteString.hasPrefix(String(ftpdv).replacingOccurrences(of: "-", with: "")))) {
                
                decisionHandler(WKNavigationActionPolicy.cancel)
                
                if (self.wkWebViewpdv.backForwardList.backList.count > 0) {
                    backUrlpdv = self.wkWebViewpdv.backForwardList.backList[self.wkWebViewpdv.backForwardList.backList.count - 1].url.absoluteString
                } else {
                    backUrlpdv = nil
                }
                
                UIApplication.shared.open(urlpdv, options: [:], completionHandler: nil)
                return
                
            }
            
        }
        backUrlpdv = nil
        decisionHandler(.allow)
        
        return
        
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        self.resetBtnColorpdv(pdvx: nil, pdvy: nil, pdvz: nil)
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        self.resetBtnColorpdv(pdvx: nil, pdvy: nil, pdvz: nil)
        if (isInitpdv) {
            if (multiUrlpdv.count > 0) {
                while (multiUrlpdv.count > 0) {
                    if let gotoUrlpdv:URL = URL(string: multiUrlpdv[0]) {
                        let requestpdv:URLRequest = URLRequest(url: gotoUrlpdv)
                        self.multiUrlpdv.removeFirst()
                        self.wkWebViewpdv.load(requestpdv)
                        break
                    } else {
                        self.multiUrlpdv.removeFirst()
                        if (self.multiUrlpdv.count == 0) {
                            isInitpdv = false
                        }
                    }
                }
            } else {
                isInitpdv = false
            }
        } else {
            if (multiUrlpdv.count > 0) {
                while (multiUrlpdv.count > 0) {
                    if let gotoUrlpdv:URL = URL(string: multiUrlpdv[0]) {
                        let requestpdv:URLRequest = URLRequest(url: gotoUrlpdv)
                        self.multiUrlpdv.removeFirst()
                        self.wkWebViewpdv.load(requestpdv)
                        break
                    } else {
                        self.multiUrlpdv.removeFirst()
                    }
                }
            }
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.resetBtnColorpdv(pdvx: nil, pdvy: nil, pdvz: nil)
    }
    
    func resetBtnColorpdv(pdvx: String?, pdvy: String?, pdvz: String?) {
        
        DispatchQueue.main.async {
            
            if (self.wkWebViewpdv.canGoBack) {
                self.backBtnpdv.setImage(getNaviBackLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOnLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.normal)
            } else {
                self.backBtnpdv.setImage(getNaviBackLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOffLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.normal)
            }
            
            if (self.wkWebViewpdv.canGoForward) {
                self.forwardBtnpdv.setImage(getNaviForwardLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOnLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.normal)
            } else {
                self.forwardBtnpdv.setImage(getNaviForwardLineImagepdv(pdvx: nil, pdvy: nil, pdvz: nil, imageSizepdv: 100, arrowStrokeWidthpdv: 8, arrowColorpdv: btnOffLineColorpdv, backgroundColorpdv: .clear), for: UIControl.State.normal)
            }
            
        }
        
    }
    
    @objc func homeBtnClickpdv(sender: UIButton) {
        if (self.wkWebViewpdv.canGoBack) {
            self.wkWebViewpdv.load(URLRequest(url: self.wkWebViewpdv.backForwardList.backList[0].url))
        }
    }
    
    @objc func backBtnClickpdv(sender: UIButton) {
        if (self.titleDescpdv.count > 0) {
            if (self.wkWebViewpdv.canGoBack) {
                self.wkWebViewpdv.goBack()
            } else {
                self.dismiss(animated: true) {
                    if (self.callbackpdv != nil) {
                        self.callbackpdv!()
                    }
                }
            }
        } else {
            
            if (self.wkWebViewpdv.canGoBack) {
                if (backUrlpdv != nil) {
                    var lastIndexpdv = self.wkWebViewpdv.backForwardList.backList.count - 1
                    for i in 0..<self.wkWebViewpdv.backForwardList.backList.count {
                        if (self.wkWebViewpdv.backForwardList.backList[self.wkWebViewpdv.backForwardList.backList.count - i - 1].url.absoluteString == backUrlpdv!) {
                            lastIndexpdv = self.wkWebViewpdv.backForwardList.backList.count - i - 1
                            break
                        }
                    }
                    self.wkWebViewpdv.go(to: self.wkWebViewpdv.backForwardList.backList[lastIndexpdv])
                } else {
                    self.wkWebViewpdv.goBack()
                }
            }
        }
    }
    
    @objc func forwardBtnClickpdv(sender: UIButton) {
        if (self.wkWebViewpdv.canGoForward) {
            self.wkWebViewpdv.goForward()
        }
    }
    
    @objc func refreshBtnClickpdv(sender: UIButton) {
        self.wkWebViewpdv.reload()
    }
    
    @objc func exitBtnClickpdv(sender: UIButton) {
        if (self.titleDescpdv.count > 0) {
            self.dismiss(animated: true) {
                if (self.callbackpdv != nil) {
                    self.callbackpdv!()
                }
            }
        } else {
            exit(0)
        }
    }
    
    @objc func closeBtnClickpdv(sender: UIButton) {
        self.dismiss(animated: true) {
            if (self.callbackpdv != nil) {
                self.callbackpdv!()
            }
        }
    }
    
}

func radiansToDegreespdv(pdvx: String?, pdvy: String?, pdvz: String?, radianspdv:CGFloat) -> CGFloat {
    //
    // 弧度轉成角度
    return radianspdv * 180 / CGFloat.pi
}
func degreesToRadianspdv(pdvx: String?, pdvy: String?, pdvz: String?, degreespdv:CGFloat) -> CGFloat {
    //
    // 角度轉成弧度
    return degreespdv * CGFloat.pi / 180
}

func getXrightPlusByRadiuspdv(pdvx: String?, pdvy: String?, pdvz: String?, lengthpdv:CGFloat, degreesRightpdv:CGFloat) -> CGFloat {
    //
    // 中心向右為0度，逆時針旋轉，X左為正Y上為正
    return lengthpdv * cos(degreesRightpdv * CGFloat.pi / 180)
}

func getYtopPlusByRadiuspdv(pdvx: String?, pdvy: String?, pdvz: String?, lengthpdv:CGFloat, degreesRightpdv:CGFloat) -> CGFloat {
    //
    // 中心向右為0度，逆時針旋轉，X左為正Y上為正
    return lengthpdv * sin(degreesRightpdv * CGFloat.pi / 180)
}

func getSideLengthByXpdv(pdvx: String?, pdvy: String?, pdvz: String?, lengthpdv:CGFloat, degreesRightpdv:CGFloat) -> CGFloat {
    //
    // 中心向右為0度，逆時針旋轉，X左為正Y上為正
    let yLenpdv = lengthpdv * tan(degreesRightpdv * CGFloat.pi / 180)
    return sqrt(lengthpdv*lengthpdv + yLenpdv*yLenpdv)
}

func getSideLengthByYpdv(pdvx: String?, pdvy: String?, pdvz: String?, lengthpdv:CGFloat, degreesRightpdv:CGFloat) -> CGFloat {
    //
    // 中心向右為0度，逆時針旋轉，X左為正Y上為正
    let xLenpdv = lengthpdv / tan(degreesRightpdv * CGFloat.pi / 180)
    return sqrt(lengthpdv*lengthpdv + xLenpdv*xLenpdv)
}

func getYtopPlusByXpdv(pdvx: String?, pdvy: String?, pdvz: String?, lengthpdv:CGFloat, degreesRightpdv:CGFloat) -> CGFloat {
    //
    // 中心向右為0度，逆時針旋轉，X左為正Y上為正
    return lengthpdv * tan(degreesRightpdv * CGFloat.pi / 180)
}

func getXrightPlusByYpdv(pdvx: String?, pdvy: String?, pdvz: String?, lengthpdv:CGFloat, degreesRightpdv:CGFloat) -> CGFloat {
    //
    // 中心向右為0度，逆時針旋轉，X左為正Y上為正
    return lengthpdv / tan(degreesRightpdv * CGFloat.pi / 180)
}

func imageToBase64pdv(pdvx: String?, pdvy: String?, pdvz: String?, imagepdv:UIImage) -> String {
    //
    // 將圖片轉為 base64 字串
    if let imageDatapdv = imagepdv.pngData() {
        return imageDatapdv.base64EncodedString()
    } else {
        if let imageDatapdv = imagepdv.jpegData(compressionQuality: 0.75) {
            return imageDatapdv.base64EncodedString()
        } else {
            return ""
        }
    }
}

func base64ToImagepdv(pdvx: String?, pdvy: String?, pdvz: String?, base64pdv:String) -> UIImage? {
    
    if let dataDecodedpdv = Data(base64Encoded: base64pdv, options: Data.Base64DecodingOptions.init()) {
        if let decodedimagepdv = UIImage(data: dataDecodedpdv) {
            return decodedimagepdv
        }
    }
    
    return nil
}

func getNaviHomeLineImagepdv(pdvx: String?, pdvy: String?, pdvz: String?, imageSizepdv:CGFloat?, arrowStrokeWidthpdv:CGFloat?, arrowColorpdv:UIColor?, backgroundColorpdv:UIColor?) -> UIImage? {
    
    var contextSizepdv:CGFloat = 100
    if (imageSizepdv != nil) {
        contextSizepdv = imageSizepdv!
    }
    let sideLangthpdv:CGFloat = contextSizepdv * 0.8
    var strokeWidthpdv:CGFloat = 4
    if (arrowStrokeWidthpdv != nil) {
        strokeWidthpdv = arrowStrokeWidthpdv!
    }
    
    UIGraphicsBeginImageContextWithOptions(CGSize(width: contextSizepdv, height: contextSizepdv), false, 0.0)
    
    if let contextpdv = UIGraphicsGetCurrentContext() {
        
        contextpdv.beginPath()
        contextpdv.move(to: CGPoint(x: 0, y: 0))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv, y: 0))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv, y: contextSizepdv))
        contextpdv.addLine(to: CGPoint(x: 0, y: contextSizepdv))
        contextpdv.closePath()
        if let colorpdv = backgroundColorpdv {
            contextpdv.setFillColor(colorpdv.cgColor)
        } else {
            contextpdv.setFillColor(UIColor.clear.cgColor)
        }
        contextpdv.fillPath()
    }
    
    if let contextpdv = UIGraphicsGetCurrentContext() {
        contextpdv.beginPath()
        contextpdv.setLineCap(.round)
        contextpdv.setLineJoin(.round)
        contextpdv.move(to: CGPoint(x: contextSizepdv * 0.1 , y: contextSizepdv * 0.1 + sideLangthpdv / 2.0))
        
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv / 2, y: contextSizepdv * 0.1))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv, y: contextSizepdv * 0.1 + sideLangthpdv / 2.0))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.85, y: contextSizepdv * 0.1 + sideLangthpdv / 2.0))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.85, y: contextSizepdv * 0.1 + sideLangthpdv))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.7, y: contextSizepdv * 0.1 + sideLangthpdv))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.7, y: contextSizepdv * 0.1 + sideLangthpdv * 0.7))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.3, y: contextSizepdv * 0.1 + sideLangthpdv * 0.7))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.3, y: contextSizepdv * 0.1 + sideLangthpdv))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.15, y: contextSizepdv * 0.1 + sideLangthpdv))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.15, y: contextSizepdv * 0.1 + sideLangthpdv / 2.0))
        
        contextpdv.setLineWidth(strokeWidthpdv)
        if let colorpdv = arrowColorpdv {
            contextpdv.setStrokeColor(colorpdv.cgColor)
        } else {
            contextpdv.setStrokeColor(UIColor.clear.cgColor)
        }
        contextpdv.strokePath()
    }
    
    let imgpdv = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return imgpdv
}

func getNaviBackLineImagepdv(pdvx: String?, pdvy: String?, pdvz: String?, imageSizepdv:CGFloat?, arrowStrokeWidthpdv:CGFloat?, arrowColorpdv:UIColor?, backgroundColorpdv:UIColor?) -> UIImage? {
    
    var contextSizepdv:CGFloat = 100
    if (imageSizepdv != nil) {
        contextSizepdv = imageSizepdv!
    }
    let sideLangthpdv:CGFloat = contextSizepdv * 0.8
    var strokeWidthpdv:CGFloat = 4
    if (arrowStrokeWidthpdv != nil) {
        strokeWidthpdv = arrowStrokeWidthpdv!
    }
    
    UIGraphicsBeginImageContextWithOptions(CGSize(width: contextSizepdv, height: contextSizepdv), false, 0.0)
    
    if let contextpdv = UIGraphicsGetCurrentContext() {
        
        contextpdv.beginPath()
        contextpdv.move(to: CGPoint(x: 0, y: 0))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv, y: 0))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv, y: contextSizepdv))
        contextpdv.addLine(to: CGPoint(x: 0, y: contextSizepdv))
        contextpdv.closePath()
        if let colorpdv = backgroundColorpdv {
            contextpdv.setFillColor(colorpdv.cgColor)
        } else {
            contextpdv.setFillColor(UIColor.clear.cgColor)
        }
        contextpdv.fillPath()
    }
    
    if let contextpdv = UIGraphicsGetCurrentContext() {
        contextpdv.beginPath()
        contextpdv.setLineCap(.round)
        contextpdv.setLineJoin(.round)
        contextpdv.move(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.4, y: contextSizepdv * 0.1 + sideLangthpdv * 0.9))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1, y: contextSizepdv * 0.1 + sideLangthpdv * 0.5))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.4, y: contextSizepdv * 0.1 + sideLangthpdv * 0.1))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.4, y: contextSizepdv * 0.1 + sideLangthpdv * 0.3))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv, y: contextSizepdv * 0.1 + sideLangthpdv * 0.3))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv, y: contextSizepdv * 0.1 + sideLangthpdv * 0.7))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.4, y: contextSizepdv * 0.1 + sideLangthpdv * 0.7))
        
        contextpdv.setLineWidth(strokeWidthpdv)
        if let colorpdv = arrowColorpdv {
            contextpdv.setStrokeColor(colorpdv.cgColor)
        } else {
            contextpdv.setStrokeColor(UIColor.clear.cgColor)
        }
        contextpdv.strokePath()
    }
    
    let imgpdv = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return imgpdv
}

func getNaviForwardLineImagepdv(pdvx: String?, pdvy: String?, pdvz: String?, imageSizepdv:CGFloat?, arrowStrokeWidthpdv:CGFloat?, arrowColorpdv:UIColor?, backgroundColorpdv:UIColor?) -> UIImage? {
    
    var contextSizepdv:CGFloat = 100
    if (imageSizepdv != nil) {
        contextSizepdv = imageSizepdv!
    }
    let sideLangthpdv:CGFloat = contextSizepdv * 0.8
    var strokeWidthpdv:CGFloat = 4
    if (arrowStrokeWidthpdv != nil) {
        strokeWidthpdv = arrowStrokeWidthpdv!
    }
    
    UIGraphicsBeginImageContextWithOptions(CGSize(width: contextSizepdv, height: contextSizepdv), false, 0.0)
    
    if let contextpdv = UIGraphicsGetCurrentContext() {
        
        contextpdv.beginPath()
        contextpdv.move(to: CGPoint(x: 0, y: 0))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv, y: 0))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv, y: contextSizepdv))
        contextpdv.addLine(to: CGPoint(x: 0, y: contextSizepdv))
        contextpdv.closePath()
        if let colorpdv = backgroundColorpdv {
            contextpdv.setFillColor(colorpdv.cgColor)
        } else {
            contextpdv.setFillColor(UIColor.clear.cgColor)
        }
        contextpdv.fillPath()
    }
    
    if let contextpdv = UIGraphicsGetCurrentContext() {
        contextpdv.beginPath()
        contextpdv.setLineCap(.round)
        contextpdv.setLineJoin(.round)
        contextpdv.move(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.6, y: contextSizepdv * 0.1 + sideLangthpdv * 0.9))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv, y: contextSizepdv * 0.1 + sideLangthpdv * 0.5))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.6, y: contextSizepdv * 0.1 + sideLangthpdv * 0.1))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.6, y: contextSizepdv * 0.1 + sideLangthpdv * 0.3))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1, y: contextSizepdv * 0.1 + sideLangthpdv * 0.3))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1, y: contextSizepdv * 0.1 + sideLangthpdv * 0.7))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.6, y: contextSizepdv * 0.1 + sideLangthpdv * 0.7))
        
        contextpdv.setLineWidth(strokeWidthpdv)
        if let colorpdv = arrowColorpdv {
            contextpdv.setStrokeColor(colorpdv.cgColor)
        } else {
            contextpdv.setStrokeColor(UIColor.clear.cgColor)
        }
        contextpdv.strokePath()
    }
    
    let imgpdv = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return imgpdv
}

func getNaviRefreshLineImagepdv(pdvx: String?, pdvy: String?, pdvz: String?, imageSizepdv:CGFloat?, arrowStrokeWidthpdv:CGFloat?, arrowColorpdv:UIColor?, backgroundColorpdv:UIColor?) -> UIImage? {
    
    var contextSizepdv:CGFloat = 100
    if (imageSizepdv != nil) {
        contextSizepdv = imageSizepdv!
    }
    let sideLangthpdv:CGFloat = contextSizepdv * 0.8
    var strokeWidthpdv:CGFloat = 4
    if (arrowStrokeWidthpdv != nil) {
        strokeWidthpdv = arrowStrokeWidthpdv!
    }
    
    UIGraphicsBeginImageContextWithOptions(CGSize(width: contextSizepdv, height: contextSizepdv), false, 0.0)
    
    if let contextpdv = UIGraphicsGetCurrentContext() {
        
        contextpdv.beginPath()
        contextpdv.move(to: CGPoint(x: 0, y: 0))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv, y: 0))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv, y: contextSizepdv))
        contextpdv.addLine(to: CGPoint(x: 0, y: contextSizepdv))
        contextpdv.closePath()
        if let colorpdv = backgroundColorpdv {
            contextpdv.setFillColor(colorpdv.cgColor)
        } else {
            contextpdv.setFillColor(UIColor.clear.cgColor)
        }
        contextpdv.fillPath()
    }
    
    if let contextpdv = UIGraphicsGetCurrentContext() {
        contextpdv.beginPath()
        contextpdv.setLineCap(.round)
        contextpdv.setLineJoin(.round)
        contextpdv.move(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv / 2.0 + getXrightPlusByRadiuspdv(pdvx: nil, pdvy: nil, pdvz: nil, lengthpdv: sideLangthpdv * 0.4, degreesRightpdv: 150), y: contextSizepdv * 0.1 + sideLangthpdv / 2.0 - getYtopPlusByRadiuspdv(pdvx: nil, pdvy: nil, pdvz: nil, lengthpdv: sideLangthpdv * 0.4, degreesRightpdv: 150)))
        contextpdv.addArc(center: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv / 2.0, y: contextSizepdv * 0.1 + sideLangthpdv / 2.0), radius: sideLangthpdv * 0.4, startAngle: 210 * CGFloat.pi / 180 , endAngle: 0, clockwise: false)
        
        contextpdv.move(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.8, y: contextSizepdv * 0.1 + sideLangthpdv * 0.4))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.9, y: contextSizepdv * 0.1 + sideLangthpdv * 0.5))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 1, y: contextSizepdv * 0.1 + sideLangthpdv * 0.4))
        
        
        contextpdv.move(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv / 2.0 + getXrightPlusByRadiuspdv(pdvx: nil, pdvy: nil, pdvz: nil, lengthpdv: sideLangthpdv * 0.4, degreesRightpdv: 330), y: contextSizepdv * 0.1 + sideLangthpdv / 2.0 - getYtopPlusByRadiuspdv(pdvx: nil, pdvy: nil, pdvz: nil, lengthpdv: sideLangthpdv * 0.4, degreesRightpdv: 330)))
        contextpdv.addArc(center: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv / 2.0, y: contextSizepdv * 0.1 + sideLangthpdv / 2.0), radius: sideLangthpdv * 0.4, startAngle: 30 * CGFloat.pi / 180 , endAngle: 180 * CGFloat.pi / 180, clockwise: false)
        
        contextpdv.move(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.2, y: contextSizepdv * 0.1 + sideLangthpdv * 0.6))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv * 0.1, y: contextSizepdv * 0.1 + sideLangthpdv * 0.5))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1, y: contextSizepdv * 0.1 + sideLangthpdv * 0.6))
        
        contextpdv.setLineWidth(strokeWidthpdv)
        if let colorpdv = arrowColorpdv {
            contextpdv.setStrokeColor(colorpdv.cgColor)
        } else {
            contextpdv.setStrokeColor(UIColor.clear.cgColor)
        }
        contextpdv.strokePath()
    }
    
    let imgpdv = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return imgpdv
}

func getNaviExitLineImagepdv(pdvx: String?, pdvy: String?, pdvz: String?, imageSizepdv:CGFloat?, arrowStrokeWidthpdv:CGFloat?, arrowColorpdv:UIColor?, backgroundColorpdv:UIColor?) -> UIImage? {
    
    var contextSizepdv:CGFloat = 100
    if (imageSizepdv != nil) {
        contextSizepdv = imageSizepdv!
    }
    let sideLangthpdv:CGFloat = contextSizepdv * 0.8
    var strokeWidthpdv:CGFloat = 4
    if (arrowStrokeWidthpdv != nil) {
        strokeWidthpdv = arrowStrokeWidthpdv!
    }
    
    UIGraphicsBeginImageContextWithOptions(CGSize(width: contextSizepdv, height: contextSizepdv), false, 0.0)
    
    if let contextpdv = UIGraphicsGetCurrentContext() {
        
        contextpdv.beginPath()
        contextpdv.move(to: CGPoint(x: 0, y: 0))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv, y: 0))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv, y: contextSizepdv))
        contextpdv.addLine(to: CGPoint(x: 0, y: contextSizepdv))
        contextpdv.closePath()
        if let colorpdv = backgroundColorpdv {
            contextpdv.setFillColor(colorpdv.cgColor)
        } else {
            contextpdv.setFillColor(UIColor.clear.cgColor)
        }
        contextpdv.fillPath()
    }
    
    if let contextpdv = UIGraphicsGetCurrentContext() {
        contextpdv.beginPath()
        contextpdv.setLineCap(.round)
        contextpdv.setLineJoin(.round)
        contextpdv.move(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv / 2.0 + getXrightPlusByRadiuspdv(pdvx: nil, pdvy: nil, pdvz: nil, lengthpdv: sideLangthpdv * 0.4, degreesRightpdv: 120), y: contextSizepdv * 0.1 + sideLangthpdv / 2.0 - getYtopPlusByRadiuspdv(pdvx: nil, pdvy: nil, pdvz: nil, lengthpdv: sideLangthpdv * 0.4, degreesRightpdv: 120)))
        contextpdv.addArc(center: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv / 2.0, y: contextSizepdv * 0.1 + sideLangthpdv / 2.0), radius: sideLangthpdv * 0.4, startAngle: 240 * CGFloat.pi / 180 , endAngle: 300 * CGFloat.pi / 180, clockwise: true)
        
        contextpdv.move(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv / 2.0, y: contextSizepdv * 0.1))
        contextpdv.addLine(to: CGPoint(x: contextSizepdv * 0.1 + sideLangthpdv / 2.0, y: contextSizepdv * 0.1 + sideLangthpdv * 0.4))
        
        contextpdv.setLineWidth(strokeWidthpdv)
        if let colorpdv = arrowColorpdv {
            contextpdv.setStrokeColor(colorpdv.cgColor)
        } else {
            contextpdv.setStrokeColor(UIColor.clear.cgColor)
        }
        contextpdv.strokePath()
    }
    
    let imgpdv = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return imgpdv
}
