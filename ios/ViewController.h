//
//  ViewController.h
//  ios
//
//  Created by tandem on 14/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *array;
}

@property(nonatomic,retain)NSArray *array;

@end
