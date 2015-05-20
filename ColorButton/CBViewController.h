//
//  CBViewController.h
//  ColorButton
//
//  Created by fepersembe on 20/05/15.
//  Copyright (c) 2015 FEPERSEMBE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIButton * btn_colorChange;

- (IBAction)changeColorPressed:(id)sender;
- (IBAction)changeColorReleased:(id)sender;

@end
