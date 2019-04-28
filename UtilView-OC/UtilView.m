//
//  WENewLoginOneViewController.m
//  WhewElectricity
//
//  Created by dordly on 2018/1/24.
//  Copyright © 2018年 dordly. All rights reserved.
//

#import "UtilView.h"

@implementation UtilView


UIView *insertView(id superView, UIColor *color,CGRect rect){
    
    UIView *view = [[UIView alloc]initWithFrame:rect];
    view.backgroundColor = color;
    [superView addSubview:view];
    
    return view;
}

UIButton *insertTitleButton(id superView, UIColor *textColor, CGRect rect, id target,SEL action, NSInteger tag, NSString *text, UIFont *font,UIColor *h_Color){
    return insertImageButton(superView, textColor, rect, target, action, nil, nil, tag, text, font,h_Color);
}


UIButton *insertImageButton(id superView, UIColor *textColor, CGRect rect, id target,SEL action, UIImage *image_n,UIImage *image_h,NSInteger tag, NSString *text,UIFont *font,UIColor *h_Color){
    
    
    UIButton *button = [[UIButton alloc]initWithFrame:rect];
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    if (nil != image_n) {
        [button setBackgroundImage:image_n forState:UIControlStateNormal];
    }
    
    if (nil != image_h){
        [button setBackgroundImage:image_h forState:UIControlStateNormal];
    }
    
    button.tag = tag;
    
    if (text.length > 1) {
        [button setTitle:text forState:UIControlStateNormal];
        [button setTitleColor:textColor forState:UIControlStateNormal];
        [button setTitleColor:h_Color forState:UIControlStateHighlighted];
    }
    
    button.titleLabel.font = font;
    
    [superView addSubview:button];
    
    return button;
    
}

UIImageView *insertImage(id superView, UIImage *image, CGRect rect){
    
    UIImageView *img = [[UIImageView alloc]initWithFrame:rect];
    img.contentMode=UIViewContentModeScaleAspectFill;
    img.clipsToBounds=YES;
    img.layer.masksToBounds=YES;
//    img.layer.borderWidth = 0.15;
//    img.layer.borderColor = ThirdColor.CGColor;
    
//    img.layer.masksToBounds=YES;
//    img.layer.cornerRadius=30;
//    img.layer.borderWidth = 0.15;
//    //设置边框颜色
//    img.layer.borderColor = ThirdColor.CGColor;
//    img.contentMode=UIViewContentModeScaleAspectFill;
//    img.clipsToBounds=YES;

    [img setImage:image];
    
    [superView addSubview:img];
    
    return img;
}

UILabel *insertMutiLabel(id superView,UIColor *textColor,UIColor *bgColor,UIFont *font,NSTextAlignment align,NSString *contentStr, NSInteger lineNum,NSLineBreakMode lineBreakMode ,CGRect rect){
    
    UILabel *label=[[UILabel alloc]initWithFrame: rect];
    label.backgroundColor = bgColor;
    label.font = font;
    label.textAlignment = align;
    label.textColor=textColor;
    label.text =contentStr;
    label.lineBreakMode = lineBreakMode;
    label.numberOfLines = lineNum;
    [superView addSubview:label];
    return label;
}
UILabel *insertLabel(id superView,UIColor *textColor,UIColor *bgColor,UIFont *font,NSTextAlignment align,NSString *contentStr,CGRect rect){
    
    UILabel *label=[[UILabel alloc]initWithFrame: rect];
    label.backgroundColor = bgColor;
    label.font = font;
    label.textAlignment = align;
    label.textColor=textColor;
    label.text =contentStr;
    
    [superView addSubview:label];
    return label;
}
@end
