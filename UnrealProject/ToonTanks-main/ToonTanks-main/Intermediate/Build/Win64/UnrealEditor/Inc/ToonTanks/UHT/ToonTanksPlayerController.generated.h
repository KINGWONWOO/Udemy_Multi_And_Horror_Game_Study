// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

// IWYU pragma: private, include "ToonTanksPlayerController.h"

#ifdef TOONTANKS_ToonTanksPlayerController_generated_h
#error "ToonTanksPlayerController.generated.h already included, missing '#pragma once' in ToonTanksPlayerController.h"
#endif
#define TOONTANKS_ToonTanksPlayerController_generated_h

#include "UObject/ObjectMacros.h"
#include "UObject/ScriptMacros.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS

// ********** Begin Class AToonTanksPlayerController ***********************************************
TOONTANKS_API UClass* Z_Construct_UClass_AToonTanksPlayerController_NoRegister();

#define FID_ToonTanks_main_Source_ToonTanks_ToonTanksPlayerController_h_15_INCLASS_NO_PURE_DECLS \
private: \
	static void StaticRegisterNativesAToonTanksPlayerController(); \
	friend struct Z_Construct_UClass_AToonTanksPlayerController_Statics; \
	static UClass* GetPrivateStaticClass(); \
	friend TOONTANKS_API UClass* Z_Construct_UClass_AToonTanksPlayerController_NoRegister(); \
public: \
	DECLARE_CLASS2(AToonTanksPlayerController, APlayerController, COMPILED_IN_FLAGS(0 | CLASS_Config), CASTCLASS_None, TEXT("/Script/ToonTanks"), Z_Construct_UClass_AToonTanksPlayerController_NoRegister) \
	DECLARE_SERIALIZER(AToonTanksPlayerController)


#define FID_ToonTanks_main_Source_ToonTanks_ToonTanksPlayerController_h_15_ENHANCED_CONSTRUCTORS \
	/** Standard constructor, called after all reflected properties have been initialized */ \
	NO_API AToonTanksPlayerController(const FObjectInitializer& ObjectInitializer = FObjectInitializer::Get()); \
	/** Deleted move- and copy-constructors, should never be used */ \
	AToonTanksPlayerController(AToonTanksPlayerController&&) = delete; \
	AToonTanksPlayerController(const AToonTanksPlayerController&) = delete; \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, AToonTanksPlayerController); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(AToonTanksPlayerController); \
	DEFINE_DEFAULT_OBJECT_INITIALIZER_CONSTRUCTOR_CALL(AToonTanksPlayerController) \
	NO_API virtual ~AToonTanksPlayerController();


#define FID_ToonTanks_main_Source_ToonTanks_ToonTanksPlayerController_h_12_PROLOG
#define FID_ToonTanks_main_Source_ToonTanks_ToonTanksPlayerController_h_15_GENERATED_BODY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	FID_ToonTanks_main_Source_ToonTanks_ToonTanksPlayerController_h_15_INCLASS_NO_PURE_DECLS \
	FID_ToonTanks_main_Source_ToonTanks_ToonTanksPlayerController_h_15_ENHANCED_CONSTRUCTORS \
private: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


class AToonTanksPlayerController;

// ********** End Class AToonTanksPlayerController *************************************************

#undef CURRENT_FILE_ID
#define CURRENT_FILE_ID FID_ToonTanks_main_Source_ToonTanks_ToonTanksPlayerController_h

PRAGMA_ENABLE_DEPRECATION_WARNINGS
