//
//  PlayerCell.h
//  Assignment3
//
//  Created by larry on 11/19/14.
//  Copyright (c) 2014 Larry Kerschner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *playerName;
@property (weak, nonatomic) IBOutlet UILabel *playerNumber;
@property (weak, nonatomic) IBOutlet UIImageView *thumbnailImage;

@end
