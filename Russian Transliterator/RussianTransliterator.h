//
//  RussianTransliterator.h
//  Russian Transliterator
//
//  Created by Oleg Utkin on 8/10/12.
//  Copyright (c) 2012 akaiBureido. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RussianTransliterator : NSObject {
    //NSMutableString *initialString, *resultString;
    NSDictionary *translitDictionary;
}

//@property(strong) NSString *initialString;
//@property(strong) NSString *resultString;

- (id) init;
- (id) initWithDictionary:(NSDictionary *)userDictionary;

- (NSString *) transliterate:(NSString *)stringForTransliteration;

- (void) fillDictionaryWith:(NSDictionary *)input;
- (void) fillTranslitDictionaryWithDefaultSet;

@end
