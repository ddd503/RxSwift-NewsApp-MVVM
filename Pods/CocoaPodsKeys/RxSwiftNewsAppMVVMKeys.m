//
// Generated by CocoaPods-Keys
// on 17/11/2019
// For more information see https://github.com/orta/cocoapods-keys
//

#import <objc/runtime.h>
#import <Foundation/NSDictionary.h>
#import "RxSwiftNewsAppMVVMKeys.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation RxSwiftNewsAppMVVMKeys

  @dynamic apiKey;

#pragma clang diagnostic pop

+ (BOOL)resolveInstanceMethod:(SEL)name
{
  NSString *key = NSStringFromSelector(name);
  NSString * (*implementation)(RxSwiftNewsAppMVVMKeys *, SEL) = NULL;

  if ([key isEqualToString:@"apiKey"]) {
    implementation = _podKeysc9ff119073ea2567730fb42e3a4fe805;
  }

  if (!implementation) {
    return [super resolveInstanceMethod:name];
  }

  return class_addMethod([self class], name, (IMP)implementation, "@@:");
}

static NSString *_podKeysc9ff119073ea2567730fb42e3a4fe805(RxSwiftNewsAppMVVMKeys *self, SEL _cmd)
{
  
    
      char cString[33] = { RxSwiftNewsAppMVVMKeysData[790], RxSwiftNewsAppMVVMKeysData[161], RxSwiftNewsAppMVVMKeysData[714], RxSwiftNewsAppMVVMKeysData[6], RxSwiftNewsAppMVVMKeysData[474], RxSwiftNewsAppMVVMKeysData[852], RxSwiftNewsAppMVVMKeysData[674], RxSwiftNewsAppMVVMKeysData[841], RxSwiftNewsAppMVVMKeysData[148], RxSwiftNewsAppMVVMKeysData[214], RxSwiftNewsAppMVVMKeysData[856], RxSwiftNewsAppMVVMKeysData[304], RxSwiftNewsAppMVVMKeysData[173], RxSwiftNewsAppMVVMKeysData[103], RxSwiftNewsAppMVVMKeysData[345], RxSwiftNewsAppMVVMKeysData[209], RxSwiftNewsAppMVVMKeysData[243], RxSwiftNewsAppMVVMKeysData[423], RxSwiftNewsAppMVVMKeysData[580], RxSwiftNewsAppMVVMKeysData[409], RxSwiftNewsAppMVVMKeysData[293], RxSwiftNewsAppMVVMKeysData[784], RxSwiftNewsAppMVVMKeysData[370], RxSwiftNewsAppMVVMKeysData[656], RxSwiftNewsAppMVVMKeysData[247], RxSwiftNewsAppMVVMKeysData[639], RxSwiftNewsAppMVVMKeysData[774], RxSwiftNewsAppMVVMKeysData[799], RxSwiftNewsAppMVVMKeysData[548], RxSwiftNewsAppMVVMKeysData[226], RxSwiftNewsAppMVVMKeysData[583], RxSwiftNewsAppMVVMKeysData[32], '\0' };
    
    return [NSString stringWithCString:cString encoding:NSUTF8StringEncoding];
  
}


static char RxSwiftNewsAppMVVMKeysData[858] = "6gZ7/G24+B/ZgAV69p+3Ahk0/hBJtgGv1aFZ0gPNq0OWzcGmpgrzHG1i4pHzEGwRrpvcFiiADBhjmT/z9MgbGt/Bo6/DfsGoyM3NKMz9m8Q5IUqBB3o6M9+LK6N029cY/+Ado7Dm/vY5uCiOE++8fLPdQ4c+TnvgmdcJQRovhVWsL4jJ/Vp99jXOCnKpbopOMi9ivxvgs6D1yJsYl0rW+I2CR/jTDF0xS01o/CpKGIW9hSGycUb8fnO5/o6UHP+Cadqp5BlaN33GFVSmW1vDn53SFwaDvwC+DEQD/fH7jpv0+dNm1C//fpQ4r/VKypLiVywrnO/FyOH9QfL1O1udJTRRq9TDiGQZJbTMsz3icVmImYo0BkeberaHgkMG8MFdYS36afjN4LRQHJ6E2EUfNS86F3zYHYv+Ecd6MtU1jCbFz4R3VLJGpMXYT55QBG2mH0Uebw/r9oEAQZWTxElUQcStIe3wFovOEeHsrdg2BIKUT9pqfRoR9va84gjDOR7zp8YDpmlbu1/CxWqHr4+qUum1T4oU1VudpubO0vs7JnwbMhOtTMsdRl36baBA/JQ8z9+nfIsfD3OuzsJACVfCoYO8oj+IwkuAIIFZF4Jz2Tp45VSmzJ5CXgFaSuDvXYG4xdvkDKbfG+Zcbt1jbX+bWeOIu/yDthb+NL0EhATnZwQjAMz05DZAv29uZ1WCtVzA3hgTzIbNyFch822QdopdZbe3WwOTF+yxW1NgEtSR/RGogsIyg8vZJg4N17kHlMm9E7vT/lbr3o11kAbb0AcH6kfRXEW5lMQ9+RDV0UAFcTf7VBD2GXWgIWAm6YMs9+ilIZs37je7l3vGrlLxgnKV6A==b\"";

- (NSString *)description
{
  return [@{
            @"apiKey": self.apiKey,
  } description];
}

- (id)debugQuickLookObject
{
  return [self description];
}

@end