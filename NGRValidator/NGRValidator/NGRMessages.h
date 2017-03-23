//
//  NGRMessages.h
//  NGRValidator
//
//  Created by Patryk Kaczmarek on 21.02.2015.
//
//

#import <Foundation/Foundation.h>

@class NGRMsgKey;

@interface NGRMessages : NSObject

NS_ASSUME_NONNULL_BEGIN

/**
 *  Sets a message for the given error.
 *
 *  @param message  The message you want to set.
 *  @param key    The error, for which you want to set the message.
 */
- (void)setMessage:(NSString *)message forKey:(NGRMsgKey *)key;

/**
 *  Retrieve message for given error.
 *
 *  @param key The error specifying which message should be returned.
 *  @return The message fo given error.
 */
- (nullable NSString *)messageForKey:(NGRMsgKey *)key;

NS_ASSUME_NONNULL_END

@end
