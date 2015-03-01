//
//  BlogPost.m
//  BlogReader
//
//  Created by Philip Brown on 27/02/2015.
//  Copyright (c) 2015 Yellow Flag. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

- (id) initWithTitle:(NSString *)title {
    self = [super init];
    
    if (self) {
        self.title = title;
        self.author = nil;
        self.thumbnail = nil;
    }
    
    return self;
}

+ (id) blogPostWithTitle:(NSString *)title {
    return [[self alloc] initWithTitle:title];
}

- (NSURL *)thumbnailUrl {
    return [NSURL URLWithString:self.thumbnail];
}

- (NSString *)formattedDate {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:self.date];
    
    [dateFormatter setDateFormat:@"EE MM,dd"];
    
    return [dateFormatter stringFromDate:date];
}

@end
