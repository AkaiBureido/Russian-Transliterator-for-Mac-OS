//
//  main.m
//  Russian Transliterator
//
//  Created by Oleg Utkin on 8/7/12.
//  Copyright (c) 2012 akaiBureido. All rights reserved.
//

#import <Foundation/Foundation.h>

char* DICTIONARY_PATH = "TranslitDictionary.plist";

NSDictionary *fillTranslitDictionary();
NSString *transliterate( NSString *input, NSDictionary *dict );

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        printf("Please type in text in 'translit': ");
        
        // Buffer to hold what user will hold what user will type
        char buffer[100] = {0};
        scanf("%s", buffer);
        
        // Converting char* to more objective-c friendly NSString
        NSString *input = [[NSString alloc] initWithUTF8String:buffer];
        
        
        NSLog(@"You typed: %@", input);
        
        // Filling dictionary with a dedicated function
        NSDictionary *dict = [NSDictionary dictionaryWithDictionary: fillTranslitDictionary()];
        
        // Printing out
        NSLog(@"You get  : %@", transliterate(input, dict));
    }
    return 0;
}



NSDictionary *fillTranslitDictionary() {
    NSMutableDictionary *translitDictionary;
    
    @try {
        translitDictionary = 
        [[NSMutableDictionary alloc] initWithContentsOfFile:[NSString stringWithUTF8String:DICTIONARY_PATH]];
    }
    @catch (NSException *exception) {
        NSLog(@"Something awry happened. Can't seem to find the dictionary file.");
    }
    
    return [NSDictionary dictionaryWithDictionary:translitDictionary];
}

NSString *transliterate( NSString *input, NSDictionary *dict ) {
    NSMutableString *result = [[NSMutableString alloc] init];
    
    for ( int i = 0; i < [input length]; i++ ) {
        
        // TODO: come up with a way to forge the query
        
        //**************************
        // Dummy code
        //**************************
        
        NSString *query = [NSString stringWithFormat:@"%c",[input characterAtIndex:i]];
        
        //**************************
        
        // Searching the substitution dictionary
        id substitute = [dict objectForKey:query];
        
        
        // TODO: come up with a way to find the right substitution if multiple are present
        // I probably need a word dictionary for this.
        
        //**************************
        // Dummy code
        //**************************
        
        if ([substitute isKindOfClass:[NSArray class]]) {
            substitute = [substitute objectAtIndex:0];
        }
        
        //**************************
        [result appendFormat:@"%@", substitute];
    }
    
    return result;
}