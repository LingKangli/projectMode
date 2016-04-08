//
//  ViewController.m
//  ElectricPro
//
//  Created by LingKangli on 16/3/3.
//  Copyright © 2016年 com.TongChang.Co., Ltd. All rights reserved.
//

#import "ViewController.h"
#import "AddressViewController.h"
#import "DetailViewController.h"
#import "ListViewController.h"
#import "TabBarViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UITextField *pwdText;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
- (IBAction)loginBtn:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginBtn:(id)sender {
#pragma mark goToNextPage ---- tab Bar
    
    NSMutableArray * items = [[NSMutableArray alloc]init];
    
    //每个标签下的第一个controller
    AddressViewController* addressVC = [[AddressViewController alloc]initWithNibName:@"AddressViewController" bundle:nil];
    ListViewController* listVC = [[ListViewController alloc]initWithNibName:@"ListViewController" bundle:nil];
    DetailViewController* detailVC = [[DetailViewController alloc]initWithNibName:@"DetailViewController" bundle:nil];
    
    //每个标签对应的导航
    UINavigationController* nav1 = [[UINavigationController alloc] initWithRootViewController:addressVC] ;//每个导航中加入了其对应的第一个controller
    UINavigationController* nav2 = [[UINavigationController alloc] initWithRootViewController:listVC] ;
    UINavigationController* nav3 = [[UINavigationController alloc] initWithRootViewController:detailVC] ;
    
    //将导航添加到数组中
    [items addObject:nav1];
    [items addObject:nav2];
    [items addObject:nav3];
    
    //
    //新建TabBar,并且将数组中的导航根加入其中。
    TabbarViewController* tabBar = [[TabbarViewController alloc]init];
    [tabBar setTitle:@"TabBarController"];
    [tabBar setViewControllers:items];
    
    [self presentModalViewController:tabBar animated:NO];

}
@end
