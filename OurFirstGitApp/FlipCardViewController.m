//
//  FlipCardViewController.m
//  OurFirstGitApp
//
//  Created by Eric Vargas on 5/11/13.
//  Copyright (c) 2013 Eric Vargas. All rights reserved.
//

#import "FlipCardViewController.h"

#define Imagen1 @"Kratos.jpg"
#define Imagen2 @"Deimos.jpg"

@interface FlipCardViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageCard;

@property (nonatomic) BOOL faceUp;

@end

@implementation FlipCardViewController

- (IBAction)swipeCard:(UISwipeGestureRecognizer *)sender
{
    [UIView transitionWithView:self.imageCard
                      duration:1
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{
                        if (!self.faceUp)
                        {
                            self.imageCard.image = [UIImage imageNamed:Imagen2];
                        }
                        else
                        {
                            self.imageCard.image = [UIImage imageNamed:Imagen1];
                        }
                        self.faceUp = !self.faceUp;
                    }
                    completion:nil];
}

@end
