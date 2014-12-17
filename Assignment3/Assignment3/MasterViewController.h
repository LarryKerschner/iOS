//
//  MasterViewController.h
//  Assignment3
//
//  Created by larry on 11/17/14.
//  Copyright (c) 2014 Larry Kerschner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSMutableArray *objects;
@property (copy, nonatomic)NSString *imageDirectoryURLString;

@end

