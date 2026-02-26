// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

// IWYU pragma: private, include "CryptRaiderProjectile.h"

#ifdef CRYPTRAIDER_CryptRaiderProjectile_generated_h
#error "CryptRaiderProjectile.generated.h already included, missing '#pragma once' in CryptRaiderProjectile.h"
#endif
#define CRYPTRAIDER_CryptRaiderProjectile_generated_h

#include "UObject/ObjectMacros.h"
#include "UObject/ScriptMacros.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS

class AActor;
class UPrimitiveComponent;
struct FHitResult;

// ********** Begin Class ACryptRaiderProjectile ***************************************************
#define FID_CryptRaider_Source_CryptRaider_CryptRaiderProjectile_h_15_RPC_WRAPPERS_NO_PURE_DECLS \
	DECLARE_FUNCTION(execOnHit);


CRYPTRAIDER_API UClass* Z_Construct_UClass_ACryptRaiderProjectile_NoRegister();

#define FID_CryptRaider_Source_CryptRaider_CryptRaiderProjectile_h_15_INCLASS_NO_PURE_DECLS \
private: \
	static void StaticRegisterNativesACryptRaiderProjectile(); \
	friend struct Z_Construct_UClass_ACryptRaiderProjectile_Statics; \
	static UClass* GetPrivateStaticClass(); \
	friend CRYPTRAIDER_API UClass* Z_Construct_UClass_ACryptRaiderProjectile_NoRegister(); \
public: \
	DECLARE_CLASS2(ACryptRaiderProjectile, AActor, COMPILED_IN_FLAGS(0 | CLASS_Config), CASTCLASS_None, TEXT("/Script/CryptRaider"), Z_Construct_UClass_ACryptRaiderProjectile_NoRegister) \
	DECLARE_SERIALIZER(ACryptRaiderProjectile) \
	static const TCHAR* StaticConfigName() {return TEXT("Game");} \



#define FID_CryptRaider_Source_CryptRaider_CryptRaiderProjectile_h_15_ENHANCED_CONSTRUCTORS \
	/** Deleted move- and copy-constructors, should never be used */ \
	ACryptRaiderProjectile(ACryptRaiderProjectile&&) = delete; \
	ACryptRaiderProjectile(const ACryptRaiderProjectile&) = delete; \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, ACryptRaiderProjectile); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(ACryptRaiderProjectile); \
	DEFINE_DEFAULT_CONSTRUCTOR_CALL(ACryptRaiderProjectile) \
	NO_API virtual ~ACryptRaiderProjectile();


#define FID_CryptRaider_Source_CryptRaider_CryptRaiderProjectile_h_12_PROLOG
#define FID_CryptRaider_Source_CryptRaider_CryptRaiderProjectile_h_15_GENERATED_BODY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	FID_CryptRaider_Source_CryptRaider_CryptRaiderProjectile_h_15_RPC_WRAPPERS_NO_PURE_DECLS \
	FID_CryptRaider_Source_CryptRaider_CryptRaiderProjectile_h_15_INCLASS_NO_PURE_DECLS \
	FID_CryptRaider_Source_CryptRaider_CryptRaiderProjectile_h_15_ENHANCED_CONSTRUCTORS \
private: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


class ACryptRaiderProjectile;

// ********** End Class ACryptRaiderProjectile *****************************************************

#undef CURRENT_FILE_ID
#define CURRENT_FILE_ID FID_CryptRaider_Source_CryptRaider_CryptRaiderProjectile_h

PRAGMA_ENABLE_DEPRECATION_WARNINGS
