//
//  ViewController.m
//  FFFTextView
//
//  Created by simon on 2020/2/25.
//  Copyright © 2020 simon. All rights reserved.
//

#import "ViewController.h"
#import "FFFTextView.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet FFFTextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.textView.placeHolder = @"测试啊啊啊";
    self.textView.font = [UIFont systemFontOfSize:30];
    self.textView.layer.borderWidth = 2;
    self.textView.layer.borderColor = [UIColor grayColor].CGColor;
    
}



- (IBAction)footerAction {
    
    
    NSLog(@"%@",self.textView.text);
}






@end
