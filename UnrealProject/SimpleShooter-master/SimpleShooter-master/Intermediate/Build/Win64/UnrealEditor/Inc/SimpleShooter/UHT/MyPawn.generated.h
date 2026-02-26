// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

// IWYU pragma: private, include "MyPawn.h"

#ifdef SIMPLESHOOTER_MyPawn_generated_h
#error "MyPawn.generated.h already included, missing '#pragma once' in MyPawn.h"
#endif
#define SIMPLESHOOTER_MyPawn_generated_h

#include "UObject/ObjectMacros.h"
#include "UObject/ScriptMacros.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS

// ********** Begin Class AMyPawn ******************************************************************
SIMPLESHOOTER_API UClass* Z_Construct_UClass_AMyPawn_NoRegister();

#define FID_SimpleShooter_master_Source_SimpleShooter_MyPawn_h_12_INCLASS_NO_PURE_DECLS \
private: \
	static void StaticRegisterNativesAMyPawn(); \
	friend struct Z_Construct_UClass_AMyPawn_Statics; \
	static UClass* GetPrivateStaticClass(); \
	friend SIMPLESHOOTER_API UClass* Z_Construct_UClass_AMyPawn_NoRegister(); \
public: \
	DECLARE_CLASS2(AMyPawn, APawn, COMPILED_IN_FLAGS(0 | CLASS_Config), CASTCLASS_None, TEXT("/Script/SimpleShooter"), Z_Construct_UClass_AMyPawn_NoRegister) \
	DECLARE_SERIALIZER(AMyPawn)


#define FID_SimpleShooter_master_Source_SimpleShooter_MyPawn_h_12_ENHANCED_CONSTRUCTORS \
	/** Deleted move- and copy-constructors, should never be used */ \
	AMyPawn(AMyPawn&&) = delete; \
	AMyPawn(const AMyPawn&) = delete; \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, AMyPawn); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(AMyPawn); \
	DEFINE_DEFAULT_CONSTRUCTOR_CALL(AMyPawn) \
	NO_API virtual ~AMyPawn();


#define FID_SimpleShooter_master_Source_SimpleShooter_MyPawn_h_9_PROLOG
#define FID_SimpleShooter_master_Source_SimpleShooter_MyPawn_h_12_GENERATED_BODY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	FID_SimpleShooter_master_Source_SimpleShooter_MyPawn_h_12_INCLASS_NO_PURE_DECLS \
	FID_SimpleShooter_master_Source_SimpleShooter_MyPawn_h_12_ENHANCED_CONSTRUCTORS \
private: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


class AMyPawn;

// ********** End Class AMyPawn ********************************************************************

#undef CURRENT_FILE_ID
#define CURRENT_FILE_ID FID_SimpleShooter_master_Source_SimpleShooter_MyPawn_h

PRAGMA_ENABLE_DEPRECATION_WARNINGS
