// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

// IWYU pragma: private, include "TP_WeaponComponent.h"

#ifdef CRYPTRAIDER_TP_WeaponComponent_generated_h
#error "TP_WeaponComponent.generated.h already included, missing '#pragma once' in TP_WeaponComponent.h"
#endif
#define CRYPTRAIDER_TP_WeaponComponent_generated_h

#include "UObject/ObjectMacros.h"
#include "UObject/ScriptMacros.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS

class AActor;
class UPrimitiveComponent;
struct FHitResult;

// ********** Begin Class UTP_WeaponComponent ******************************************************
#define FID_CryptRaider_Source_CryptRaider_TP_WeaponComponent_h_17_RPC_WRAPPERS_NO_PURE_DECLS \
	DECLARE_FUNCTION(execOnSphereBeginOverlap); \
	DECLARE_FUNCTION(execFire);


CRYPTRAIDER_API UClass* Z_Construct_UClass_UTP_WeaponComponent_NoRegister();

#define FID_CryptRaider_Source_CryptRaider_TP_WeaponComponent_h_17_INCLASS_NO_PURE_DECLS \
private: \
	static void StaticRegisterNativesUTP_WeaponComponent(); \
	friend struct Z_Construct_UClass_UTP_WeaponComponent_Statics; \
	static UClass* GetPrivateStaticClass(); \
	friend CRYPTRAIDER_API UClass* Z_Construct_UClass_UTP_WeaponComponent_NoRegister(); \
public: \
	DECLARE_CLASS2(UTP_WeaponComponent, USphereComponent, COMPILED_IN_FLAGS(0 | CLASS_Config), CASTCLASS_None, TEXT("/Script/CryptRaider"), Z_Construct_UClass_UTP_WeaponComponent_NoRegister) \
	DECLARE_SERIALIZER(UTP_WeaponComponent)


#define FID_CryptRaider_Source_CryptRaider_TP_WeaponComponent_h_17_ENHANCED_CONSTRUCTORS \
	/** Deleted move- and copy-constructors, should never be used */ \
	UTP_WeaponComponent(UTP_WeaponComponent&&) = delete; \
	UTP_WeaponComponent(const UTP_WeaponComponent&) = delete; \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, UTP_WeaponComponent); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(UTP_WeaponComponent); \
	DEFINE_DEFAULT_CONSTRUCTOR_CALL(UTP_WeaponComponent) \
	NO_API virtual ~UTP_WeaponComponent();


#define FID_CryptRaider_Source_CryptRaider_TP_WeaponComponent_h_14_PROLOG
#define FID_CryptRaider_Source_CryptRaider_TP_WeaponComponent_h_17_GENERATED_BODY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	FID_CryptRaider_Source_CryptRaider_TP_WeaponComponent_h_17_RPC_WRAPPERS_NO_PURE_DECLS \
	FID_CryptRaider_Source_CryptRaider_TP_WeaponComponent_h_17_INCLASS_NO_PURE_DECLS \
	FID_CryptRaider_Source_CryptRaider_TP_WeaponComponent_h_17_ENHANCED_CONSTRUCTORS \
private: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


class UTP_WeaponComponent;

// ********** End Class UTP_WeaponComponent ********************************************************

#undef CURRENT_FILE_ID
#define CURRENT_FILE_ID FID_CryptRaider_Source_CryptRaider_TP_WeaponComponent_h

PRAGMA_ENABLE_DEPRECATION_WARNINGS
