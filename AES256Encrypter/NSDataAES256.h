//
//  NSDataAES256.h
//  PlistEncrypter
//
//  Created by David Hilowitz on 3/29/14.
//  Copyright (c) 2014 Decidedly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (AES256)

- (NSData*) encryptedWithKey:(NSData*) key;

- (NSData*) decryptedWithKey:(NSData*) key;

@end
