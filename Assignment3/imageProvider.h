//
//  imageProvider.h
//  Assignment3
//
//  Created by larry on 11/19/14.
//  Copyright (c) 2014 Larry Kerschner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface imageProvider : NSObject
@property (copy, nonatomic) NSString *imageDirectoryURLString;
+(imageProvider *)getInstance;
- (void)getImageForPlayerNumber:(NSString *)number thumbnail:(BOOL)thumbnail onComplete:(void (^)(UIImage *))completeBlock;
- (void)clearCache;

@end
