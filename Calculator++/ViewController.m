//
//  ViewController.m
//  Calculator++
//
//  Created by Viacheslav Poshelyk on 10/21/16.
//  Copyright © 2016 ViachaslauPashaliuk. All rights reserved.
//

#import "ViewController.h"
#import "FormulasViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction) b1{
    disp.text = [NSString stringWithFormat:@"%@1", disp.text];
}
-(IBAction) b2{
    disp.text = [NSString stringWithFormat:@"%@2", disp.text];
}
-(IBAction) b3{
    disp.text = [NSString stringWithFormat:@"%@3", disp.text];
}
-(IBAction) b4{
    disp.text = [NSString stringWithFormat:@"%@4", disp.text];
}
-(IBAction) b5{
    disp.text = [NSString stringWithFormat:@"%@5", disp.text];
}
-(IBAction) b6{
    disp.text = [NSString stringWithFormat:@"%@6", disp.text];
}
-(IBAction) b7{
    disp.text = [NSString stringWithFormat:@"%@7", disp.text];
}
-(IBAction) b8{
    disp.text = [NSString stringWithFormat:@"%@8", disp.text];
}
-(IBAction) b9{
    disp.text = [NSString stringWithFormat:@"%@9", disp.text];
}
-(IBAction) b0{
    disp.text = [NSString stringWithFormat:@"%@0", disp.text];
}
-(IBAction) multiply{
    operation = MULTIPLY;
    storage = disp.text;
    disp.text = @"";
}
-(IBAction) divide{
    operation = DIVIDE;
    storage = disp.text;
    disp.text = @"";
}
-(IBAction) plus{
    operation = PLUS;
    storage = disp.text;
    disp.text = @"";
}
-(IBAction) minus{
    operation = MINUS;
    storage = disp.text;
    disp.text = @"";
}
-(IBAction) equal{
    NSString *secNumber = disp.text;
    switch (operation) {
        case PLUS:
            disp.text = [NSString stringWithFormat: @"%f" , [storage doubleValue] + [secNumber doubleValue]];
            break;
        case MINUS:
            disp.text = [NSString stringWithFormat: @"%f" , [storage doubleValue] - [secNumber doubleValue]];
            break;
        case DIVIDE:
            disp.text = [NSString stringWithFormat: @"%f" , [storage doubleValue] / [secNumber doubleValue]];
            break;
        case MULTIPLY:
            disp.text = [NSString stringWithFormat: @"%f" , [storage doubleValue] * [secNumber doubleValue]];
            break;
    }
}
-(IBAction) clear {
    disp.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


    @end

