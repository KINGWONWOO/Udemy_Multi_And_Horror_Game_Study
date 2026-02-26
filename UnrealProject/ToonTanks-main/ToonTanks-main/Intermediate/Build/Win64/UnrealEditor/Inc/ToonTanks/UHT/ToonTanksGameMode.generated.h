// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

// IWYU pragma: private, include "ToonTanksGameMode.h"

#ifdef TOONTANKS_ToonTanksGameMode_generated_h
#error "ToonTanksGameMode.generated.h already included, missing '#pragma once' in ToonTanksGameMode.h"
#endif
#define TOONTANKS_ToonTanksGameMode_generated_h

#include "UObject/ObjectMacros.h"
#include "UObject/ScriptMacros.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS

// ********** Begin Class AToonTanksGameMode *******************************************************
#define FID_ToonTanks_main_Source_ToonTanks_ToonTanksGameMode_h_15_CALLBACK_WRAPPERS
TOONTANKS_API UClass* Z_Construct_UClass_AToonTanksGameMode_NoRegister();

#define FID_ToonTanks_main_Source_ToonTanks_ToonTanksGameMode_h_15_INCLASS_NO_PURE_DECLS \
private: \
	static void StaticRegisterNativesAToonTanksGameMode(); \
	friend struct Z_Construct_UClass_AToonTanksGameMode_Statics; \
	static UClass* GetPrivateStaticClass(); \
	friend TOONTANKS_API UClass* Z_Construct_UClass_AToonTanksGameMode_NoRegister(); \
public: \
	DECLARE_CLASS2(AToonTanksGameMode, AGameModeBase, COMPILED_IN_FLAGS(0 | CLASS_Transient | CLASS_Config), CASTCLASS_None, TEXT("/Script/ToonTanks"), Z_Construct_UClass_AToonTanksGameMode_NoRegister) \
	DECLARE_SERIALIZER(AToonTanksGameMode)


#define FID_ToonTanks_main_Source_ToonTanks_ToonTanksGameMode_h_15_ENHANCED_CONSTRUCTORS \
	/** Standard constructor, called after all reflected properties have been initialized */ \
	NO_API AToonTanksGameMode(const FObjectInitializer& ObjectInitializer = FObjectInitializer::Get()); \
	/** Deleted move- and copy-constructors, should never be used */ \
	AToonTanksGameMode(AToonTanksGameMode&&) = delete; \
	AToonTanksGameMode(const AToonTanksGameMode&) = delete; \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, AToonTanksGameMode); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(AToonTanksGameMode); \
	DEFINE_DEFAULT_OBJECT_INITIALIZER_CONSTRUCTOR_CALL(AToonTanksGameMode) \
	NO_API virtual ~AToonTanksGameMode();


#define FID_ToonTanks_main_Source_ToonTanks_ToonTanksGameMode_h_12_PROLOG
#define FID_ToonTanks_main_Source_ToonTanks_ToonTanksGameMode_h_15_GENERATED_BODY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	FID_ToonTanks_main_Source_ToonTanks_ToonTanksGameMode_h_15_CALLBACK_WRAPPERS \
	FID_ToonTanks_main_Source_ToonTanks_ToonTanksGameMode_h_15_INCLASS_NO_PURE_DECLS \
	FID_ToonTanks_main_Source_ToonTanks_ToonTanksGameMode_h_15_ENHANCED_CONSTRUCTORS \
private: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


class AToonTanksGameMode;

// ********** End Class AToonTanksGameMode *********************************************************

#undef CURRENT_FILE_ID
#define CURRENT_FILE_ID FID_ToonTanks_main_Source_ToonTanks_ToonTanksGameMode_h

PRAGMA_ENABLE_DEPRECATION_WARNINGS
