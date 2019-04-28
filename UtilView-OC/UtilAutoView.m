//
//  WENewLoginOneViewController.m
//  WhewElectricity
//
//  Created by dordly on 2018/1/24.
//  Copyright © 2018年 dordly. All rights reserved.
//

#import "UtilAutoView.h"

@implementation UtilAutoView

UIView *insertAutoView(id superView, UIColor *color){
    
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = color;
    [superView addSubview:view];
    
    return view;
    
}
UIButton *insertAutoButton(id superView,UIImage *normalImage,UIImage *selectedImage,UIColor *bgColor,UIColor *titleNormalColor,UIColor *titleSelectedColor,UIFont *titleFont,NSString *titleStr,UIControlContentHorizontalAlignment slignment, BOOL masksToBounds, CGFloat cornerRadius, CGFloat borderWidth, UIColor *borderColor){
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    if (normalImage!=nil&&selectedImage!=nil){
        [btn setBackgroundImage:normalImage forState:UIControlStateNormal];
        [btn setBackgroundImage:selectedImage forState:UIControlStateSelected];
    }
    [btn setTitleColor:titleSelectedColor forState:UIControlStateSelected];
    [btn setTitleColor:titleNormalColor forState:UIControlStateNormal];
    [btn setBackgroundColor:bgColor];
    btn.titleLabel.font=titleFont;
    btn.contentHorizontalAlignment = slignment;
    [btn setTitle:titleStr forState:UIControlStateNormal];
    [superView addSubview:btn];
    if (masksToBounds){
        btn.layer.masksToBounds=masksToBounds;
        btn.layer.cornerRadius=cornerRadius;
        btn.layer.borderWidth = borderWidth;
        btn.layer.borderColor = borderColor.CGColor;
    }
    return btn;
    
};
UIButton *changeAutoButton(id superView,UIImage *normalImage,UIImage *selectedImage,UIColor *bgColor,UIColor *titleNormalColor,UIColor *titleSelectedColor,UIFont *titleFont,NSString *titleStr){
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:normalImage forState:UIControlStateNormal];
    [btn setImage:selectedImage forState:UIControlStateSelected];
    [btn setTitleColor:titleSelectedColor forState:UIControlStateSelected];
    [btn setTitleColor:titleNormalColor forState:UIControlStateNormal];
    [btn setBackgroundColor:bgColor];
    btn.titleLabel.font=titleFont;
    [btn setTitle:titleStr forState:UIControlStateNormal];
    [superView addSubview:btn];
    return btn;
    
};
UIImageView *insertAutoImage(id superView, UIImage *image,UIColor *bgColor){
    
    UIImageView *img = [[UIImageView alloc]init];
    img.backgroundColor=bgColor;
    [img setImage:image];
    img.contentMode=UIViewContentModeScaleToFill;
    img.clipsToBounds=YES;
    [superView addSubview:img];
    return img;
}

UILabel *insertAutoMutiLabel(id superView,UIColor *textColor,UIColor *bgColor,UIFont *font,NSTextAlignment align,NSString *contentStr, NSInteger lineNum,NSLineBreakMode lineBreakMode){
    
    UILabel *label=[[UILabel alloc]init];
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
UILabel *insertAutoLabel(id superView,UIColor *textColor,UIColor *bgColor,UIFont *font,NSTextAlignment align,NSString *contentStr){
    
    UILabel *label=[[UILabel alloc]init];
    label.backgroundColor = bgColor;
    label.font = font;
    label.textAlignment = align;
    label.textColor=textColor;
    label.text =contentStr;
    
    [superView addSubview:label];
    return label;
}

UITextField *insertAutoTextField(id superView,NSString*placeholderStr,UIFont *font,NSTextAlignment alignment,UIColor *textColor,UIColor *bgColor){
    
    UITextField *textField = [[UITextField alloc]init];
    textField.borderStyle = UITextBorderStyleNone;
    textField.placeholder=placeholderStr;
    textField.autocorrectionType = UITextAutocorrectionTypeYes;
    textField.returnKeyType = UIReturnKeyDone;
    textField.clearButtonMode = UITextFieldViewModeNever;
    textField.font = font;
    textField.textAlignment = alignment;
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textField.textColor= textColor;
    [textField setBackgroundColor:bgColor];
    [superView addSubview:textField];
    return textField;
    
    
}
UITextView *insertAutoTextView(id superView,NSString*placeholderStr,UIFont *font,NSTextAlignment alignment,UIColor *textColor,UIColor *bgColor){

    UITextView *textView = [[UITextView alloc]init];
    textView.placeholder=placeholderStr;
    textView.font = font;
    textView.textAlignment = alignment;
    textView.textColor= textColor;
    [textView setBackgroundColor:bgColor];
    [superView addSubview:textView];
    return textView;
    
}
@end
