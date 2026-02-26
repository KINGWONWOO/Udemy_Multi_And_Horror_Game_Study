// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "ToonTanks/ToonTanksGameMode.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS

void EmptyLinkFunctionForGeneratedCodeToonTanksGameMode() {}

// ********** Begin Cross Module References ********************************************************
ENGINE_API UClass* Z_Construct_UClass_AGameModeBase();
TOONTANKS_API UClass* Z_Construct_UClass_AToonTanksGameMode();
TOONTANKS_API UClass* Z_Construct_UClass_AToonTanksGameMode_NoRegister();
UPackage* Z_Construct_UPackage__Script_ToonTanks();
// ********** End Cross Module References **********************************************************

// ********** Begin Class AToonTanksGameMode Function GameOver *************************************
struct ToonTanksGameMode_eventGameOver_Parms
{
	bool bWonGame;
};
static FName NAME_AToonTanksGameMode_GameOver = FName(TEXT("GameOver"));
void AToonTanksGameMode::GameOver(bool bWonGame)
{
	ToonTanksGameMode_eventGameOver_Parms Parms;
	Parms.bWonGame=bWonGame ? true : false;
	UFunction* Func = FindFunctionChecked(NAME_AToonTanksGameMode_GameOver);
	ProcessEvent(Func,&Parms);
}
struct Z_Construct_UFunction_AToonTanksGameMode_GameOver_Statics
{
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "ToonTanksGameMode.h" },
	};
#endif // WITH_METADATA
	static void NewProp_bWonGame_SetBit(void* Obj);
	static const UECodeGen_Private::FBoolPropertyParams NewProp_bWonGame;
	static const UECodeGen_Private::FPropertyParamsBase* const PropPointers[];
	static const UECodeGen_Private::FFunctionParams FuncParams;
};
void Z_Construct_UFunction_AToonTanksGameMode_GameOver_Statics::NewProp_bWonGame_SetBit(void* Obj)
{
	((ToonTanksGameMode_eventGameOver_Parms*)Obj)->bWonGame = 1;
}
const UECodeGen_Private::FBoolPropertyParams Z_Construct_UFunction_AToonTanksGameMode_GameOver_Statics::NewProp_bWonGame = { "bWonGame", nullptr, (EPropertyFlags)0x0010000000000080, UECodeGen_Private::EPropertyGenFlags::Bool | UECodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, nullptr, nullptr, 1, sizeof(bool), sizeof(ToonTanksGameMode_eventGameOver_Parms), &Z_Construct_UFunction_AToonTanksGameMode_GameOver_Statics::NewProp_bWonGame_SetBit, METADATA_PARAMS(0, nullptr) };
const UECodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_AToonTanksGameMode_GameOver_Statics::PropPointers[] = {
	(const UECodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_AToonTanksGameMode_GameOver_Statics::NewProp_bWonGame,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UFunction_AToonTanksGameMode_GameOver_Statics::PropPointers) < 2048);
const UECodeGen_Private::FFunctionParams Z_Construct_UFunction_AToonTanksGameMode_GameOver_Statics::FuncParams = { { (UObject*(*)())Z_Construct_UClass_AToonTanksGameMode, nullptr, "GameOver", Z_Construct_UFunction_AToonTanksGameMode_GameOver_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_AToonTanksGameMode_GameOver_Statics::PropPointers), sizeof(ToonTanksGameMode_eventGameOver_Parms), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x08080800, 0, 0, METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UFunction_AToonTanksGameMode_GameOver_Statics::Function_MetaDataParams), Z_Construct_UFunction_AToonTanksGameMode_GameOver_Statics::Function_MetaDataParams)},  };
static_assert(sizeof(ToonTanksGameMode_eventGameOver_Parms) < MAX_uint16);
UFunction* Z_Construct_UFunction_AToonTanksGameMode_GameOver()
{
	static UFunction* ReturnFunction = nullptr;
	if (!ReturnFunction)
	{
		UECodeGen_Private::ConstructUFunction(&ReturnFunction, Z_Construct_UFunction_AToonTanksGameMode_GameOver_Statics::FuncParams);
	}
	return ReturnFunction;
}
// ********** End Class AToonTanksGameMode Function GameOver ***************************************

// ********** Begin Class AToonTanksGameMode Function StartGame ************************************
static FName NAME_AToonTanksGameMode_StartGame = FName(TEXT("StartGame"));
void AToonTanksGameMode::StartGame()
{
	UFunction* Func = FindFunctionChecked(NAME_AToonTanksGameMode_StartGame);
	ProcessEvent(Func,NULL);
}
struct Z_Construct_UFunction_AToonTanksGameMode_StartGame_Statics
{
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "ToonTanksGameMode.h" },
	};
#endif // WITH_METADATA
	static const UECodeGen_Private::FFunctionParams FuncParams;
};
const UECodeGen_Private::FFunctionParams Z_Construct_UFunction_AToonTanksGameMode_StartGame_Statics::FuncParams = { { (UObject*(*)())Z_Construct_UClass_AToonTanksGameMode, nullptr, "StartGame", nullptr, 0, 0, RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x08080800, 0, 0, METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UFunction_AToonTanksGameMode_StartGame_Statics::Function_MetaDataParams), Z_Construct_UFunction_AToonTanksGameMode_StartGame_Statics::Function_MetaDataParams)},  };
UFunction* Z_Construct_UFunction_AToonTanksGameMode_StartGame()
{
	static UFunction* ReturnFunction = nullptr;
	if (!ReturnFunction)
	{
		UECodeGen_Private::ConstructUFunction(&ReturnFunction, Z_Construct_UFunction_AToonTanksGameMode_StartGame_Statics::FuncParams);
	}
	return ReturnFunction;
}
// ********** End Class AToonTanksGameMode Function StartGame **************************************

