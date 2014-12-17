//
//  Player.m
//  Assignment3
//
//  Created by larry on 11/17/14.
//  Copyright (c) 2014 Larry Kerschner. All rights reserved.
//

#import "Player.h"

@implementation Player
- (instancetype)init
{
    self = [super init];
    if (self)
    {
     _Number = @"None";
     _FirstName = @"None";
     _LastName = @"None";
     _Position = @"None";
     _Bats = @"None";
     _Throws = @"None";
     _Height = @"None";
     _Weight = @"None";
     _DOB = @"None";
    }
    return self;
}
@end
