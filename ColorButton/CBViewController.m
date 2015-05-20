//
//  CBViewController.m
//  ColorButton
//
//  Created by fepersembe on 20/05/15.
//  Copyright (c) 2015 FEPERSEMBE. All rights reserved.
//

#import "CBViewController.h"

@interface CBViewController ()

@end

@implementation CBViewController

NSDate * startTime;
int elapsedTime;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.btn_colorChange setFrame:[[UIScreen mainScreen] bounds]];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeColorPressed:(id)sender{
    startTime = [NSDate date];

}
- (IBAction)changeColorReleased:(id)sender{
    elapsedTime = abs ([startTime timeIntervalSinceNow]);
    NSLog(@"TIME %i",elapsedTime);
    [self changeColor:elapsedTime ];

}

- (void) changeColor:(double)seconds
{
    if(seconds < 1){
        [self.view setBackgroundColor:[UIColor whiteColor]];
    }
    else if(seconds < 2){
        [self.view setBackgroundColor:[UIColor blueColor]];
    }
    else if(seconds < 3){
        [self.view setBackgroundColor:[UIColor greenColor]];
    }
    else if(seconds < 4){
        [self.view setBackgroundColor:[UIColor yellowColor]];
    }
    else if(seconds < 5){
        [self.view setBackgroundColor:[UIColor orangeColor]];
    }
    else {
        [self.view setBackgroundColor:[UIColor redColor]];
    }
}

@end
