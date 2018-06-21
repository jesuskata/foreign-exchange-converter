//
//  ViewController.m
//  foreign-exchange-converter
//
//  Created by Jesús Alejandro Romero Zárate on 21/06/18.
//  Copyright © 2018 Jesús Alejandro Romero Zárate. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

const float dllPrice = 20.3937;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)convertButton:(UIButton *)sender {
    // This is the largest way to resolve this program
    float dllValue = [self.mxnMoney.text floatValue];
    float mxnConvert = dllValue * dllPrice;
    
    // This is the shortest way to resolve this program
    [self.dllResult setText:[NSString stringWithFormat:@"$ %.2f MXN = $ %.2f DLL", dllValue, mxnConvert]];
    self.dllResult.hidden = NO;
}
@end
