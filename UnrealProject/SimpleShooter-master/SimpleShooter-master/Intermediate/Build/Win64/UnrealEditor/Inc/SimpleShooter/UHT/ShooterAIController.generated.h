// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

// IWYU pragma: private, include "ShooterAIController.h"

#ifdef SIMPLESHOOTER_ShooterAIController_generated_h
#error "ShooterAIController.generated.h already included, missing '#pragma once' in ShooterAIController.h"
#endif
#define SIMPLESHOOTER_ShooterAIController_generated_h

#include "UObject/ObjectMacros.h"
#include "UObject/ScriptMacros.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS

// ********** Begin Class AShooterAIController *****************************************************
SIMPLESHOOTER_API UClass* Z_Construct_UClass_AShooterAIController_NoRegister();

#define FID_SimpleShooter_master_Source_SimpleShooter_ShooterAIController_h_15_INCLASS_NO_PURE_DECLS \
private: \
	static void StaticRegisterNativesAShooterAIController(); \
	friend struct Z_Construct_UClass_AShooterAIController_Statics; \
	static UClass* GetPrivateStaticClass(); \
	friend SIMPLESHOOTER_API UClass* Z_Construct_UClass_AShooterAIController_NoRegister(); \
public: \
	DECLARE_CLASS2(AShooterAIController, AAIController, COMPILED_IN_FLAGS(0 | CLASS_Config), CASTCLASS_None, TEXT("/Script/SimpleShooter"), Z_Construct_UClass_AShooterAIController_NoRegister) \
	DECLARE_SERIALIZER(AShooterAIController)


#define FID_SimpleShooter_master_Source_SimpleShooter_ShooterAIController_h_15_ENHANCED_CONSTRUCTORS \
	/** Standard constructor, called after all reflected properties have been initialized */ \
	NO_API AShooterAIController(const FObjectInitializer& ObjectInitializer = FObjectInitializer::Get()); \
	/** Deleted move- and copy-constructors, should never be used */ \
	AShooterAIController(AShooterAIController&&) = delete; \
	AShooterAIController(const AShooterAIController&) = delete; \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, AShooterAIController); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(AShooterAIController); \
	DEFINE_DEFAULT_OBJECT_INITIALIZER_CONSTRUCTOR_CALL(AShooterAIController) \
	NO_API virtual ~AShooterAIController();


#define FID_SimpleShooter_master_Source_SimpleShooter_ShooterAIController_h_12_PROLOG
#define FID_SimpleShooter_master_Source_SimpleShooter_ShooterAIController_h_15_GENERATED_BODY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	FID_SimpleShooter_master_Source_SimpleShooter_ShooterAIController_h_15_INCLASS_NO_PURE_DECLS \
	FID_SimpleShooter_master_Source_SimpleShooter_ShooterAIController_h_15_ENHANCED_CONSTRUCTORS \
private: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


class AShooterAIController;

// ********** End Class AShooterAIController *******************************************************

#undef CURRENT_FILE_ID
#define CURRENT_FILE_ID FID_SimpleShooter_master_Source_SimpleShooter_ShooterAIController_h

PRAGMA_ENABLE_DEPRECATION_WARNINGS
