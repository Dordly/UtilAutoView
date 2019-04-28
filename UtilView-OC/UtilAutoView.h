//
//  WENewLoginOneViewController.m
//  WhewElectricity
//
//  Created by dordly on 2018/1/24.
//  Copyright © 2018年 dordly. All rights reserved.
//


#import <UIKit/UIKit.h>
@interface UtilAutoView : NSObject
#pragma mark ============>UIView
//设置常见View
UIView *insertAutoView(id view, UIColor *color);


#pragma mark =============>UIButton
UIButton *insertAutoButton(id superView,UIImage *normalImage,UIImage *selectedImage,UIColor *bgColor,UIColor *titleNormalColor,UIColor *titleSelectedColor,UIFont *titleFont,NSString *titleStr,UIControlContentHorizontalAlignment slignment, BOOL masksToBounds, CGFloat cornerRadius, CGFloat borderWidth, UIColor *borderColor);

UIButton *changeAutoButton(id superView,UIImage *normalImage,UIImage *selectedImage,UIColor *bgColor,UIColor *titleNormalColor,UIColor *titleSelectedColor,UIFont *titleFont,NSString *titleStr);
#pragma mark ==============> UIImageView
UIImageView *insertAutoImage(id superView, UIImage *image,UIColor *bgColor);
#pragma mark ==============> UILabel
UILabel *insertAutoMutiLabel(id superView,UIColor *textColor,UIColor *bgColor,UIFont *font,NSTextAlignment align,NSString *contentStr, NSInteger lineNum,NSLineBreakMode lineBreakMode);
UILabel *insertAutoLabel(id superView,UIColor *textColor,UIColor *bgColor,UIFont *font,NSTextAlignment align,NSString *contentStr);

#pragma mark ===============>UITextField
UITextField *insertAutoTextField(id superView,NSString*placeholderStr,UIFont *font,NSTextAlignment alignment,UIColor *textColor,UIColor *bgColor);

#pragma mark ===============>UITextView
UITextView *insertAutoTextView(id superView,NSString*placeholderStr,UIFont *font,NSTextAlignment alignment,UIColor *textColor,UIColor *bgColor);


@end


