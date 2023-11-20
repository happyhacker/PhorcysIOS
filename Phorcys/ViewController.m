//
//  ViewController.m
//  Phorcys
//
//  Created by LARRY HACK on 7/1/14.
//  Copyright (c) 2014 Hacksoft. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize o2;
@synthesize picker, pickerData;
@synthesize po2;

-(IBAction)slider_moved:(id)sender
{
  [self calcMod];
}

- (void) calcMod
{
    NSInteger sliderValue = (int) slider.value;
    o2.text = [NSString stringWithFormat:@"%i",(int)slider.value];
    float atm = (po2 / (sliderValue / 100.0f))-1;
    float fMod = atm * 34;
    mod.text = [NSString stringWithFormat:@"%i",(int)fMod];
    return;
}

- (void) viewDidAppear:(BOOL)animated
{
    //not working!
    [self.picker selectRow:4 inComponent:0 animated:YES];
    return;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    po2 = 1.0f;
    [picker reloadAllComponents];
    [self calcMod];
    
    NSArray *array = [[NSArray alloc] initWithObjects:@"1.0",@"1.1",@"1.2",@"1.3",@"1.4",@"1.5",@"1.6",@"1.7",@"1.8",@"1.9",@"2.0", nil];
    self.pickerData = array;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [pickerData count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.pickerData objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    //float po2 = 1.0f;
    
    int select = (int)row;
    if (select == 0) {
        po2 = 1.0;
    } else
        if (select == 1) {
            po2 = 1.1;
    } else
        if (select == 2) {
            po2 = 1.2;
    } else
        if (select == 3) {
            po2 = 1.3;
    } else
        if (select == 4) {
            po2 = 1.4;
    } else
        if (select == 5) {
            po2 = 1.5;
    } else
        if (select == 6) {
            po2 = 1.6;
    } else
        if(select == 7) {
            po2 = 1.7;
    } else
        if(select == 8) {
            po2 = 1.8;
    } else
        if (select == 9) {
            po2 = 1.9;
    } else
        if (select == 10) {
            po2 = 2.0;
    }
    [self calcMod];
}

@end