// ********** Begin Class AToonTanksGameMode *******************************************************
void AToonTanksGameMode::StaticRegisterNativesAToonTanksGameMode()
{
}
FClassRegistrationInfo Z_Registration_Info_UClass_AToonTanksGameMode;
UClass* AToonTanksGameMode::GetPrivateStaticClass()
{
	using TClass = AToonTanksGameMode;
	if (!Z_Registration_Info_UClass_AToonTanksGameMode.InnerSingleton)
	{
		GetPrivateStaticClassBody(
			StaticPackage(),
			TEXT("ToonTanksGameMode"),
			Z_Registration_Info_UClass_AToonTanksGameMode.InnerSingleton,
			StaticRegisterNativesAToonTanksGameMode,
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
	return Z_Registration_Info_UClass_AToonTanksGameMode.InnerSingleton;
}
UClass* Z_Construct_UClass_AToonTanksGameMode_NoRegister()
{
	return AToonTanksGameMode::GetPrivateStaticClass();
}
struct Z_Construct_UClass_AToonTanksGameMode_Statics
{
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Class_MetaDataParams[] = {
#if !UE_BUILD_SHIPPING
		{ "Comment", "/**\n * \n */" },
#endif
		{ "HideCategories", "Info Rendering MovementReplication Replication Actor Input Movement Collision Rendering HLOD WorldPartition DataLayers Transformation" },
		{ "IncludePath", "ToonTanksGameMode.h" },
		{ "ModuleRelativePath", "ToonTanksGameMode.h" },
		{ "ShowCategories", "Input|MouseInput Input|TouchInput" },
	};
#endif // WITH_METADATA
	static UObject* (*const DependentSingletons[])();
	static constexpr FClassFunctionLinkInfo FuncInfo[] = {
		{ &Z_Construct_UFunction_AToonTanksGameMode_GameOver, "GameOver" }, // 816832924
		{ &Z_Construct_UFunction_AToonTanksGameMode_StartGame, "StartGame" }, // 2666541888
	};
	static_assert(UE_ARRAY_COUNT(FuncInfo) < 2048);
	static constexpr FCppClassTypeInfoStatic StaticCppClassTypeInfo = {
		TCppClassTypeTraits<AToonTanksGameMode>::IsAbstract,
	};
	static const UECodeGen_Private::FClassParams ClassParams;
};
UObject* (*const Z_Construct_UClass_AToonTanksGameMode_Statics::DependentSingletons[])() = {
	(UObject* (*)())Z_Construct_UClass_AGameModeBase,
	(UObject* (*)())Z_Construct_UPackage__Script_ToonTanks,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UClass_AToonTanksGameMode_Statics::DependentSingletons) < 16);
const UECodeGen_Private::FClassParams Z_Construct_UClass_AToonTanksGameMode_Statics::ClassParams = {
	&AToonTanksGameMode::StaticClass,
	"Game",
	&StaticCppClassTypeInfo,
	DependentSingletons,
	FuncInfo,
	nullptr,
	nullptr,
	UE_ARRAY_COUNT(DependentSingletons),
	UE_ARRAY_COUNT(FuncInfo),
	0,
	0,
	0x009003ACu,
	METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UClass_AToonTanksGameMode_Statics::Class_MetaDataParams), Z_Construct_UClass_AToonTanksGameMode_Statics::Class_MetaDataParams)
};
UClass* Z_Construct_UClass_AToonTanksGameMode()
{
	if (!Z_Registration_Info_UClass_AToonTanksGameMode.OuterSingleton)
	{
		UECodeGen_Private::ConstructUClass(Z_Registration_Info_UClass_AToonTanksGameMode.OuterSingleton, Z_Construct_UClass_AToonTanksGameMode_Statics::ClassParams);
	}
	return Z_Registration_Info_UClass_AToonTanksGameMode.OuterSingleton;
}
AToonTanksGameMode::AToonTanksGameMode(const FObjectInitializer& ObjectInitializer) : Super(ObjectInitializer) {}
DEFINE_VTABLE_PTR_HELPER_CTOR(AToonTanksGameMode);
AToonTanksGameMode::~AToonTanksGameMode() {}
// ********** End Class AToonTanksGameMode *********************************************************

// ********** Begin Registration *******************************************************************
struct Z_CompiledInDeferFile_FID_ToonTanks_main_Source_ToonTanks_ToonTanksGameMode_h__Script_ToonTanks_Statics
{
	static constexpr FClassRegisterCompiledInInfo ClassInfo[] = {
		{ Z_Construct_UClass_AToonTanksGameMode, AToonTanksGameMode::StaticClass, TEXT("AToonTanksGameMode"), &Z_Registration_Info_UClass_AToonTanksGameMode, CONSTRUCT_RELOAD_VERSION_INFO(FClassReloadVersionInfo, sizeof(AToonTanksGameMode), 1452769804U) },
	};
};
static FRegisterCompiledInInfo Z_CompiledInDeferFile_FID_ToonTanks_main_Source_ToonTanks_ToonTanksGameMode_h__Script_ToonTanks_4288695283(TEXT("/Script/ToonTanks"),
	Z_CompiledInDeferFile_FID_ToonTanks_main_Source_ToonTanks_ToonTanksGameMode_h__Script_ToonTanks_Statics::ClassInfo, UE_ARRAY_COUNT(Z_CompiledInDeferFile_FID_ToonTanks_main_Source_ToonTanks_ToonTanksGameMode_h__Script_ToonTanks_Statics::ClassInfo),
	nullptr, 0,
	nullptr, 0);
// ********** End Registration *********************************************************************

PRAGMA_ENABLE_DEPRECATION_WARNINGS
