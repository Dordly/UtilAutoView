//
//  PublicUtilAutoView.swift
//  WhewElectricity-Swift
//
//  Created by dordly on 2019/4/10.
//  Copyright © 2019 dordly. All rights reserved.
//

import UIKit

//MARK:UIView
public func insertAutoView(superView:UIView, bgColor:UIColor) -> UIView {
    let mainView = UIView.init()
    mainView.backgroundColor = bgColor
    superView.addSubview(mainView)
    return mainView
}
//MARK:UIButton
public func insertAutoButton(superView:UIView, normalImage:String, selectedImage:String, bgColor:UIColor, titleNormalColor:UIColor, titleSelectedColor:UIColor, titleFont:UIFont, titleStr:String, slignment:UIControl.ContentHorizontalAlignment, masksToBounds:Bool, cornerRadius:CGFloat, borderWidth:CGFloat, borderColor:UIColor) -> UIButton {
    let mainBt = UIButton.init(type: .custom)
    if normalImage != "" {
        mainBt.setBackgroundImage(Img_Name(n: normalImage), for: .normal)
    }
    if selectedImage != "" {
        mainBt.setBackgroundImage(Img_Name(n: selectedImage), for: .selected)
    }
    
    mainBt.setTitleColor(titleNormalColor, for: .normal)
    mainBt.setTitleColor(titleSelectedColor, for: .selected)
    mainBt.backgroundColor = bgColor
    mainBt.titleLabel?.font = titleFont
    mainBt.contentHorizontalAlignment = slignment
    mainBt.setTitle(titleStr, for: .normal)
    superView.addSubview(mainBt)
    if  masksToBounds {
        mainBt.layer.masksToBounds=masksToBounds;
        mainBt.layer.cornerRadius=cornerRadius;
        mainBt.layer.borderWidth = borderWidth;
        mainBt.layer.borderColor = borderColor.cgColor;
    }
    return mainBt
}
public func changeAutoButton(superView:UIView,normalImage:String, selectedImage:String, bgColor:UIColor, titleNormalColor:UIColor, titleSelectedColor:UIColor, titleFont:UIFont, titleStr:String) -> UIButton {
    let mainBt = UIButton.init(type: .custom)
    mainBt.setBackgroundImage(Img_Name(n: normalImage), for: .normal)
    mainBt.setBackgroundImage(Img_Name(n: selectedImage), for: .selected)
    mainBt.setTitleColor(titleNormalColor, for: .normal)
    mainBt.setTitleColor(titleSelectedColor, for: .selected)
    mainBt.backgroundColor = bgColor
    mainBt.titleLabel?.font = titleFont
    mainBt .setTitle(titleStr, for: .normal)
    superView.addSubview(mainBt)
    return mainBt
}
//MARK:UIImageView
public func insertAutoImage(superView:UIView, image:String, bgColor:UIColor) -> UIImageView {
    let mainImageView = UIImageView.init()
    mainImageView.backgroundColor = bgColor
    mainImageView.image = Img_Name(n: image)
    mainImageView.contentMode = .scaleToFill
    mainImageView.clipsToBounds = true
    superView.addSubview(mainImageView)
    return mainImageView
}
//MARK:UILabel
public func insertAutoMutilLabel(superView:UIView, textColor:UIColor, bgColor:UIColor, font:UIFont, align:NSTextAlignment, contentStr:String, lineNum:Int, lineBreakMode:NSLineBreakMode) -> UILabel {
    let mainLb = UILabel.init()
    mainLb.backgroundColor = bgColor
    mainLb.font = font
    mainLb.textAlignment = align
    mainLb.textColor = textColor
    mainLb.text = contentStr
    mainLb.lineBreakMode = lineBreakMode
    mainLb.numberOfLines = lineNum
    superView.addSubview(mainLb)
    return mainLb
}
public func insertAutoLabel(superView:UIView, textColor:UIColor, bgColor:UIColor, font:UIFont, align:NSTextAlignment, contentStr:String) -> UILabel {
    let mainLb = UILabel.init()
    mainLb.backgroundColor = bgColor
    mainLb.font = font
    mainLb.textAlignment = align
    mainLb.textColor = textColor
    mainLb.text = contentStr
    superView.addSubview(mainLb)
    return mainLb
}
//MARK:UITextField
public func insertAutoTextField(superView:UIView, placeholderStr:String, font:UIFont, alignment:NSTextAlignment, textColor:UIColor, bgColor:UIColor) -> UITextField{
    let mainTextField = UITextField.init()
    mainTextField.borderStyle = .none
    mainTextField.placeholder = placeholderStr
    mainTextField.autocorrectionType = .yes
    mainTextField.returnKeyType = .done
    mainTextField.clearButtonMode = .never
    mainTextField.font = font
    mainTextField.textAlignment = alignment
    mainTextField.contentVerticalAlignment = .center
    mainTextField.textColor = textColor
    mainTextField.backgroundColor = bgColor
    superView.addSubview(mainTextField)
    return mainTextField
}
//MARK:UITextView
public func insertAutoTextView(superView:UIView, placeholderStr:String, font:UIFont, alignment:NSTextAlignment, textColor:UIColor, bgColor:UIColor) -> UITextView {
    let mainTextView = UITextView.init()
    mainTextView.font = font
    mainTextView.textAlignment = alignment
    mainTextView.textColor = textColor
    mainTextView.backgroundColor = bgColor
    superView.addSubview(mainTextView)
    return mainTextView
}
