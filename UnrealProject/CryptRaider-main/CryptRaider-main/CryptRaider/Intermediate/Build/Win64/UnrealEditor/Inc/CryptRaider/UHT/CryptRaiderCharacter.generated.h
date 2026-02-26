// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

// IWYU pragma: private, include "CryptRaiderCharacter.h"

#ifdef CRYPTRAIDER_CryptRaiderCharacter_generated_h
#error "CryptRaiderCharacter.generated.h already included, missing '#pragma once' in CryptRaiderCharacter.h"
#endif
#define CRYPTRAIDER_CryptRaiderCharacter_generated_h

#include "UObject/ObjectMacros.h"
#include "UObject/ScriptMacros.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS

// ********** Begin Delegate FOnItemUsed ***********************************************************
#define FID_CryptRaider_Source_CryptRaider_CryptRaiderCharacter_h_16_DELEGATE \
CRYPTRAIDER_API void FOnItemUsed_DelegateWrapper(const FMulticastScriptDelegate& OnItemUsed);


// ********** End Delegate FOnItemUsed *************************************************************

// ********** Begin Class ACryptRaiderCharacter ****************************************************
CRYPTRAIDER_API UClass* Z_Construct_UClass_ACryptRaiderCharacter_NoRegister();

#define FID_CryptRaider_Source_CryptRaider_CryptRaiderCharacter_h_21_INCLASS_NO_PURE_DECLS \
private: \
	static void StaticRegisterNativesACryptRaiderCharacter(); \
	friend struct Z_Construct_UClass_ACryptRaiderCharacter_Statics; \
	static UClass* GetPrivateStaticClass(); \
	friend CRYPTRAIDER_API UClass* Z_Construct_UClass_ACryptRaiderCharacter_NoRegister(); \
public: \
	DECLARE_CLASS2(ACryptRaiderCharacter, ACharacter, COMPILED_IN_FLAGS(0 | CLASS_Config), CASTCLASS_None, TEXT("/Script/CryptRaider"), Z_Construct_UClass_ACryptRaiderCharacter_NoRegister) \
	DECLARE_SERIALIZER(ACryptRaiderCharacter)


#define FID_CryptRaider_Source_CryptRaider_CryptRaiderCharacter_h_21_ENHANCED_CONSTRUCTORS \
	/** Deleted move- and copy-constructors, should never be used */ \
	ACryptRaiderCharacter(ACryptRaiderCharacter&&) = delete; \
	ACryptRaiderCharacter(const ACryptRaiderCharacter&) = delete; \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, ACryptRaiderCharacter); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(ACryptRaiderCharacter); \
	DEFINE_DEFAULT_CONSTRUCTOR_CALL(ACryptRaiderCharacter) \
	NO_API virtual ~ACryptRaiderCharacter();


#define FID_CryptRaider_Source_CryptRaider_CryptRaiderCharacter_h_18_PROLOG
#define FID_CryptRaider_Source_CryptRaider_CryptRaiderCharacter_h_21_GENERATED_BODY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	FID_CryptRaider_Source_CryptRaider_CryptRaiderCharacter_h_21_INCLASS_NO_PURE_DECLS \
	FID_CryptRaider_Source_CryptRaider_CryptRaiderCharacter_h_21_ENHANCED_CONSTRUCTORS \
private: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


class ACryptRaiderCharacter;

// ********** End Class ACryptRaiderCharacter ******************************************************

#undef CURRENT_FILE_ID
#define CURRENT_FILE_ID FID_CryptRaider_Source_CryptRaider_CryptRaiderCharacter_h

PRAGMA_ENABLE_DEPRECATION_WARNINGS
