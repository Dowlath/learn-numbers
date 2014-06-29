//
//  secondViewController.h
//  kidname
//
//  Created by BSA Univ14 on 28/06/14.
//  Copyright (c) 2014 BSA Univ14. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondViewController : UIViewController
@property(strong,nonatomic) NSString *newobj;
@property (strong, nonatomic) NSManagedObjectContext *managedObjContext;
@property (strong, nonatomic) IBOutlet UILabel *labelobj;
@property (nonatomic, retain) NSString * detail;
@property(strong,nonatomic)NSArray *nameArry;

@property (strong, nonatomic) NSString *nameStr;
@end
