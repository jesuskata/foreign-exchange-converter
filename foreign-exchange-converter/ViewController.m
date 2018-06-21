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

const float dllToMxn = 20.3937;
const float dllToEur = 0.8622;
const float dllToCol = 2898.5507;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)convertButton:(UIButton *)sender {
    float dllValue = [self.mxnMoney.text floatValue];
    float mxnConvert = dllValue * dllToMxn;
    
    [self.dllResult setText:[NSString stringWithFormat:@"$ %.2f DLL = $ %.2f MXN", dllValue, mxnConvert]];
    self.dllResult.hidden = NO;
}

- (IBAction)dllToEurButton:(UIButton *)sender {
    float dllValue = [self.mxnMoney.text floatValue];
    float eurConvert = dllValue * dllToEur;
    
    [self.dllResult setText:[NSString stringWithFormat:@"$ %.2f DLL = $ %.2f EUR", dllValue, eurConvert]];
    self.dllResult.hidden = NO;
}

- (IBAction)dllToColButton:(UIButton *)sender {
    float dllValue = [self.mxnMoney.text floatValue];
    float colConvert = dllValue * dllToCol;
    
    [self.dllResult setText:[NSString stringWithFormat:@"$ %.2f DLL = $ %.2f COL", dllValue, colConvert]];
    self.dllResult.hidden = NO;
}
@end
