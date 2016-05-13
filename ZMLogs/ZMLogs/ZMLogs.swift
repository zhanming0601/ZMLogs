//
//  ZMLogs.swift
//  ZMLogs
//
//  Created by zhanming on 16/5/13.
//  Copyright © 2016年 zhanming. All rights reserved.
//

import UIKit



//与 Objective-C 语言不同的是，Swift 允许直接设置结构体属性的子属性

public struct ZMLogsManager {
    
    //是否开启调试（记得开启或者关闭在AppDelegate里写）
    
    public static var enabled = true
    
}


//#file 获取方法调用者所在的文件路径
//#function 获取方法调用者所在的方法名
//#line 获取所在的行数

public func ZMLogs<T>(debug: T, _ file: String = #file , _ function: String = #function, _ line: Int = #line) {
   if(ZMLogsManager.enabled)
   {
        //let fileExtension = file.ns.lastPathComponent.ns.pathExtension
        let filename = file.ns.lastPathComponent.ns.stringByDeletingPathExtension
        print("\(filename):\(function):[\(line)]\(debug)")
   }
}

private extension String {
    /// Qorum Extension
    var ns: NSString { return self as NSString }
}