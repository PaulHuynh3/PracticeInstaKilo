//
//  PictureViewCell.h
//  PracticeInstaKilo
//
//  Created by Paul on 2017-11-15.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PictureObject.h"
#import "PictureHandler.h"

@interface PictureViewCell : UICollectionViewCell


@property (weak, nonatomic) IBOutlet UILabel *pictureName;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

//set photoimage in selected indexpath
@property(weak, nonatomic)PictureObject *photoObject;



@end
