typedef NS_ENUM(NSInteger, TNSEnums) {
    TNSEnum1 = -1,
    TNSEnum2,
    TNSEnum3,
};

typedef NS_OPTIONS(NSInteger, TNSOptions) {
    TNSOption1 = 1 << 0,
    TNSOption2 = 1 << 1,
    TNSOption3 = 1 << 2,
};

enum {
    AnonymousEnumField = -1
};

extern NSString* const TNSConstant;

extern NSString* const TNSUnavailableConstant;

static const NSInteger TNSStaticConstant = -42;

void functionThrowsException();

@interface TNSApi : NSObject

@property(getter=customGetter, setter=customSetter:) int property;

typedef UIColor NIKColor;
@property(strong, nonatomic) NIKColor* strokeColor; // ^{UIColor=#}

+ (void)methodThrowsException;
- (void)methodThrowsException;

- (void)methodCalledInDealloc;

- (BOOL)method:(NSInteger)errorCode error:(NSError**)outError;
@end

@interface TNSConflictingSelectorTypes1 : NSObject
+ (void)method:(long long)x;
- (void)method:(long long)x;
@end

@interface TNSConflictingSelectorTypes2 : NSObject
+ (id)method:(id)x;
- (id)method:(id)x;
@end

@interface TNSSwizzleKlass : NSObject
@property(assign) int aProperty;
+ (int)staticMethod:(int)x;
- (int)instanceMethod:(int)x;
@end

@protocol TNSPropertyMethodConflictProtocol
- (BOOL)conflict;
@end

@interface TNSPropertyMethodConflictClass : NSObject <TNSPropertyMethodConflictProtocol>
@property BOOL conflict;
@end

@protocol TNSUnusedProtocol
- (void)someMethod:(int)a;
@end

@protocol RectProtocol
@optional
- (CGRect)getRect;
@end

@interface RectClass : NSObject<RectProtocol>
@end
