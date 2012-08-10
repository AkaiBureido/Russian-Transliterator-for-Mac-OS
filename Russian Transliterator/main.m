//
//  main.m
//  Russian Transliterator
//
//  Created by Oleg Utkin on 8/7/12.
//  Copyright (c) 2012 akaiBureido. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RussianTransliterator.h"

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
        
        // Filling dictionary
        NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:[NSString stringWithUTF8String:"TranslitDictionary.plist"]];
        RussianTransliterator *translit = [[RussianTransliterator alloc] initWithDictionary:dict];
        
        // Printing out
        NSLog(@"You get  : %@", [translit transliterate:input]);
    }
    return 0;

}