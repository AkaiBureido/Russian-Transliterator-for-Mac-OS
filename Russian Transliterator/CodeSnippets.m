//
//  CodeSnippets.c
//  Russian Transliterator
//
//  Created by Oleg Utkin on 8/10/12.
//  Copyright (c) 2012 akaiBureido. All rights reserved.
//

#import <Foundation/Foundation.h>

NSDictionary *fillDictionary() {
    NSMutableDictionary *translitDictionary = [[NSMutableDictionary alloc] init];
    
    // TODO: Read entries in from a plist file
    
    //**************************
    // Dummy code
    //**************************
    
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"а", nil] forKey: @"a"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"б", nil] forKey: @"b"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"в", nil] forKey: @"v"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"г", nil] forKey: @"g"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"д", nil] forKey: @"d"];
    [translitDictionary setObject:
     [[NSArray alloc] initWithObjects:@"е",
                                      @"э", nil] forKey: @"e"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ё", nil] forKey: @"io"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ж", nil] forKey: @"zsh"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"з", nil] forKey: @"z"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"и", nil] forKey: @"i"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"й", nil] forKey: @"j"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"к", nil] forKey: @"k"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"л", nil] forKey: @"l"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"м", nil] forKey: @"m"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"н", nil] forKey: @"n"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"о", nil] forKey: @"o"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"п", nil] forKey: @"p"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"р", nil] forKey: @"r"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"с", nil] forKey: @"s"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"т", nil] forKey: @"t"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"у", nil] forKey: @"u"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ф", nil] forKey: @"f"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"х", nil] forKey: @"h"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ц", nil] forKey: @"ts"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ч", nil] forKey: @"tch"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ш", nil] forKey: @"sh"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"щ", nil] forKey: @"sch"];
    [translitDictionary setObject:
     [[NSArray alloc] initWithObjects:@"ь",
                                      @"ъ", nil] forKey: @"'"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ы", nil] forKey: @"y"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ю", nil] forKey: @"iu"];
    [translitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"я", nil] forKey: @"ia"];
    
    //**************************
    
    return [NSDictionary dictionaryWithDictionary:translitDictionary];
}
