//
//  ViewController.m
//  viewController
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 MarsCorp. All rights reserved.
//

#import "ViewController.h"
#import "YellowViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UITapGestureRecognizer * tapGesture =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
    
    [self.view addGestureRecognizer:tapGesture];
    
}


-(void)tap:(UITapGestureRecognizer *)param
{
    [self.myTextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

     YellowViewController *yVC=(YellowViewController*)segue.destinationViewController;
     yVC.userStr = _myTextField.text;
 }


@end
