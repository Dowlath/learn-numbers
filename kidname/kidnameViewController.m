//
//  kidnameViewController.m
//  kidname
//
//  Created by BSA Univ14 on 28/06/14.
//  Copyright (c) 2014 BSA Univ14. All rights reserved.
//

#import "kidnameViewController.h"
#import "AppDelegate.h"
#import "Numbers.h"
#import "secondViewController.h"
@interface kidnameViewController ()
{
    AppDelegate *appdelegate;
    Numbers *detail;
}

@end

@implementation kidnameViewController
@synthesize managedObjContext,nameArry;

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
    AppDelegate *appObj=[[UIApplication sharedApplication]delegate];
    
    managedObjContext=appObj.managedObjectContext;
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (IBAction)save:(id)sender {
    secondViewController *next=[[secondViewController alloc]init];
    appdelegate=[[UIApplication sharedApplication]delegate];
    self.managedObjContext=appdelegate.managedObjectContext;
    self.nameArry=[appdelegate number];
    detail=[self.nameArry objectAtIndex:0];
    
    NSLog(@"savings=%@",detail.names);
    NSLog(@"new value =%@",_text.text);
    detail.names=[NSString stringWithFormat:@"%@",_text.text];
    //_newobj=[detail.names valueForKey:@"names"];
    //next.names=_text;
//    _newobj=detail.names;
//    next.nameStr=self.newobj;
    

    NSError *error=nil;
    if(![self.managedObjContext save:&error])
    {
        NSLog(@"not save %@",[error localizedDescription]);
        [self.view endEditing:YES];

    }
    //[self presentedViewController:second animated :YES]
    
 next= [[UIStoryboard storyboardWithName:@"Storyboard" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"secondViewController"];
    [self presentViewController:next animated:YES completion:^void{}];
}

//[self presentViewController:seco animated:YES completion:^void{}];


@end
