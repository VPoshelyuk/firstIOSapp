//
//  FormulasViewController.h
//  Calculator++
//
//  Created by Viacheslav Poshelyk on 10/26/16.
//  Copyright © 2016 ViachaslauPashaliuk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FormulasViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *a;
@property (weak, nonatomic) IBOutlet UITextField *b;
@property (weak, nonatomic) IBOutlet UITextField *c;
@property (weak, nonatomic) IBOutlet UITextField *x1;
@property (weak, nonatomic) IBOutlet UITextField *x2;
- (IBAction)Calc:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *hyp;
@property (weak, nonatomic) IBOutlet UITextField *cat1;
@property (weak, nonatomic) IBOutlet UITextField *cat2;
- (IBAction)FOut:(UIButton *)sender;


@end
