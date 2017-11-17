//
//  SectionReusableView.m
//  PracticeInstaKilo
//
//  Created by Paul on 2017-11-16.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "SectionReusableView.h"

@interface SectionReusableView()

@property (weak, nonatomic) IBOutlet UILabel *sectionNameLabel;

@end

@implementation SectionReusableView

-(void)setPictureCategory:(PictureCategory *)pictureCategory{
    
    _pictureCategory = pictureCategory;
    self.sectionNameLabel.text = pictureCategory.categoryName;
}


@end
