//
//  ViewController.h
//  Calculator++
//
//  Created by Viacheslav Poshelyk on 10/21/16.
//  Copyright © 2016 ViachaslauPashaliuk. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FormulasViewController;

typedef enum {MULTIPLY , DIVIDE , PLUS , MINUS} CalcOperations;
@interface ViewController : UIViewController {
    IBOutlet UITextField *disp;
    NSString *storage;
    CalcOperations operation;
    }
-(IBAction) b1;
-(IBAction) b2;
-(IBAction) b3;
-(IBAction) b4;
-(IBAction) b5;
-(IBAction) b6;
-(IBAction) b7;
-(IBAction) b8;
-(IBAction) b9;
-(IBAction) b0;
-(IBAction) equal;
-(IBAction) multiply;
-(IBAction) divide;
-(IBAction) plus;
-(IBAction) minus;
-(IBAction) clear;




@end

