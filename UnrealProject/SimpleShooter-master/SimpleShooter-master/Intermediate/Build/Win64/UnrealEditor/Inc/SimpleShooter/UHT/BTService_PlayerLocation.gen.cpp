// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "SimpleShooter/BTService_PlayerLocation.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS

void EmptyLinkFunctionForGeneratedCodeBTService_PlayerLocation() {}

// ********** Begin Cross Module References ********************************************************
AIMODULE_API UClass* Z_Construct_UClass_UBTService_BlackboardBase();
SIMPLESHOOTER_API UClass* Z_Construct_UClass_UBTService_PlayerLocation();
SIMPLESHOOTER_API UClass* Z_Construct_UClass_UBTService_PlayerLocation_NoRegister();
UPackage* Z_Construct_UPackage__Script_SimpleShooter();
// ********** End Cross Module References **********************************************************

// ********** Begin Class UBTService_PlayerLocation ************************************************
void UBTService_PlayerLocation::StaticRegisterNativesUBTService_PlayerLocation()
{
}
FClassRegistrationInfo Z_Registration_Info_UClass_UBTService_PlayerLocation;
UClass* UBTService_PlayerLocation::GetPrivateStaticClass()
{
	using TClass = UBTService_PlayerLocation;
	if (!Z_Registration_Info_UClass_UBTService_PlayerLocation.InnerSingleton)
	{
		GetPrivateStaticClassBody(
			StaticPackage(),
			TEXT("BTService_PlayerLocation"),
			Z_Registration_Info_UClass_UBTService_PlayerLocation.InnerSingleton,
			StaticRegisterNativesUBTService_PlayerLocation,
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
	return Z_Registration_Info_UClass_UBTService_PlayerLocation.InnerSingleton;
}
UClass* Z_Construct_UClass_UBTService_PlayerLocation_NoRegister()
{
	return UBTService_PlayerLocation::GetPrivateStaticClass();
}
struct Z_Construct_UClass_UBTService_PlayerLocation_Statics
{
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Class_MetaDataParams[] = {
#if !UE_BUILD_SHIPPING
		{ "Comment", "/**\n * \n */" },
#endif
		{ "IncludePath", "BTService_PlayerLocation.h" },
		{ "ModuleRelativePath", "BTService_PlayerLocation.h" },
	};
#endif // WITH_METADATA
	static UObject* (*const DependentSingletons[])();
	static constexpr FCppClassTypeInfoStatic StaticCppClassTypeInfo = {
		TCppClassTypeTraits<UBTService_PlayerLocation>::IsAbstract,
	};
	static const UECodeGen_Private::FClassParams ClassParams;
};
UObject* (*const Z_Construct_UClass_UBTService_PlayerLocation_Statics::DependentSingletons[])() = {
	(UObject* (*)())Z_Construct_UClass_UBTService_BlackboardBase,
	(UObject* (*)())Z_Construct_UPackage__Script_SimpleShooter,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UClass_UBTService_PlayerLocation_Statics::DependentSingletons) < 16);
const UECodeGen_Private::FClassParams Z_Construct_UClass_UBTService_PlayerLocation_Statics::ClassParams = {
	&UBTService_PlayerLocation::StaticClass,
	nullptr,
	&StaticCppClassTypeInfo,
	DependentSingletons,
	nullptr,
	nullptr,
	nullptr,
	UE_ARRAY_COUNT(DependentSingletons),
	0,
	0,
	0,
	0x001000A0u,
	METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UClass_UBTService_PlayerLocation_Statics::Class_MetaDataParams), Z_Construct_UClass_UBTService_PlayerLocation_Statics::Class_MetaDataParams)
};
UClass* Z_Construct_UClass_UBTService_PlayerLocation()
{
	if (!Z_Registration_Info_UClass_UBTService_PlayerLocation.OuterSingleton)
	{
		UECodeGen_Private::ConstructUClass(Z_Registration_Info_UClass_UBTService_PlayerLocation.OuterSingleton, Z_Construct_UClass_UBTService_PlayerLocation_Statics::ClassParams);
	}
	return Z_Registration_Info_UClass_UBTService_PlayerLocation.OuterSingleton;
}
DEFINE_VTABLE_PTR_HELPER_CTOR(UBTService_PlayerLocation);
UBTService_PlayerLocation::~UBTService_PlayerLocation() {}
// ********** End Class UBTService_PlayerLocation **************************************************

// ********** Begin Registration *******************************************************************
struct Z_CompiledInDeferFile_FID_SimpleShooter_master_Source_SimpleShooter_BTService_PlayerLocation_h__Script_SimpleShooter_Statics
{
	static constexpr FClassRegisterCompiledInInfo ClassInfo[] = {
		{ Z_Construct_UClass_UBTService_PlayerLocation, UBTService_PlayerLocation::StaticClass, TEXT("UBTService_PlayerLocation"), &Z_Registration_Info_UClass_UBTService_PlayerLocation, CONSTRUCT_RELOAD_VERSION_INFO(FClassReloadVersionInfo, sizeof(UBTService_PlayerLocation), 2137886561U) },
	};
};
static FRegisterCompiledInInfo Z_CompiledInDeferFile_FID_SimpleShooter_master_Source_SimpleShooter_BTService_PlayerLocation_h__Script_SimpleShooter_634509057(TEXT("/Script/SimpleShooter"),
	Z_CompiledInDeferFile_FID_SimpleShooter_master_Source_SimpleShooter_BTService_PlayerLocation_h__Script_SimpleShooter_Statics::ClassInfo, UE_ARRAY_COUNT(Z_CompiledInDeferFile_FID_SimpleShooter_master_Source_SimpleShooter_BTService_PlayerLocation_h__Script_SimpleShooter_Statics::ClassInfo),
	nullptr, 0,
	nullptr, 0);
// ********** End Registration *********************************************************************

PRAGMA_ENABLE_DEPRECATION_WARNINGS
