#import <Foundation/Foundation.h>

@protocol t71XPCProtocol
// Define all your methods here and implement them in the t71XPC class
- (void)lowercaseStringForString:(NSString *)string reply:(void (^)(NSString *))reply;
@end
