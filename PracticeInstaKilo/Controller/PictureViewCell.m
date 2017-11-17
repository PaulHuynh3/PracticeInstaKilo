//
//  PictureViewCell.m
//  PracticeInstaKilo
//
//  Created by Paul on 2017-11-15.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "PictureViewCell.h"

@implementation PictureViewCell

-(void)setPhotoObject:(PictureObject *)photoObject{
    
    _photoObject = photoObject;
     self.imageView.image = photoObject.photo;
     self.pictureName.text = photoObject.photoName;
}




@end
