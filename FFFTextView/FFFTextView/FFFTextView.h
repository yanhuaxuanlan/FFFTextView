//
//  FFFTextView.h
//  FFFTextView
//
//  Created by simon on 2020/2/25.
//  Copyright © 2020 simon. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FFFTextView : UIView
//设置占位文字
@property(nonatomic,strong)NSString * placeHolder;
//设置字体
@property(nonatomic,strong)UIFont* font;
//最大字符限制
@property(nonatomic,assign)CGFloat maxLength;

@property(nonatomic,copy)NSString *text;
@end

NS_ASSUME_NONNULL_END
