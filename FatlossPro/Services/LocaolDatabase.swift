//
//  Data.swift
//  FitnessProMan
//
//  Created by SYBM on 2018/9/20.
//  Copyright © 2019年 YaorongHuang. All rights reserved.

//swiftlint:disable comma
//swiftlint:disable line_length
//swiftlint:trailing_comma
//swiftlint:vertical_whitespace

import Foundation
class LocaolDatabase {
    
    static let instance = LocaolDatabase()
    private init() {}
    
    private let fitCategories = [
        
        FitnessModel(title: "所有视频", imageName: "1", secondTitle: "All Fat Loss"),
        FitnessModel(title: "减脂知识", imageName: "2", secondTitle: "Knowledge"),
        FitnessModel(title: "高强度间歇训练", imageName: "4", secondTitle: "HIIT"),
        FitnessModel(title: "复合训练", imageName: "5", secondTitle: "Workout")
        
    ]
    
    private let allArray = [
        
        NewListModel(videoImg: "knowledge1", durationLbl: 7, videoTitle: "6种超简单有效的减脂餐推荐!", videoDescription: "月瘦10斤都吃了什么?!", intensity: "入门", videoID: "sz3KSOMPAmg", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 88, stopTime: 105, restTime: 5, timesDescription: 110, actionDescription: "第一种", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 199, stopTime: 80, restTime: 2, timesDescription: 80, actionDescription: "第二种", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 283, stopTime: 65, restTime: 5, timesDescription: 60, actionDescription: "第三种", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 357, stopTime: 45, restTime: 4, timesDescription: 45, actionDescription: "第四种", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 411, stopTime: 60, restTime: 7, timesDescription: 60, actionDescription: "第五种", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 481, stopTime: 60, restTime: 0, timesDescription: 60, actionDescription: "第六种", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .knowledge),
        
        NewListModel(videoImg: "knowledge2", durationLbl: 7, videoTitle: "最常犯的7个错误", videoDescription: "你为什么总是减脂失败?!", intensity: "入门", videoID: "9uMzRrunRRc", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 52, stopTime: 72, restTime: 5, timesDescription: 72, actionDescription: "错误一", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 143, stopTime: 45, restTime: 5, timesDescription: 45, actionDescription: "错误二", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 242, stopTime: 52, restTime: 5, timesDescription: 52, actionDescription: "错误三", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 345, stopTime: 41, restTime: 5, timesDescription: 41, actionDescription: "错误四", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 411, stopTime: 73, restTime: 5, timesDescription: 73, actionDescription: "错误五", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 522, stopTime: 44, restTime: 5, timesDescription: 44, actionDescription: "错误六", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 584, stopTime: 61, restTime: 5, timesDescription: 61, actionDescription: "错误七", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .knowledge),
        
        NewListModel(videoImg: "knowledge3", durationLbl: 6, videoTitle: "10种食物帮你快速减脂!", videoDescription: "吃出6块腹肌!", intensity: "入门", videoID: "FJ9Sd60xTgg", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 76, stopTime: 38, restTime: 2, timesDescription: 38, actionDescription: "牛油果", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 116, stopTime: 38, restTime: 5, timesDescription: 38, actionDescription: "咖啡", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 192, stopTime: 27, restTime: 5, timesDescription: 67, actionDescription: "鸡蛋", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 225, stopTime: 28, restTime: 1, timesDescription: 28, actionDescription: "果醋", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 254, stopTime: 28, restTime: 5, timesDescription: 28, actionDescription: "三文鱼", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 410, stopTime: 33, restTime: 1, timesDescription: 33, actionDescription: "深绿色蔬菜", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 444, stopTime: 34, restTime: 5, timesDescription: 34, actionDescription: "复合型的碳水", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 517, stopTime: 23, restTime: 5, timesDescription: 23, actionDescription: "酶类型的水果", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 653, stopTime: 51, restTime: 4, timesDescription: 51, actionDescription: "蛋白粉", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 709, stopTime: 22, restTime: 0, timesDescription: 2, actionDescription: "寿司", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .knowledge),
        
        NewListModel(videoImg: "hiit1", durationLbl: 3, videoTitle: "高强度燃脂运动", videoDescription: "三个动作让你燃烧", intensity: "中等", videoID: "e1R6uXQrFiM", timeRange: TimeLength.max3, actionModel: [
            
            NewActionModel(youtubeTime: 214, stopTime: 25, restTime: 0, timesDescription: 30, actionDescription: "登山者"),
            
            NewActionModel(youtubeTime: 243, stopTime: 14, restTime: 0, timesDescription: 20, actionDescription: "伏地侧踢"),
            
            NewActionModel(youtubeTime: 259, stopTime: 10, restTime: 0, timesDescription: 10, actionDescription: "深蹲波比跳"),
            
            NewActionModel(youtubeTime: 270, stopTime: 5, restTime: 0, timesDescription: 10, actionDescription: "休息"),
            
            NewActionModel(youtubeTime: 214, stopTime: 25, restTime: 0, timesDescription: 10, actionDescription: "登山者"),
            
            NewActionModel(youtubeTime: 243, stopTime: 14, restTime: 0, timesDescription: 30, actionDescription: "伏地侧踢"),
            
            NewActionModel(youtubeTime: 259, stopTime: 10, restTime: 0, timesDescription: 20, actionDescription: "深蹲波比跳"),
            
            NewActionModel(youtubeTime: 270, stopTime: 5, restTime: 0, timesDescription: 10, actionDescription: "休息"),
            
            NewActionModel(youtubeTime: 214, stopTime: 25, restTime: 0, timesDescription: 20, actionDescription: "登山者"),
            
            NewActionModel(youtubeTime: 243, stopTime: 14, restTime: 0, timesDescription: 10, actionDescription: "伏地侧踢"),
            
            NewActionModel(youtubeTime: 259, stopTime: 10, restTime: 0, timesDescription: 30, actionDescription: "深蹲波比跳")
            
            ], category: .hiit),
        
        NewListModel(videoImg: "hiit2", durationLbl: 7, videoTitle: "高强度训练-基础版", videoDescription: "10分钟到地狱", intensity: "入门", videoID: "0gf3qwXUJk4", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 415, stopTime: 12, restTime: 0, timesDescription: 20, actionDescription: "俯卧撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 467, stopTime: 18, restTime: 0, timesDescription: 20, actionDescription: "深蹲", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 489, stopTime: 26, restTime: 0, timesDescription: 20, actionDescription: "superman", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 519, stopTime: 20, restTime: 0, timesDescription: 20, actionDescription: "弓箭步", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 544, stopTime: 24, restTime: 0, timesDescription: 20, actionDescription: "变式平板支撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 451, stopTime: 117, restTime: 0, timesDescription: 200, actionDescription: "休息", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 415, stopTime: 12, restTime: 0, timesDescription: 20, actionDescription: "俯卧撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 467, stopTime: 18, restTime: 0, timesDescription: 20, actionDescription: "深蹲", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 489, stopTime: 26, restTime: 0, timesDescription: 20, actionDescription: "superman", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 519, stopTime: 20, restTime: 0, timesDescription: 20, actionDescription: "弓箭步", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 544, stopTime: 24, restTime: 0, timesDescription: 20, actionDescription: "变式平板支撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 451, stopTime: 117, restTime: 0, timesDescription: 200, actionDescription: "休息", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 415, stopTime: 12, restTime: 0, timesDescription: 20, actionDescription: "俯卧撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 467, stopTime: 18, restTime: 0, timesDescription: 20, actionDescription: "深蹲", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 489, stopTime: 26, restTime: 0, timesDescription: 20, actionDescription: "superman", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 519, stopTime: 20, restTime: 0, timesDescription: 20, actionDescription: "弓箭步", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 544, stopTime: 24, restTime: 0, timesDescription: 20, actionDescription: "变式平板支撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .hiit),
        
        NewListModel(videoImg: "hiit3", durationLbl: 7, videoTitle: "高强度训练-进阶版", videoDescription: "10分钟到地狱", intensity: "中等", videoID: "0gf3qwXUJk4", timeRange: TimeLength.min9, actionModel: [
            
            NewActionModel(youtubeTime: 585, stopTime: 15, restTime: 0, timesDescription: 20, actionDescription: "击掌俯卧撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 604, stopTime: 11, restTime: 0, timesDescription: 20, actionDescription: "收腹跳", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 621, stopTime: 9, restTime: 0, timesDescription: 20, actionDescription: "superman(弹力绳)", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 637, stopTime: 10, restTime: 0, timesDescription: 20, actionDescription: "跳跃弓箭步", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 661, stopTime: 14, restTime: 0, timesDescription: 20, actionDescription: "上下平板支撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 585, stopTime: 90, restTime: 0, timesDescription: 200, actionDescription: "休息", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 585, stopTime: 15, restTime: 0, timesDescription: 20, actionDescription: "击掌俯卧撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 604, stopTime: 11, restTime: 0, timesDescription: 20, actionDescription: "收腹跳", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 621, stopTime: 9, restTime: 0, timesDescription: 20, actionDescription: "superman(弹力绳)", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 637, stopTime: 10, restTime: 0, timesDescription: 20, actionDescription: "跳跃弓箭步", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 661, stopTime: 14, restTime: 0, timesDescription: 20, actionDescription: "上下平板支撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 585, stopTime: 90, restTime: 0, timesDescription: 200, actionDescription: "休息", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 585, stopTime: 15, restTime: 0, timesDescription: 20, actionDescription: "击掌俯卧撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 604, stopTime: 11, restTime: 0, timesDescription: 20, actionDescription: "收腹跳", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 621, stopTime: 9, restTime: 0, timesDescription: 20, actionDescription: "superman(弹力绳)", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 637, stopTime: 10, restTime: 0, timesDescription: 20, actionDescription: "跳跃弓箭步", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 661, stopTime: 14, restTime: 0, timesDescription: 20, actionDescription: "上下平板支撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .hiit),
        
        NewListModel(videoImg: "workout1", durationLbl: 3, videoTitle: "3分钟的腹部训练", videoDescription: "Fitting Room TW", intensity: "入门", videoID: "HjP9GUWTft4", timeRange: TimeLength.max3, actionModel: [
            
            NewActionModel(youtubeTime: 10, stopTime: 33, restTime: 3, timesDescription: 30, actionDescription: "登山者", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 43, stopTime: 35, restTime: 3, timesDescription: 30, actionDescription: "卷腹", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 83, stopTime: 35, restTime: 3, timesDescription: 30, actionDescription: "左右棒式滑步", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 122, stopTime: 35, restTime: 3, timesDescription: 30, actionDescription: "V型卷腹", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 163, stopTime: 40, restTime: 3, timesDescription: 30, actionDescription: "棒式小跳", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 204, stopTime: 40, restTime: 3, timesDescription: 30, actionDescription: "全仰卧起坐", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .workout),
        
        NewListModel(videoImg: "workout2", durationLbl: 5, videoTitle: "5分钟在家提臀瘦大腿运动", videoDescription: "周六野 Zoey", intensity: "入门", videoID: "P2MI5A3mo1c", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 70, stopTime: 40, restTime: 3, timesDescription: 30, actionDescription: "15下动作1", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 123, stopTime: 55, restTime: 3, timesDescription: 55, actionDescription: "20下动作2", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 180, stopTime: 38, restTime: 3, timesDescription: 30, actionDescription: "15下动作3", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 226, stopTime: 44, restTime: 3, timesDescription: 40, actionDescription: "左右各15下动作4", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 323, stopTime: 93, restTime: 3, timesDescription: 90, actionDescription: "左右各15下动作5", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .workout),
        
        NewListModel(videoImg: "workout3", durationLbl: 5, videoTitle: "5分钟的手臂训练", videoDescription: "Fitting Room TW", intensity: "中等", videoID: "GH2Ezj9zCUU", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 30, stopTime: 70, restTime: 3, timesDescription: 60, actionDescription: "二头弯举"),
            
            NewActionModel(youtubeTime: 89, stopTime: 70, restTime: 3, timesDescription: 60, actionDescription: "反向飞鸟"),
            
            NewActionModel(youtubeTime: 149, stopTime: 70, restTime: 3, timesDescription: 60, actionDescription: "三头肌动作"),
            
            NewActionModel(youtubeTime: 208, stopTime: 70, restTime: 3, timesDescription: 60, actionDescription: "胸肌肩膀动作"),
            
            NewActionModel(youtubeTime: 268, stopTime: 70, restTime: 3, timesDescription: 60, actionDescription: "进阶三头肌动作")
            
            ], category: .workout),
        NewListModel(videoImg: "workout4", durationLbl: 7, videoTitle: "连续22天的腹肌训练计划", videoDescription: "FittingRoomTW", intensity: "入门", videoID: "EIoryEvS2Gc", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 115.0, stopTime: 15, restTime: 30, timesDescription: 45, actionDescription: "仰卧抬腿", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 164.0, stopTime: 20.0, restTime: 30, timesDescription: 45, actionDescription: "侧步棒式", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 200.0, stopTime: 20.0, restTime: 30, timesDescription: 40.0, actionDescription: "12次X卷腹", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 233.0, stopTime: 37.0, restTime: 30, timesDescription: 40.0, actionDescription: "10次左侧旋转侧棒式", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 233.0, stopTime: 37.0, restTime: 30, timesDescription: 40.0, actionDescription: "10次右侧旋转侧棒式", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 289.0, stopTime: 23.0, restTime: 30, timesDescription: 45.0, actionDescription: "屈体", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 330.0, stopTime: 330.0, restTime: 30, timesDescription: 30, actionDescription: "固定单车式卷腹", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .workout),
        NewListModel(videoImg: "workout5", durationLbl: 7, videoTitle: "特快瘦大腿1个月内见效", videoDescription: "Coffee林芊妤" , intensity: "入门", videoID: "3X1PL7ym04I", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 67, stopTime: 60, restTime: 10, timesDescription: 50, actionDescription: "左右20次", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 140, stopTime: 60, restTime: 10, timesDescription: 50, actionDescription: "左右20次", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 214, stopTime: 60, restTime: 10, timesDescription: 50, actionDescription: "升起20次", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 279, stopTime: 60, restTime: 10, timesDescription: 50, actionDescription: "升起20次", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 353, stopTime: 60, restTime: 10, timesDescription: 50, actionDescription: "升起20次", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 438, stopTime: 60, restTime: 10, timesDescription: 50, actionDescription: "升起20次", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 438, stopTime: 60, restTime: 10, timesDescription: 50, actionDescription: "画圈20次﻿", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .workout),
        NewListModel(videoImg: "workout6", durationLbl: 2, videoTitle: "5分钟在家瘦手臂运动，甩掉拜拜肉显锁骨", videoDescription: "周六野 Zoey", intensity: "入门", videoID: "uVUceueG3Ws", timeRange: TimeLength.max3, actionModel: [
            
            NewActionModel(youtubeTime: 81, stopTime: 30, restTime: 3, timesDescription: 20, actionDescription: "超人动作", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 153, stopTime: 40, restTime: 3, timesDescription: 20, actionDescription: "元宝动作", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 215, stopTime: 3, restTime: 30, timesDescription: 20, actionDescription: "滑水动作", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 294, stopTime: 30, restTime: 3, timesDescription: 20, actionDescription: "拳击动作", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .workout)
        
    ]
    
    private let knowledgeArray = [
        
        NewListModel(videoImg: "knowledge1", durationLbl: 7, videoTitle: "6种超简单有效的减脂餐推荐!", videoDescription: "月瘦10斤都吃了什么?!", intensity: "入门", videoID: "sz3KSOMPAmg", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 88, stopTime: 105, restTime: 5, timesDescription: 110, actionDescription: "第一种", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 199, stopTime: 80, restTime: 2, timesDescription: 80, actionDescription: "第二种", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 283, stopTime: 65, restTime: 5, timesDescription: 60, actionDescription: "第三种", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 357, stopTime: 45, restTime: 4, timesDescription: 45, actionDescription: "第四种", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 411, stopTime: 60, restTime: 7, timesDescription: 60, actionDescription: "第五种", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 481, stopTime: 60, restTime: 0, timesDescription: 60, actionDescription: "第六种", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .knowledge),
        
        NewListModel(videoImg: "knowledge2", durationLbl: 7, videoTitle: "最常犯的7个错误", videoDescription: "你为什么总是减脂失败?!", intensity: "入门", videoID: "9uMzRrunRRc", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 52, stopTime: 72, restTime: 5, timesDescription: 72, actionDescription: "错误一", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 143, stopTime: 45, restTime: 5, timesDescription: 45, actionDescription: "错误二", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 242, stopTime: 52, restTime: 5, timesDescription: 52, actionDescription: "错误三", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 345, stopTime: 41, restTime: 5, timesDescription: 41, actionDescription: "错误四", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 411, stopTime: 73, restTime: 5, timesDescription: 73, actionDescription: "错误五", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 522, stopTime: 44, restTime: 5, timesDescription: 44, actionDescription: "错误六", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 584, stopTime: 61, restTime: 5, timesDescription: 61, actionDescription: "错误七", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .knowledge),
        
        NewListModel(videoImg: "knowledge3", durationLbl: 6, videoTitle: "10种食物帮你快速减脂!", videoDescription: "吃出6块腹肌!", intensity: "入门", videoID: "FJ9Sd60xTgg", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 76, stopTime: 38, restTime: 2, timesDescription: 38, actionDescription: "牛油果", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 116, stopTime: 38, restTime: 5, timesDescription: 38, actionDescription: "咖啡", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 192, stopTime: 27, restTime: 5, timesDescription: 67, actionDescription: "鸡蛋", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 225, stopTime: 28, restTime: 1, timesDescription: 28, actionDescription: "果醋", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 254, stopTime: 28, restTime: 5, timesDescription: 28, actionDescription: "三文鱼", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 410, stopTime: 33, restTime: 1, timesDescription: 33, actionDescription: "深绿色蔬菜", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 444, stopTime: 34, restTime: 5, timesDescription: 34, actionDescription: "复合型的碳水", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 517, stopTime: 23, restTime: 5, timesDescription: 23, actionDescription: "酶类型的水果", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 653, stopTime: 51, restTime: 4, timesDescription: 51, actionDescription: "蛋白粉", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 709, stopTime: 22, restTime: 0, timesDescription: 2, actionDescription: "寿司", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .knowledge)
        
    ]
    
    private let hiitArray = [
        NewListModel(videoImg: "hiit1", durationLbl: 3, videoTitle: "高强度燃脂运动", videoDescription: "三个动作让你燃烧", intensity: "中等", videoID: "e1R6uXQrFiM", timeRange: TimeLength.max3, actionModel: [
            
            NewActionModel(youtubeTime: 214, stopTime: 25, restTime: 0, timesDescription: 30, actionDescription: "登山者"),
            
            NewActionModel(youtubeTime: 243, stopTime: 14, restTime: 0, timesDescription: 20, actionDescription: "伏地侧踢"),
            
            NewActionModel(youtubeTime: 259, stopTime: 10, restTime: 0, timesDescription: 10, actionDescription: "深蹲波比跳"),
            
            NewActionModel(youtubeTime: 270, stopTime: 5, restTime: 0, timesDescription: 10, actionDescription: "休息"),
            
            NewActionModel(youtubeTime: 214, stopTime: 25, restTime: 0, timesDescription: 10, actionDescription: "登山者"),
            
            NewActionModel(youtubeTime: 243, stopTime: 14, restTime: 0, timesDescription: 30, actionDescription: "伏地侧踢"),
            
            NewActionModel(youtubeTime: 259, stopTime: 10, restTime: 0, timesDescription: 20, actionDescription: "深蹲波比跳"),
            
            NewActionModel(youtubeTime: 270, stopTime: 5, restTime: 0, timesDescription: 10, actionDescription: "休息"),
            
            NewActionModel(youtubeTime: 214, stopTime: 25, restTime: 0, timesDescription: 20, actionDescription: "登山者"),
            
            NewActionModel(youtubeTime: 243, stopTime: 14, restTime: 0, timesDescription: 10, actionDescription: "伏地侧踢"),
            
            NewActionModel(youtubeTime: 259, stopTime: 10, restTime: 0, timesDescription: 30, actionDescription: "深蹲波比跳")
            
            ], category: .hiit),
        
        NewListModel(videoImg: "hiit2", durationLbl: 7, videoTitle: "高强度训练-基础版", videoDescription: "10分钟到地狱", intensity: "入门", videoID: "0gf3qwXUJk4", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 415, stopTime: 12, restTime: 0, timesDescription: 20, actionDescription: "俯卧撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 467, stopTime: 18, restTime: 0, timesDescription: 20, actionDescription: "深蹲", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 489, stopTime: 26, restTime: 0, timesDescription: 20, actionDescription: "superman", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 519, stopTime: 20, restTime: 0, timesDescription: 20, actionDescription: "弓箭步", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 544, stopTime: 24, restTime: 0, timesDescription: 20, actionDescription: "变式平板支撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 451, stopTime: 117, restTime: 0, timesDescription: 200, actionDescription: "休息", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 415, stopTime: 12, restTime: 0, timesDescription: 20, actionDescription: "俯卧撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 467, stopTime: 18, restTime: 0, timesDescription: 20, actionDescription: "深蹲", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 489, stopTime: 26, restTime: 0, timesDescription: 20, actionDescription: "superman", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 519, stopTime: 20, restTime: 0, timesDescription: 20, actionDescription: "弓箭步", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 544, stopTime: 24, restTime: 0, timesDescription: 20, actionDescription: "变式平板支撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 451, stopTime: 117, restTime: 0, timesDescription: 200, actionDescription: "休息", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 415, stopTime: 12, restTime: 0, timesDescription: 20, actionDescription: "俯卧撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 467, stopTime: 18, restTime: 0, timesDescription: 20, actionDescription: "深蹲", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 489, stopTime: 26, restTime: 0, timesDescription: 20, actionDescription: "superman", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 519, stopTime: 20, restTime: 0, timesDescription: 20, actionDescription: "弓箭步", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 544, stopTime: 24, restTime: 0, timesDescription: 20, actionDescription: "变式平板支撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .hiit),
        
        NewListModel(videoImg: "hiit3", durationLbl: 7, videoTitle: "高强度训练-进阶版", videoDescription: "10分钟到地狱", intensity: "中等", videoID: "0gf3qwXUJk4", timeRange: TimeLength.min9, actionModel: [
            
            NewActionModel(youtubeTime: 585, stopTime: 15, restTime: 0, timesDescription: 20, actionDescription: "击掌俯卧撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 604, stopTime: 11, restTime: 0, timesDescription: 20, actionDescription: "收腹跳", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 621, stopTime: 9, restTime: 0, timesDescription: 20, actionDescription: "superman(弹力绳)", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 637, stopTime: 10, restTime: 0, timesDescription: 20, actionDescription: "跳跃弓箭步", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 661, stopTime: 14, restTime: 0, timesDescription: 20, actionDescription: "上下平板支撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 585, stopTime: 90, restTime: 0, timesDescription: 200, actionDescription: "休息", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 585, stopTime: 15, restTime: 0, timesDescription: 20, actionDescription: "击掌俯卧撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 604, stopTime: 11, restTime: 0, timesDescription: 20, actionDescription: "收腹跳", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 621, stopTime: 9, restTime: 0, timesDescription: 20, actionDescription: "superman(弹力绳)", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 637, stopTime: 10, restTime: 0, timesDescription: 20, actionDescription: "跳跃弓箭步", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 661, stopTime: 14, restTime: 0, timesDescription: 20, actionDescription: "上下平板支撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 585, stopTime: 90, restTime: 0, timesDescription: 200, actionDescription: "休息", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 585, stopTime: 15, restTime: 0, timesDescription: 20, actionDescription: "击掌俯卧撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 604, stopTime: 11, restTime: 0, timesDescription: 20, actionDescription: "收腹跳", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 621, stopTime: 9, restTime: 0, timesDescription: 20, actionDescription: "superman(弹力绳)", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 637, stopTime: 10, restTime: 0, timesDescription: 20, actionDescription: "跳跃弓箭步", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 661, stopTime: 14, restTime: 0, timesDescription: 20, actionDescription: "上下平板支撑", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .hiit)
        
    ]
    
    private let workoutArray = [
        
        NewListModel(videoImg: "workout1", durationLbl: 3, videoTitle: "3分钟的腹部训练", videoDescription: "Fitting Room TW", intensity: "入门", videoID: "HjP9GUWTft4", timeRange: TimeLength.max3, actionModel: [
            
            NewActionModel(youtubeTime: 10, stopTime: 33, restTime: 3, timesDescription: 30, actionDescription: "登山者", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 43, stopTime: 35, restTime: 3, timesDescription: 30, actionDescription: "卷腹", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 83, stopTime: 35, restTime: 3, timesDescription: 30, actionDescription: "左右棒式滑步", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 122, stopTime: 35, restTime: 3, timesDescription: 30, actionDescription: "V型卷腹", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 163, stopTime: 40, restTime: 3, timesDescription: 30, actionDescription: "棒式小跳", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 204, stopTime: 40, restTime: 3, timesDescription: 30, actionDescription: "全仰卧起坐", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .workout),
        
        NewListModel(videoImg: "workout2", durationLbl: 5, videoTitle: "5分钟在家提臀瘦大腿运动", videoDescription: "周六野 Zoey", intensity: "入门", videoID: "P2MI5A3mo1c", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 70, stopTime: 40, restTime: 3, timesDescription: 30, actionDescription: "15下动作1", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 123, stopTime: 55, restTime: 3, timesDescription: 55, actionDescription: "20下动作2", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 180, stopTime: 38, restTime: 3, timesDescription: 30, actionDescription: "15下动作3", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 226, stopTime: 44, restTime: 3, timesDescription: 40, actionDescription: "左右各15下动作4", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 323, stopTime: 93, restTime: 3, timesDescription: 90, actionDescription: "左右各15下动作5", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .workout),
        
        NewListModel(videoImg: "workout3", durationLbl: 5, videoTitle: "5分钟的手臂训练", videoDescription: "Fitting Room TW", intensity: "中等", videoID: "GH2Ezj9zCUU", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 30, stopTime: 70, restTime: 3, timesDescription: 60, actionDescription: "二头弯举"),
            
            NewActionModel(youtubeTime: 89, stopTime: 70, restTime: 3, timesDescription: 60, actionDescription: "反向飞鸟"),
            
            NewActionModel(youtubeTime: 149, stopTime: 70, restTime: 3, timesDescription: 60, actionDescription: "三头肌动作"),
            
            NewActionModel(youtubeTime: 208, stopTime: 70, restTime: 3, timesDescription: 60, actionDescription: "胸肌肩膀动作"),
            
            NewActionModel(youtubeTime: 268, stopTime: 70, restTime: 3, timesDescription: 60, actionDescription: "进阶三头肌动作")
            
            ], category: .workout),
        NewListModel(videoImg: "workout4", durationLbl: 7, videoTitle: "连续22天的腹肌训练计划", videoDescription: "FittingRoomTW", intensity: "入门", videoID: "EIoryEvS2Gc", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 115.0, stopTime: 15, restTime: 30, timesDescription: 45, actionDescription: "仰卧抬腿", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 164.0, stopTime: 20.0, restTime: 30, timesDescription: 45, actionDescription: "侧步棒式", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 200.0, stopTime: 20.0, restTime: 30, timesDescription: 40.0, actionDescription: "12次X卷腹", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 233.0, stopTime: 37.0, restTime: 30, timesDescription: 40.0, actionDescription: "10次左侧旋转侧棒式", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 233.0, stopTime: 37.0, restTime: 30, timesDescription: 40.0, actionDescription: "10次右侧旋转侧棒式", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 289.0, stopTime: 23.0, restTime: 30, timesDescription: 45.0, actionDescription: "屈体", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 330.0, stopTime: 330.0, restTime: 30, timesDescription: 30, actionDescription: "固定单车式卷腹", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .workout),
        NewListModel(videoImg: "workout5", durationLbl: 7, videoTitle: "特快瘦大腿1个月内见效", videoDescription: "Coffee林芊妤" , intensity: "入门", videoID: "3X1PL7ym04I", timeRange: TimeLength.threeToNine, actionModel: [
            
            NewActionModel(youtubeTime: 67, stopTime: 60, restTime: 10, timesDescription: 50, actionDescription: "左右20次", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 140, stopTime: 60, restTime: 10, timesDescription: 50, actionDescription: "左右20次", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 214, stopTime: 60, restTime: 10, timesDescription: 50, actionDescription: "升起20次", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 279, stopTime: 60, restTime: 10, timesDescription: 50, actionDescription: "升起20次", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 353, stopTime: 60, restTime: 10, timesDescription: 50, actionDescription: "升起20次", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 438, stopTime: 60, restTime: 10, timesDescription: 50, actionDescription: "升起20次", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 438, stopTime: 60, restTime: 10, timesDescription: 50, actionDescription: "画圈20次﻿", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .workout),
        NewListModel(videoImg: "workout6", durationLbl: 2, videoTitle: "5分钟在家瘦手臂运动，甩掉拜拜肉显锁骨", videoDescription: "周六野 Zoey", intensity: "入门", videoID: "uVUceueG3Ws", timeRange: TimeLength.max3, actionModel: [
            
            NewActionModel(youtubeTime: 81, stopTime: 30, restTime: 3, timesDescription: 20, actionDescription: "超人动作", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 153, stopTime: 40, restTime: 3, timesDescription: 20, actionDescription: "元宝动作", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 215, stopTime: 3, restTime: 30, timesDescription: 20, actionDescription: "滑水动作", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false),
            
            NewActionModel(youtubeTime: 294, stopTime: 30, restTime: 3, timesDescription: 20, actionDescription: "拳击动作", cellStatus: CellPlay.willplay, actionOrRest: ActionOnOff.action, playingOrPause: PlayingOnOff.playing, firstPlayAction: true, firstPlayRest: true, actionCellDidInvisiable: false, restCellDidInvisiable: false)
            
            ], category: .workout)
        
    ]
    
    private let scoreArray = [
        ScoreModel(scoreImg: "score_1", titleLbl: "轻松"),ScoreModel(scoreImg: "score_2", titleLbl: "适中"),ScoreModel(scoreImg: "score_3", titleLbl: "挑战级"),ScoreModel(scoreImg: "score_4", titleLbl: "极为吃力")
    ]
    
    private let settingArray = [
        
        SettingModel(titleLbl: "关于减脂达人", statusLbl: ""),
        SettingModel(titleLbl: "意见回馈", statusLbl: ""),
        SettingModel(titleLbl: "评分鼓励", statusLbl: ""),
        SettingModel(titleLbl: "每日运动推播", statusLbl: "尚未设定")
        
    ]
    
    private let settingSwitchArray = [
        
        SettingSwitchModel(titleLbl: "提示音设定", statusSwitch: false),
        SettingSwitchModel(titleLbl: "Apple Health", statusSwitch: false)
        
    ]
    
    private let workout = [ListModel]()
    
    func getfitCategories() -> [FitnessModel] {
        return fitCategories
    }
    
    func getList(forListTitle title: String) -> [NewListModel] {
        switch title {
        case "All Fat Loss":
            return getCore()
        case "Knowledge":
            return getKnowledge()
        case "HIIT":
            return getHIIT()
        case "Workout":
            return getWorkout()
        default:
            return getCore()
        }
    }
    
    func getCore() -> [NewListModel] {
        return allArray
    }
    
    func getKnowledge() -> [NewListModel] {
        return knowledgeArray
    }
    
    func getHIIT() -> [NewListModel] {
        return hiitArray
    }
    
    func getWorkout() -> [NewListModel] {
        return workoutArray
    }
    
    func getScoreArray() -> [ScoreModel] {
        return scoreArray
    }
    
    func getSettingArray() -> [SettingModel] {
        return settingArray
    }
    
    func getSettingSwitchArray() -> [SettingSwitchModel] {
        return settingSwitchArray
    }
    
}
