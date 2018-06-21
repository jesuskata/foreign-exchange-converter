//
//  ViewController.h
//  foreign-exchange-converter
//
//  Created by Jesús Alejandro Romero Zárate on 21/06/18.
//  Copyright © 2018 Jesús Alejandro Romero Zárate. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *mxnMoney;
@property (strong, nonatomic) IBOutlet UILabel *dllResult;

- (IBAction)convertButton:(UIButton *)sender;

@end

