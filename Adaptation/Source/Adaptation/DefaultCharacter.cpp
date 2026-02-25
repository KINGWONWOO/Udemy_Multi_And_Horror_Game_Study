// Fill out your copyright notice in the Description page of Project Settings.


#include "DefaultCharacter.h"
#include "Components/CapsuleComponent.h"
#include "GameFramework/SpringArmComponent.h"
#include "EnhancedInputComponent.h"
#include "InputMappingContext.h"
#include "EnhancedInputSubsystems.h"
#include "Camera/CameraComponent.h"
#include "GameFramework/CharacterMovementComponent.h"

// Sets default values
ADefaultCharacter::ADefaultCharacter()
{
 	// Set this character to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	static ConstructorHelpers::FObjectFinder<UInputMappingContext> InputMappingContextFinder
	(TEXT("/Game/Input/MappingContext/IMC_MainCharacter.IMC_MainCharacter"));
	if (InputMappingContextFinder.Succeeded())
	{
		InputMappingContext = InputMappingContextFinder.Object;
	}

	static ConstructorHelpers::FObjectFinder<UInputAction> InputActoinMoveFinder
	(TEXT("/Game/Input/InputAction/IA_Move.IA_Move"));
	if (InputActoinMoveFinder.Succeeded())
	{
		Moving = InputActoinMoveFinder.Object;
	}

	static ConstructorHelpers::FObjectFinder<UInputAction> InputActoinLookFinder
	(TEXT("/Game/Input/InputAction/IA_Look.IA_Look"));
	if (InputActoinLookFinder.Succeeded())
	{
		Looking = InputActoinLookFinder.Object;
	}

	static ConstructorHelpers::FObjectFinder<UInputAction> InputActionJumpFinder
	(TEXT("/Game/Input/InputAction/IA_Jump.IA_Jump"));
	if (InputActionJumpFinder.Succeeded())
	{
		Jumping = InputActionJumpFinder.Object;
	}

}

// Called when the game starts or when spawned
void ADefaultCharacter::BeginPlay()
{
	Super::BeginPlay();

	PlayerController = Cast<APlayerController>(GetController());
	if (PlayerController != nullptr)
	{
		UEnhancedInputLocalPlayerSubsystem* Subsystem = ULocalPlayer::GetSubsystem<UEnhancedInputLocalPlayerSubsystem>(PlayerController->GetLocalPlayer());
		if (Subsystem != nullptr) {
			Subsystem->AddMappingContext(InputMappingContext, 0);
		}
	}
}

// Called every frame
void ADefaultCharacter::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

// Called to bind functionality to input
void ADefaultCharacter::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
	Super::SetupPlayerInputComponent(PlayerInputComponent);
	
	UEnhancedInputComponent* Input = Cast<UEnhancedInputComponent>(PlayerInputComponent);
	if (Input != nullptr)
	{
		Input->BindAction(Moving, ETriggerEvent::Triggered, this, &ADefaultCharacter::Move);
		Input->BindAction(Looking, ETriggerEvent::Triggered, this, &ADefaultCharacter::Look);
		Input->BindAction(Jumping, ETriggerEvent::Triggered, this, &ACharacter::Jump);
	}
}

void ADefaultCharacter::Move(const FInputActionValue& Value)
{
	if (PlayerController)
	{
		// 크기
		float FowardValue = Value.Get<FVector2D>().Y;
		float SideValue = Value.Get<FVector2D>().X;
		// 방향
		const FRotator Rotation = PlayerController->GetControlRotation();
		const FRotator YawRotation(0, Rotation.Yaw, 0);

		FVector FowardDirection = FRotationMatrix(YawRotation).GetUnitAxis(EAxis::X);
		FVector SideDirection = FRotationMatrix(YawRotation).GetUnitAxis(EAxis::Y);
		AddMovementInput(FowardDirection, FowardValue);
		AddMovementInput(SideDirection, SideValue);
	}
}

void ADefaultCharacter::Look(const FInputActionValue& Value)
{
	if (PlayerController)
	{
		const FVector2D LookValue = Value.Get<FVector2D>();
		AddControllerYawInput(LookValue.X * LookSensitivity);
		AddControllerPitchInput(LookValue.Y * LookSensitivity);
	}
}