//
//  imageProvider.m
//  Assignment3
//
//  Created by larry on 11/19/14.
//  Copyright (c) 2014 Larry Kerschner. All rights reserved.
//

#import "imageProvider.h"
@interface imageProvider()
{
    
}
@property (strong, nonatomic) NSCache *imageCache;
@end

@implementation imageProvider
+ (imageProvider *)getInstance
{
    static imageProvider *imageProviderInstance = nil;
    
    if (imageProviderInstance == nil)
    {
        imageProviderInstance = [[imageProvider alloc]init];
    }
    return imageProviderInstance;
}
- (void)getImageForPlayerNumber:(NSString *)number thumbnail:(BOOL)thumbnail onComplete:(void (^)(UIImage *))completeBlock
{
    NSURL *url = nil;
    NSString *imageFileName = nil;
    if (thumbnail)
    {
        imageFileName = [NSString stringWithFormat:@"%@%@s.jpg", self.imageDirectoryURLString, number];
    }
    else
    {
       imageFileName = [NSString stringWithFormat:@"%@%@.jpg", self.imageDirectoryURLString, number];
    }
    UIImage *cachedImage = [self.imageCache objectForKey:imageFileName];
    if (cachedImage)
    {
        completeBlock(cachedImage);
    }
    else
    {
        url = [NSURL URLWithString:imageFileName];
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^
        {
            NSData *imageData = [NSData dataWithContentsOfURL:url];
            UIImage *image = [UIImage imageWithData:imageData];
            dispatch_async(dispatch_get_main_queue(), ^
                           {
                               [self.imageCache setObject:image forKey:imageFileName ];
                                completeBlock(image);
                           });
        });
    }
    
}
- (void)clearCache
{
    [self.imageCache removeAllObjects];
}






@end
