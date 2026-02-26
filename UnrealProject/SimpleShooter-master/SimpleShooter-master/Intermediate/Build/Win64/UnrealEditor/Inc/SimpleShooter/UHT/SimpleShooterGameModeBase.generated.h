// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

// IWYU pragma: private, include "SimpleShooterGameModeBase.h"

#ifdef SIMPLESHOOTER_SimpleShooterGameModeBase_generated_h
#error "SimpleShooterGameModeBase.generated.h already included, missing '#pragma once' in SimpleShooterGameModeBase.h"
#endif
#define SIMPLESHOOTER_SimpleShooterGameModeBase_generated_h

#include "UObject/ObjectMacros.h"
#include "UObject/ScriptMacros.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS

// ********** Begin Class ASimpleShooterGameModeBase ***********************************************
SIMPLESHOOTER_API UClass* Z_Construct_UClass_ASimpleShooterGameModeBase_NoRegister();

#define FID_SimpleShooter_master_Source_SimpleShooter_SimpleShooterGameModeBase_h_15_INCLASS_NO_PURE_DECLS \
private: \
	static void StaticRegisterNativesASimpleShooterGameModeBase(); \
	friend struct Z_Construct_UClass_ASimpleShooterGameModeBase_Statics; \
	static UClass* GetPrivateStaticClass(); \
	friend SIMPLESHOOTER_API UClass* Z_Construct_UClass_ASimpleShooterGameModeBase_NoRegister(); \
public: \
	DECLARE_CLASS2(ASimpleShooterGameModeBase, AGameModeBase, COMPILED_IN_FLAGS(0 | CLASS_Transient | CLASS_Config), CASTCLASS_None, TEXT("/Script/SimpleShooter"), Z_Construct_UClass_ASimpleShooterGameModeBase_NoRegister) \
	DECLARE_SERIALIZER(ASimpleShooterGameModeBase)


#define FID_SimpleShooter_master_Source_SimpleShooter_SimpleShooterGameModeBase_h_15_ENHANCED_CONSTRUCTORS \
	/** Standard constructor, called after all reflected properties have been initialized */ \
	NO_API ASimpleShooterGameModeBase(const FObjectInitializer& ObjectInitializer = FObjectInitializer::Get()); \
	/** Deleted move- and copy-constructors, should never be used */ \
	ASimpleShooterGameModeBase(ASimpleShooterGameModeBase&&) = delete; \
	ASimpleShooterGameModeBase(const ASimpleShooterGameModeBase&) = delete; \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, ASimpleShooterGameModeBase); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(ASimpleShooterGameModeBase); \
	DEFINE_DEFAULT_OBJECT_INITIALIZER_CONSTRUCTOR_CALL(ASimpleShooterGameModeBase) \
	NO_API virtual ~ASimpleShooterGameModeBase();


#define FID_SimpleShooter_master_Source_SimpleShooter_SimpleShooterGameModeBase_h_12_PROLOG
#define FID_SimpleShooter_master_Source_SimpleShooter_SimpleShooterGameModeBase_h_15_GENERATED_BODY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	FID_SimpleShooter_master_Source_SimpleShooter_SimpleShooterGameModeBase_h_15_INCLASS_NO_PURE_DECLS \
	FID_SimpleShooter_master_Source_SimpleShooter_SimpleShooterGameModeBase_h_15_ENHANCED_CONSTRUCTORS \
private: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


class ASimpleShooterGameModeBase;

// ********** End Class ASimpleShooterGameModeBase *************************************************

#undef CURRENT_FILE_ID
#define CURRENT_FILE_ID FID_SimpleShooter_master_Source_SimpleShooter_SimpleShooterGameModeBase_h

PRAGMA_ENABLE_DEPRECATION_WARNINGS
