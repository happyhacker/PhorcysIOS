//
//  ViewController.h
//  Phorcys
//
//  Created by LARRY HACK on 7/1/14.
//  Copyright (c) 2014 Hacksoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>
{
    IBOutlet UITextField *o2;
    IBOutlet UISlider *slider;
    IBOutlet UIPickerView *picker;
    NSArray *pickerData;
    IBOutlet UITextField *mod;
    
}

-(IBAction)slider_moved:(id)sender;

@property (nonatomic, retain) IBOutlet UITextField *o2;
@property (retain, nonatomic) IBOutlet UIPickerView *picker;
@property (retain, nonatomic) NSArray *pickerData;
@property float po2;

@end
