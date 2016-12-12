//
//  ViewController.m
//  TimShareDemo
//
//  Created by tim on 16/11/9.
//  Copyright © 2016年 tim. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "TimShare.h"


@interface ViewController ()
{
    UIButton *btn;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:btn];
    btn.center = self.view.center;
    [btn setTitle:@"分享" forState:0];
    
    [btn setBackgroundColor:[UIColor blackColor]];
    
    
    [btn addTarget:self action:@selector(btnAct:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
}

-(void)btnAct:(id)sender{
    
    TimCoreAppDelegate *app = (TimCoreAppDelegate *) [AppDelegate shareInstance];
    
    if( NO == [app respondsToSelector:@selector(shareInfo:content:image:url:actionSheet:onShareStateChanged:activePlatforms:)]){
        NSLog(@"不支持");
        return;
        
    }
    NSLog(@"支持");

//    [app shareInfo:@"标题" content:@"内容" image:nil url:@"http://baidu.com" actionSheet:sender onShareStateChanged:^(BOOL sucess, NSString *msg) {
//        
//        NSLog(@"%@",msg);
//    } activePlatforms:nil];
//
    
    [app shareInfo:@"标题"  content:@"内容" image:nil url:@"" actionSheet:sender onShareStateChanged:^(BOOL sucess, NSString *msg) {
        
        NSLog(@"%@",msg);
    } activePlatforms:nil];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
