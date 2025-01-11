#include <stdio.h>
#import "t71XPCServiceDelegate.h"

int main(int argc, char *argv[], char *envp[]) {
    @autoreleasepool {
        NSXPCListener *listener = [[NSXPCListener alloc] initWithMachServiceName:@"com.t7rutweaks.fakepicturebypass"];
        t71PCServiceDelegate *delegate = [t71PCServiceDelegate new];
        listener.delegate = delegate;
        [listener resume];
        [[NSRunLoop currentRunLoop] run];
        return 0;
    }
}
