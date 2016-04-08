//
//  ProObj.swift
//  ElectricPro
//
//  Created by LingKangli on 16/3/1.
//  Copyright © 2016年 com.TongChang.Co., Ltd. All rights reserved.
//


//Example Demo

import Foundation

@objc class Cat:NSObject{

    var name:String = ""
    
    func speak()->String{
        print("Meow")
      return "Meow"
    }
}