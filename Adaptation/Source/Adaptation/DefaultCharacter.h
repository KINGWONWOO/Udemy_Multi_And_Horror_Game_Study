// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Character.h"
#include "InputMappingContext.h"
#include "DefaultCharacter.generated.h"

class UInputMappingContext;
class UInputAction;

UCLASS()
class ADAPTATION_API ADefaultCharacter : public ACharacter
{
	GENERATED_BODY()

public:
	// Sets default values for this character's properties
	ADefaultCharacter();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

	// Called to bind functionality to input
	virtual void SetupPlayerInputComponent(class UInputComponent* PlayerInputComponent) override;
	
	UPROPERTY(EditAnywhere, Category = Input)
	UInputMappingContext* InputMappingContext;

	UPROPERTY(EditAnywhere, Category = Input)
	UInputAction* Jumping;

	UPROPERTY(EditAnywhere, Category = Input)
	UInputAction* Looking;

	UPROPERTY(EditAnywhere, Category = Input)
	UInputAction* Moving;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = Input)
	float LookSensitivity = 1.0f; // 기본 감도

private:
	class APlayerController* PlayerController;

	void Move(const FInputActionValue& Value);
	void Look(const FInputActionValue& Value);
};
