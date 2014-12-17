//
//  DetailViewController.h
//  Assignment3
//
//  Created by larry on 11/17/14.
//  Copyright (c) 2014 Larry Kerschner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Player* detailItem;
@property (strong, nonatomic) UIImage *playerImage;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *PlayerName;
@property (weak, nonatomic) IBOutlet UILabel *Position;
@property (weak, nonatomic) IBOutlet UILabel *BatsThrows;
@property (weak, nonatomic) IBOutlet UILabel *Height;
@property (weak, nonatomic) IBOutlet UILabel *Weight;
@property (weak, nonatomic) IBOutlet UILabel *DOB;
@property (weak, nonatomic) IBOutlet UIImageView *playerImageView;

@end

