#include "Api/TNSApi.h"
#include "Interfaces/TNSInheritance.h"
#include "Marshalling/TNSRecords.h"

@interface TNSTestNativeCallbacks : NSObject

+ (void)inheritanceMethodCalls:(TNSDerivedInterface*)derivedInterface;

+ (void)inheritanceConstructorCalls:(Class)JSDerivedInterface;

+ (void)inheritancePropertyCalls:(TNSDerivedInterface*)object;

+ (void)inheritanceVoidSelector:(id)object;

+ (id)inheritanceVariadicSelector:(id)object;

+ (void)inheritanceOptionalProtocolMethodsAndCategories:(TNSIDerivedInterface*)object;

+ (void)apiCustomGetterAndSetter:(TNSApi*)object;

+ (void)apiOverrideWithCustomGetterAndSetter:(TNSApi*)object;

+ (void)apiReadonlyPropertyInProtocolAndOverrideWithSetterInInterface:(UIView*)object;

+ (void)apiDescriptionOverride:(id)object;

+ (void)apiNSErrorOverride:(TNSApi*)object;

+ (void)apiNSErrorExpose:(TNSApi*)object;

+ (void)protocolImplementationMethods:(id<TNSBaseProtocol1, NSObject>)object;

+ (void)categoryProtocolImplementationMethods:(id<TNSBaseCategoryProtocol1, NSObject>)object;

+ (void)protocolImplementationProtocolInheritance:(id<TNSBaseProtocol2, NSObject>)object;

+ (void)protocolImplementationOptionalMethods:(id<TNSBaseProtocol2, NSObject>)object;

+ (void)protocolImplementationProperties:(id<TNSBaseProtocol1, NSObject>)object;

+ (BOOL)protocolWithNameConflict:(id<TNSPropertyMethodConflictProtocol, NSObject>)object;

+ (TNSSimpleStruct)recordsSimpleStruct:(TNSSimpleStruct)object;

+ (TNSStruct16)recordsStruct16:(TNSStruct16)object;

+ (TNSStruct24)recordsStruct24:(TNSStruct24)object;

+ (TNSStruct32)recordsStruct32:(TNSStruct32)object;

+ (TNSNestedStruct)recordsNestedStruct:(TNSNestedStruct)object;

+ (TNSStructWithArray)recordsStructWithArray:(TNSStructWithArray)object;

+ (TNSNestedAnonymousStruct)recordsNestedAnonymousStruct:(TNSNestedAnonymousStruct)object;

+ (TNSComplexStruct)recordsComplexStruct:(TNSComplexStruct)object;

+ (void)recordsPointer:(TNSSimpleStruct*)object;

+ (void)apiNSMutableArrayMethods:(NSMutableArray*)object;

+ (void)apiSwizzle:(TNSSwizzleKlass*)object;

+ (NSString*)callRecursively:(NSString* (^)())block;

+ (NSString*)callOnThread:(NSString* (^)())block;

- (void (^)())getBlock;
- (void (^)())getBlockFromNative;

@end
