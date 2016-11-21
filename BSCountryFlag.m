//
//  BSCountryFlag.m
//
//  Created by Blazej SLEBODA on 21/11/2016.
//

#import "BSCountryFlag.h"

@interface BSCountryFlag ()

@property (strong, readwrite, nonatomic) NSDictionary *unicodeDictionary;

@end

@implementation BSCountryFlag

- (instancetype)init {
    
    if (self == [super init]) {
        
        self.unicodeDictionary = @{@"A":@"🇦", @"B":@"🇧", @"C":@"🇨", @"D":@"🇩",@"E":@"🇪", @"F":@"🇫", @"G":@"🇬", @"H":@"🇭", @"I":@"🇮", @"J":@"🇯", @"K":@"🇰", @"L":@"🇱", @"M":@"🇲", @"N":@"🇳", @"O":@"🇴", @"P":@"🇵",@"Q":@"🇶", @"R":@"🇷", @"S":@"🇸",@"T":@"🇹", @"U":@"🇺", @"V":@"🇻", @"W":@"🇼", @"X":@"🇽", @"Y":@"🇾", @"Z":@"🇿"};
        
    }
    
    return self;
    
}

- (NSString *)unicodeCountryFlagForISO31661Code:(NSString *)code {
    
    NSString *firstLetter = [code substringWithRange:NSMakeRange(0, 1)];
    NSString *secondLetter = [code substringWithRange:NSMakeRange(1, 1)];
    
    NSString *firstUnicode = [self.unicodeDictionary objectForKey:firstLetter];
    NSString *secondUnicode = [self.unicodeDictionary objectForKey:secondLetter];
    
    NSString *unicodeCountryFlag = [NSString stringWithFormat:@"%@%@", firstUnicode,secondUnicode];
    
    return unicodeCountryFlag;
    
}

@end
