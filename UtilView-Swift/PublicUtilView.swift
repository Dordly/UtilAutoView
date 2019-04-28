//
//  PublicUtilView.swift
//  WhewElectricity-Swift
//
//  Created by dordly on 2019/4/16.
//  Copyright © 2019 dordly. All rights reserved.
//

import UIKit

//MARK:UIView
public func insertView(superView:UIView, bgcolor:UIColor, rect:CGRect) -> UIView {
    let mainView = UIView.init(frame: rect)
    mainView.backgroundColor = bgcolor
    superView.addSubview(mainView)
    return mainView
}
//MARK:UIButton
public func insertTitleButton(superView:UIView, textColor:UIColor, rect:CGRect, target:Any, action:Selector, tag:
    Int, text:String, font:UIFont, h_color:UIColor) -> UIButton {
    return insertImageButton(superView: superView, textColor: textColor, rect: rect, target: target, action: action, image_n: "", image_h: "", tag: tag, text: text, font: font, h_Color: h_color)
}
public func insertImageButton(superView:UIView, textColor:UIColor, rect:CGRect, target:Any, action:Selector, image_n:String, image_h:String, tag:Int, text:String, font:UIFont, h_Color:UIColor) -> UIButton {
    let mainButton = UIButton.init(frame: rect)
    mainButton.addTarget(target, action: action, for: .touchUpInside)
    if "" != image_n {
        mainButton.setBackgroundImage(UIImage.init(named: image_n), for: .normal)
    }
    if "" != image_h {
        mainButton.setBackgroundImage(UIImage.init(named: image_h), for: .selected)
    }
    mainButton.tag = tag
    if text.count > 1 {
        mainButton.setTitle(text, for: .normal)
        mainButton.setTitleColor(textColor, for: .normal)
        mainButton.setTitleColor(h_Color, for: .highlighted)
    }
    mainButton.titleLabel?.font = font
    superView.addSubview(mainButton)
    return mainButton
}
//MARK:UILabel
public func insertLabel(superView:UIView, textColor:UIColor, bgColor:UIColor, font:UIFont, alignment:NSTextAlignment, contentStr:String, rect:CGRect) -> UILabel {
    let mainLabel = UILabel.init(frame: rect)
    mainLabel.backgroundColor = bgColor
    mainLabel.font = font
    mainLabel.textAlignment = alignment
    mainLabel.textColor = textColor
    mainLabel.text = contentStr
    superView.addSubview(mainLabel)
    return mainLabel
}
public func insertMutilLable(superView:UIView, bgColor:UIColor, textColor:UIColor, font:UIFont, alignment:NSTextAlignment,contentStr:String, lineNum:Int, lineBreakMode:NSLineBreakMode, rect:CGRect) -> UILabel {
    let mainLabel = UILabel.init(frame: rect)
    mainLabel.backgroundColor = bgColor
    mainLabel.font = font
    mainLabel.textAlignment = alignment
    mainLabel.textColor = textColor
    mainLabel.text = contentStr
    mainLabel.lineBreakMode = lineBreakMode
    mainLabel.numberOfLines = lineNum
    superView.addSubview(mainLabel)
    return mainLabel
}
//MARK:UIImageView
public func insertImageView(superView:UIView, imge:String, rect:CGRect) -> UIImageView {
    let mainImageView = UIImageView.init(frame: rect)
    mainImageView.contentMode = .scaleAspectFill
    mainImageView.clipsToBounds = true
    mainImageView.layer.masksToBounds = true
    mainImageView.image = Img_Name(n: imge)
    superView.addSubview(mainImageView)
    return mainImageView
}
