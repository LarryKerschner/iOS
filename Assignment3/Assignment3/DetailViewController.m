//
//  DetailViewController.m
//  Assignment3
//
//  Created by larry on 11/17/14.
//  Copyright (c) 2014 Larry Kerschner. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)setPlayerImage:(UIImage *)playerImage
{
    if (_playerImage != playerImage)
    {
        _playerImage = playerImage;
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
 //       self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"timeStamp"] description];
        self.PlayerName.text = [NSString stringWithFormat:@"%@, %@", self.detailItem.LastName, self.detailItem.FirstName];
        self.Position.text = [NSString stringWithFormat:@" %@ %@", self.detailItem.Number, self.detailItem.Position];
        self.BatsThrows.text = [NSString stringWithFormat:@"%@. %@", self.detailItem.Bats, self.detailItem.Throws];
        self.Height.text = [NSString stringWithFormat:@"%@", self.detailItem.Height];
        self.Weight.text = [NSString stringWithFormat:@"%@ lbs.", self.detailItem.Weight ];
        self.DOB.text = self.detailItem.DOB;
        self.playerImageView.image = self.playerImage;
      
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
