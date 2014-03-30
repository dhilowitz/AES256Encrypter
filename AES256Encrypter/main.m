//
//  main.m
//  AES256Encrypter
//
//  Created by David Hilowitz on 3/29/14.
//  Copyright (c) 2014 Decidedly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDataAES256.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        if(argc != 4) {
            // insert code here...
            NSLog(@"\nMissing file name.\nUsage: AES256Encryper.app <key> <in-file> <out-file>\n");
            return 1;
        } else {
            NSString *key = [NSString stringWithUTF8String:argv[1]];
            NSString *inputPath = [NSString stringWithUTF8String:argv[2]];
            NSString *outputPath = [NSString stringWithUTF8String:argv[3]];

            NSData* loadedData = [[NSData alloc] initWithContentsOfFile:inputPath];
            if(loadedData == nil) {
                NSLog(@"\nUnable to load input file.\n");
                return 1;
            }
            
            NSData* keyData = [key dataUsingEncoding:NSUTF8StringEncoding];
            NSData *encData = [loadedData encryptedWithKey:keyData];
            [encData writeToFile:outputPath atomically:YES];
        }
        
    }
    return 0;
}

