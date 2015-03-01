//
//  WebViewController.h
//  BlogReader
//
//  Created by Philip Brown on 01/03/2015.
//  Copyright (c) 2015 Yellow Flag. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (strong, nonatomic) NSURL *blogPostUrl;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end
