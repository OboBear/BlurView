//
//  ViewController.m
//  OboBlurView
//
//  Created by obo on 15/11/7.
//  Copyright © 2015年 obo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"originalImage.jpg"]];
    [self.view addSubview:imageView];
    imageView.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *visualEffectView = [[UIVisualEffectView alloc]initWithFrame:CGRectMake(imageView.frame.origin.x, imageView.frame.origin.y, imageView.frame.size.width/2, imageView.frame.size.height/2)];
    [visualEffectView setEffect:blurEffect];
    [self.view addSubview:visualEffectView];
    
    
    [UIView animateWithDuration:5 animations:^{
        
        visualEffectView.center = CGPointMake(imageView.frame.origin.x+imageView.frame.size.width, imageView.frame.origin.y+imageView.frame.size.height);
    }];
    
                              
}

@end
