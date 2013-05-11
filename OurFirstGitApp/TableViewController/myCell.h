//
//  myCell.h
//  OurFirstGitApp
//
//  Created by Eduardo Bautista Antonio on 27/04/13.
//  Copyright (c) 2013 Eric Vargas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *lblName;
@property (nonatomic, strong) IBOutlet UILabel *lblYear;
@property (nonatomic , strong) IBOutlet UIImageView *imvImage;

@end
