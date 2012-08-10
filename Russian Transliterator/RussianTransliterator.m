//
//  RussianTransliterator.m
//  Russian Transliterator
//
//  Created by Oleg Utkin on 8/10/12.
//  Copyright (c) 2012 akaiBureido. All rights reserved.
//

#import "RussianTransliterator.h"

@implementation RussianTransliterator

//@synthesize initialString;
//@synthesize resultString;

- (id)init
{
    self = [super init];
    if (self) {
        [self fillTranslitDictionaryWithDefaultSet];
    }
    return self;
}

- (id) initWithDictionary:(NSDictionary *)userDictionary {
    self = [super init];
    if (self) {
        [self fillDictionaryWith:userDictionary];
    }
    return self;
}

- (NSString *) transliterate:(NSString *)stringForTransliteration {
    NSLog(@"Transliterating");
    NSMutableString *result = [[NSMutableString alloc] init];
    
    for ( int i = 0; i < [stringForTransliteration length]; i++ ) {
        
        // TODO: come up with a way to forge the query
        
        //**************************
        // Dummy code
        //**************************
        
        NSString *query = [NSString stringWithFormat:@"%c",[stringForTransliteration characterAtIndex:i]];
        
        //**************************
        
        // Searching the substitution dictionary
        id substitute = [translitDictionary objectForKey:query];
        
        
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


// Utility functions
- (void) fillDictionaryWith:(NSDictionary *)input {
    NSLog(@"Filling with user defined set");
    translitDictionary = [[NSDictionary alloc] initWithDictionary:input];
}

- (void) fillTranslitDictionaryWithDefaultSet {
    NSLog(@"Filling with default set");
    
    NSMutableDictionary *defaultTranslitDictionary = [[NSMutableDictionary alloc] init];
    
    // Defining the default set programmatically
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"а", nil] forKey: @"a"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"б", nil] forKey: @"b"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"в", nil] forKey: @"v"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"г", nil] forKey: @"g"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"д", nil] forKey: @"d"];
    [defaultTranslitDictionary setObject:
     [[NSArray alloc] initWithObjects:@"е",
                                      @"э", nil] forKey: @"e"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ё", nil] forKey: @"io"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ж", nil] forKey: @"zsh"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"з", nil] forKey: @"z"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"и", nil] forKey: @"i"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"й", nil] forKey: @"j"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"к", nil] forKey: @"k"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"л", nil] forKey: @"l"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"м", nil] forKey: @"m"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"н", nil] forKey: @"n"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"о", nil] forKey: @"o"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"п", nil] forKey: @"p"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"р", nil] forKey: @"r"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"с", nil] forKey: @"s"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"т", nil] forKey: @"t"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"у", nil] forKey: @"u"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ф", nil] forKey: @"f"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"х", nil] forKey: @"h"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ц", nil] forKey: @"ts"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ч", nil] forKey: @"tch"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ш", nil] forKey: @"sh"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"щ", nil] forKey: @"sch"];
    [defaultTranslitDictionary setObject:
     [[NSArray alloc] initWithObjects:@"ь",
                                      @"ъ", nil] forKey: @"'"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ы", nil] forKey: @"y"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"ю", nil] forKey: @"iu"];
    [defaultTranslitDictionary setObject: 
     [[NSArray alloc] initWithObjects:@"я", nil] forKey: @"ia"];
    
    translitDictionary = [[NSDictionary alloc] initWithDictionary:defaultTranslitDictionary];
}
@end
