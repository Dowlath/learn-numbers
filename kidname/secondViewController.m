//
//  secondViewController.m
//  kidname
//
//  Created by BSA Univ14 on 28/06/14.
//  Copyright (c) 2014 BSA Univ14. All rights reserved.
//

#import "secondViewController.h"
#import "Numbers.h"
#import "kidnameViewController.h"
#import "AppDelegate.h"
@import AudioToolbox;
#import <Slt/Slt.h>
#import <OpenEars/FliteController.h>

@interface secondViewController ()
{
    kidnameViewController *call;
    AppDelegate *delobj;
    Numbers *num;
}
@property (nonatomic, strong)  FliteController *fliteController;
@property (nonatomic, strong) Slt *slt;
@property(nonatomic,strong) NSString *kids;
@end

@implementation secondViewController
@synthesize fliteController,slt;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    delobj=[[UIApplication sharedApplication]delegate];
    self.managedObjContext=delobj.managedObjectContext;
    self.nameArry=[delobj number];
    NSLog(@"%d",self.nameArry.count);
    num=[self.nameArry objectAtIndex:0];
    self.labelobj.text=num.names;

   
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.fliteController say:num.names withVoice:self.slt];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (FliteController *)fliteController{
    
    if(fliteController == nil){
        fliteController=[[FliteController alloc]init];
    }
    return fliteController;
}

-(Slt *)slt{
    
    if(slt==nil){
        slt=[[Slt alloc]init];
    }
    return slt;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
