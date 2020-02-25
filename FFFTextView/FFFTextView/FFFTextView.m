//
//  FFFTextView.m
//  FFFTextView
//
//  Created by simon on 2020/2/25.
//  Copyright © 2020 simon. All rights reserved.
//

#import "FFFTextView.h"


@interface FFFTextView ()<UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *placeHolderLabel;

@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UITextView *textView;


@end


@implementation FFFTextView



- (void)setPlaceHolder:(NSString *)placeHolder{
    self.placeHolderLabel.text = placeHolder;
  
}
- (void)setFont:(UIFont *)font{
    self.textView.font = font;
    self.placeHolderLabel.font = font;
}


- (void)drawRect:(CGRect)rect{
    self.view.frame = self.bounds;
}

- (void)setupView {

    [[NSBundle mainBundle]loadNibNamed:NSStringFromClass([self class]) owner:self options:nil];
    [self addSubview:self.view];
    //默认不限制
    _maxLength = 1000;
    _textView.returnKeyType = UIReturnKeyDone;
}

- (void)setMaxLength:(CGFloat)maxLength {
    _maxLength = maxLength;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupView];
    
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}


- (void)textViewDidChange:(UITextView *)textView {
    if (textView.text.length) {
        self.placeHolderLabel.hidden = YES;
    }else{
        self.placeHolderLabel.hidden = NO;
    }
}

- (void)textViewDidEndEditing:(UITextView *)textView{
    self.text = textView.text;
}


- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    
    
    //解决限制字数 在删除无法响应的问题
    if (range.length == 1 && text.length == 0) {
        
        return YES;
    }
    
    if ([text isEqualToString:@"\n"]) {
        [self.textView resignFirstResponder];
        return NO;
    }
    
    if (textView.text.length > _maxLength) {
        return NO;
    }

    
    
    
    return YES;
}




@end
