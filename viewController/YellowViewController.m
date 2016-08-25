//
//  YellowViewController.m
//  viewController
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 MarsCorp. All rights reserved.
//

#import "YellowViewController.h"
#import "GrayViewController.h"
#import "GreenViewController.h"

@interface YellowViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation YellowViewController
- (IBAction)grayButtonClicked:(id)sender {
    
}
//- (IBAction)grayButtonClicked:(id)sender {
//
////    GrayView
////    *gVC = [self.storyboard instantiateViewControllerWithIdentifier:@"grayview"];
//    
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.myLabel.text = self.userStr;
}
- (IBAction)buttonClicked:(id)sender {
    [self performSegueWithIdentifier:@"blueway" sender:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)changeText
{
  self.userStr = @"TEST";
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    GreenViewController *gVC = (GreenViewController*)segue.destinationViewController;
//    gVC.pVC = self;

 
                                                       
                                                       
}

    /*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
