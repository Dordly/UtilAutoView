//
//  WENewLoginOneViewController.m
//  WhewElectricity
//
//  Created by dordly on 2018/1/24.
//  Copyright © 2018年 dordly. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface UtilView : NSObject

#pragma mark ============>UIView
//设置常见View
UIView *insertView(id view, UIColor *color,CGRect rect);

#pragma mark =============>UIButton
//设置标题Button
UIButton *insertTitleButton(id superView, UIColor *textColor, CGRect rect, id target,SEL action, NSInteger tag, NSString *text,UIFont *font,UIColor *h_Color);
//设置ImageButton
UIButton *insertImageButton(id superView, UIColor *textColor, CGRect rect, id target,SEL action, UIImage *image_n,UIImage *image_h,NSInteger tag, NSString *text,UIFont *font,UIColor *h_Color);

#pragma mark ==============> UIImageView
//设置常见ImageView
UIImageView *insertImage(id superView, UIImage *image, CGRect rect);

UILabel *insertMutiLabel(id superView,UIColor *textColor,UIColor *bgColor,UIFont *font,NSTextAlignment align,NSString *contentStr, NSInteger lineNum,NSLineBreakMode lineBreakMode ,CGRect rect);

UILabel *insertLabel(id superView,UIColor *textColor,UIColor *bgColor,UIFont *font,NSTextAlignment align,NSString *contentStr,CGRect rect);

@end
