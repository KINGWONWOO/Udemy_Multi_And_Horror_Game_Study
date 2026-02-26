// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "ToonTanks/ToonTanksPlayerController.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS

void EmptyLinkFunctionForGeneratedCodeToonTanksPlayerController() {}

// ********** Begin Cross Module References ********************************************************
ENGINE_API UClass* Z_Construct_UClass_APlayerController();
TOONTANKS_API UClass* Z_Construct_UClass_AToonTanksPlayerController();
TOONTANKS_API UClass* Z_Construct_UClass_AToonTanksPlayerController_NoRegister();
UPackage* Z_Construct_UPackage__Script_ToonTanks();
// ********** End Cross Module References **********************************************************

// ********** Begin Class AToonTanksPlayerController ***********************************************
void AToonTanksPlayerController::StaticRegisterNativesAToonTanksPlayerController()
{
}
FClassRegistrationInfo Z_Registration_Info_UClass_AToonTanksPlayerController;
UClass* AToonTanksPlayerController::GetPrivateStaticClass()
{
	using TClass = AToonTanksPlayerController;
	if (!Z_Registration_Info_UClass_AToonTanksPlayerController.InnerSingleton)
	{
		GetPrivateStaticClassBody(
			StaticPackage(),
			TEXT("ToonTanksPlayerController"),
			Z_Registration_Info_UClass_AToonTanksPlayerController.InnerSingleton,
			StaticRegisterNativesAToonTanksPlayerController,
			sizeof(TClass),
			alignof(TClass),
			TClass::StaticClassFlags,
			TClass::StaticClassCastFlags(),
			TClass::StaticConfigName(),
			(UClass::ClassConstructorType)InternalConstructor<TClass>,
			(UClass::ClassVTableHelperCtorCallerType)InternalVTableHelperCtorCaller<TClass>,
			UOBJECT_CPPCLASS_STATICFUNCTIONS_FORCLASS(TClass),
			&TClass::Super::StaticClass,
			&TClass::WithinClass::StaticClass
		);
	}
	return Z_Registration_Info_UClass_AToonTanksPlayerController.InnerSingleton;
}
UClass* Z_Construct_UClass_AToonTanksPlayerController_NoRegister()
{
	return AToonTanksPlayerController::GetPrivateStaticClass();
}
struct Z_Construct_UClass_AToonTanksPlayerController_Statics
{
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Class_MetaDataParams[] = {
#if !UE_BUILD_SHIPPING
		{ "Comment", "/**\n * \n */" },
#endif
		{ "HideCategories", "Collision Rendering Transformation" },
		{ "IncludePath", "ToonTanksPlayerController.h" },
		{ "ModuleRelativePath", "ToonTanksPlayerController.h" },
	};
#endif // WITH_METADATA
	static UObject* (*const DependentSingletons[])();
	static constexpr FCppClassTypeInfoStatic StaticCppClassTypeInfo = {
		TCppClassTypeTraits<AToonTanksPlayerController>::IsAbstract,
	};
	static const UECodeGen_Private::FClassParams ClassParams;
};
UObject* (*const Z_Construct_UClass_AToonTanksPlayerController_Statics::DependentSingletons[])() = {
	(UObject* (*)())Z_Construct_UClass_APlayerController,
	(UObject* (*)())Z_Construct_UPackage__Script_ToonTanks,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UClass_AToonTanksPlayerController_Statics::DependentSingletons) < 16);
const UECodeGen_Private::FClassParams Z_Construct_UClass_AToonTanksPlayerController_Statics::ClassParams = {
	&AToonTanksPlayerController::StaticClass,
	"Game",
	&StaticCppClassTypeInfo,
	DependentSingletons,
	nullptr,
	nullptr,
	nullptr,
	UE_ARRAY_COUNT(DependentSingletons),
	0,
	0,
	0,
	0x009003A4u,
	METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UClass_AToonTanksPlayerController_Statics::Class_MetaDataParams), Z_Construct_UClass_AToonTanksPlayerController_Statics::Class_MetaDataParams)
};
UClass* Z_Construct_UClass_AToonTanksPlayerController()
{
	if (!Z_Registration_Info_UClass_AToonTanksPlayerController.OuterSingleton)
	{
		UECodeGen_Private::ConstructUClass(Z_Registration_Info_UClass_AToonTanksPlayerController.OuterSingleton, Z_Construct_UClass_AToonTanksPlayerController_Statics::ClassParams);
	}
	return Z_Registration_Info_UClass_AToonTanksPlayerController.OuterSingleton;
}
AToonTanksPlayerController::AToonTanksPlayerController(const FObjectInitializer& ObjectInitializer) : Super(ObjectInitializer) {}
DEFINE_VTABLE_PTR_HELPER_CTOR(AToonTanksPlayerController);
AToonTanksPlayerController::~AToonTanksPlayerController() {}
// ********** End Class AToonTanksPlayerController *************************************************

// ********** Begin Registration *******************************************************************
struct Z_CompiledInDeferFile_FID_ToonTanks_main_Source_ToonTanks_ToonTanksPlayerController_h__Script_ToonTanks_Statics
{
	static constexpr FClassRegisterCompiledInInfo ClassInfo[] = {
		{ Z_Construct_UClass_AToonTanksPlayerController, AToonTanksPlayerController::StaticClass, TEXT("AToonTanksPlayerController"), &Z_Registration_Info_UClass_AToonTanksPlayerController, CONSTRUCT_RELOAD_VERSION_INFO(FClassReloadVersionInfo, sizeof(AToonTanksPlayerController), 2801261268U) },
	};
};
static FRegisterCompiledInInfo Z_CompiledInDeferFile_FID_ToonTanks_main_Source_ToonTanks_ToonTanksPlayerController_h__Script_ToonTanks_88003057(TEXT("/Script/ToonTanks"),
	Z_CompiledInDeferFile_FID_ToonTanks_main_Source_ToonTanks_ToonTanksPlayerController_h__Script_ToonTanks_Statics::ClassInfo, UE_ARRAY_COUNT(Z_CompiledInDeferFile_FID_ToonTanks_main_Source_ToonTanks_ToonTanksPlayerController_h__Script_ToonTanks_Statics::ClassInfo),
	nullptr, 0,
	nullptr, 0);
// ********** End Registration *********************************************************************

PRAGMA_ENABLE_DEPRECATION_WARNINGS
