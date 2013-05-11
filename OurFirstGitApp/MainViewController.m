//
//  MainViewController.m
//  OurFirstGitApp
//
//  Created by Eric Vargas on 4/27/13.
//  Copyright (c) 2013 Eric Vargas. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *imageScrollView;

@property (strong, nonatomic) UIImage *image;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.image = [UIImage imageNamed:@"tron-car.jpg"];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:self.image];
    
    self.imageScrollView.contentSize = self.image.size;
    [self.imageScrollView addSubview:imageView];
}


@end
