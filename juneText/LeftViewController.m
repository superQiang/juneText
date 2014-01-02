//
//  LeftViewController.m
//  juneText
//
//  Created by apple on 13-7-11.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "LeftViewController.h"
#import "FirstViewController.h"
#define  win_height [UIScreen mainScreen].bounds.size.height
@interface LeftViewController ()

@end

@implementation LeftViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _appDelegate =(AppDelegate*) [[UIApplication sharedApplication]delegate];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"LEFT";
   // self.view.backgroundColor = [UIColor orangeColor];
	// Do any additional setup after loading the view.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(30, win_height/5, 70, 40);
    [btn setBackgroundColor:[UIColor orangeColor]];
    [btn setTitle:@"changeCenterVC" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(changeCenteVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}
-(void)changeCenteVC
{
    NSLog(@"left");
    [self.viewDeckController closeLeftViewAnimated:YES completion:^(IIViewDeckController *controller) {
        FirstViewController *firstvc = [[[FirstViewController alloc]init]autorelease];
        UINavigationController *nacVC = [[[UINavigationController alloc]initWithRootViewController:firstvc]autorelease];
        self.viewDeckController.centerController = nacVC;
        
        
    }
     ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
