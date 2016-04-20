//
//  ViewController.m
//  alert&shit
//
//  Created by Fenkins on 20/04/16.
//  Copyright © 2016 Fenkins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickAction:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Answer the question!" message:@"What is the capital of Great Britan?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *parisOption = [UIAlertAction actionWithTitle:@"Paris" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        UIAlertController *wrongAnswer = [UIAlertController alertControllerWithTitle:@"Wrong answer!" message:@"The answer is wrong. Maybe try again" preferredStyle:UIAlertControllerStyleAlert];
        [self presentViewController:wrongAnswer animated:YES completion:^{
            [NSThread sleepForTimeInterval:2.0];
        }];
        [wrongAnswer dismissViewControllerAnimated:YES completion:nil];
    }];
    UIAlertAction *londonOption = [UIAlertAction actionWithTitle:@"London" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        UIAlertController *correctAnswer = [UIAlertController alertControllerWithTitle:@"Correct answer!" message:@"That is correct! You got it!" preferredStyle:UIAlertControllerStyleAlert];
        [self presentViewController:correctAnswer animated:YES completion:^{
            [NSThread sleepForTimeInterval:2.0];
        }];
        [correctAnswer dismissViewControllerAnimated:YES completion:nil];
    }];
    [alert addAction:parisOption];
    [alert addAction:londonOption];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
