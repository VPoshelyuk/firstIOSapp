//
//  FormulasViewController.m
//  Calculator++
//
//  Created by Viacheslav Poshelyk on 10/26/16.
//  Copyright © 2016 ViachaslauPashaliuk. All rights reserved.
//

#import "FormulasViewController.h"

@interface FormulasViewController ()

@end

@implementation FormulasViewController

@synthesize a,b,c,x1,x2;
@synthesize hyp,cat1,cat2;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)Calc:(UIButton *)sender {
        NSString *intStringa = [NSString stringWithFormat:@"%@", a.text];
        int aa = [intStringa intValue];
        NSString *intStringb = [NSString stringWithFormat:@"%@", b.text];
        int bb = [intStringb intValue];
        NSString *intStringc = [NSString stringWithFormat:@"%@", c.text];
        int cc = [intStringc intValue];
        float d = ( -bb + sqrt( bb*bb - 4*aa*cc ) ) / (2*aa);
        x1.text =  [NSString stringWithFormat:@"%.4f",d];
        float e = ( -bb - sqrt( bb*bb - 4*aa*cc ) ) / (2*aa);
        x2.text =  [NSString stringWithFormat:@"%.4f",e];
}
- (IBAction)FOut:(UIButton *)sender {
    NSString *intStringHyp = [NSString stringWithFormat:@"%@", hyp.text];
    int hyphyp = [intStringHyp intValue];
    NSString *intStringCat1 = [NSString stringWithFormat:@"%@", cat1.text];
    int cat1cat1 = [intStringCat1 intValue];
    NSString *intStringCat2 = [NSString stringWithFormat:@"%@", cat2.text];
    int cat2cat2 = [intStringCat2 intValue];
    if (hyphyp == nil) {
        float hyp1 = (sqrt(cat1cat1*cat1cat1+cat2cat2*cat2cat2));
        hyp.text = [NSString stringWithFormat:@"%.2f",hyp1];
    }
    else if (cat1cat1 == nil) {
        float cat11 = (sqrt(hyphyp*hyphyp-cat2cat2*cat2cat2));
        cat1.text = [NSString stringWithFormat:@"%.2f",cat11];
    }
    else if (cat2cat2 == nil) {
        float cat22 = (sqrt(hyphyp*hyphyp-cat1cat1*cat1cat1));
        cat2.text = [NSString stringWithFormat:@"%.2f",cat22];
    }
}
@end
