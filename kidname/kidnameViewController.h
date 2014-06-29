//
//  kidnameViewController.h
//  kidname
//
//  Created by BSA Univ14 on 28/06/14.
//  Copyright (c) 2014 BSA Univ14. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface kidnameViewController : UIViewController
@property (strong, nonatomic) NSManagedObjectContext *managedObjContext;
@property(strong,nonatomic)NSArray *nameArry;
@property (strong, nonatomic) IBOutlet UITextField *text;
@property(strong,nonatomic) NSString *newobj;

- (IBAction)save:(id)sender;

@end
