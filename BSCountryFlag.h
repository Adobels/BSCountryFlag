//
//  BSFlags.h
//  MarathonApp
//
//  Created by Blazej SLEBODA on 21/11/2016.
//  Copyright © 2016 Marathon42K. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BSCountryFlag : NSObject

- (NSString *)unicodeCountryFlagForISO31661Code:(NSString *)code;

@end
