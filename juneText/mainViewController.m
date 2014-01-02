//
//  mainViewController.m
//  juneText
//
//  Created by apple on 13-7-9.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "mainViewController.h"
#import "IIViewDeckController.h"
#import "MBProgressHUD.h"
@interface mainViewController ()

@end

@implementation mainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.navigationItem.title = @"HEllo";
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTintColor:[UIColor yellowColor]];
    btn.frame = CGRectMake(100, 100, 100, 60);
    [btn setTitle:@"hello" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2 setTintColor:[UIColor yellowColor]];
    btn2.frame = CGRectMake(100, 200, 100, 60);
    [btn2 setTitle:@"添加活动框" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(btnAction2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    
    UIButton *btn21 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn21 setTintColor:[UIColor yellowColor]];
    btn21.frame = CGRectMake(100, 300, 50, 30);
    [btn21 setTitle:@"去除活动框" forState:UIControlStateNormal];
    [btn21 addTarget:self action:@selector(btnAction3:) forControlEvents:UIControlEventTouchUpInside];
    //[self.view addSubview:btn21];
    UIBarButtonItem *bar = [[UIBarButtonItem alloc] initWithCustomView:btn21];
    [self.navigationItem setRightBarButtonItem:bar];
    
    
}
-(void)btnAction:(id)sender
{
    [self.viewDeckController toggleLeftViewAnimated:YES];
    //将数组倒序
    NSMutableArray *arr  = [NSMutableArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5", nil];
    NSLog(@"arr = %@",arr);
    
    NSEnumerator *enumer = [arr reverseObjectEnumerator];
    
    arr = [[NSMutableArray alloc]initWithArray:[enumer allObjects]];
    
    NSLog(@"arr2 = %@",arr);
    
    
    
}


-(void)btnAction2:(id)sender{
    
    //添加活动框
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
}
-(void)btnAction3:(id)sender{
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
