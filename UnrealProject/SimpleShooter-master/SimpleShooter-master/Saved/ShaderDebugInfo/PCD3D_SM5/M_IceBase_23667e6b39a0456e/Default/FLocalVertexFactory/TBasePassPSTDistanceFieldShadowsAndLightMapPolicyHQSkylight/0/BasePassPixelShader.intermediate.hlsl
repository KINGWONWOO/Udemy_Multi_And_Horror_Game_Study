#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static uint _376 = 0u;
static float4 _415 = 0.0f.xxxx;
static bool4 _416 = bool4(false, false, false, false);
static float _418 = 0.0f;
static float4 _419 = 0.0f.xxxx;
static float2 _420 = 0.0f.xx;

cbuffer View
{
    row_major float4x4 View_View_TranslatedWorldToClip : packoffset(c0);
    row_major float4x4 View_View_RelativeWorldToClip : packoffset(c4);
    row_major float4x4 View_View_TranslatedWorldToView : packoffset(c12);
    row_major float4x4 View_View_ViewToClip : packoffset(c28);
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c44);
    float3 View_View_ViewOriginHigh : packoffset(c72);
    float3 View_View_ViewForward : packoffset(c73);
    float4 View_View_InvDeviceZToWorldZTransform : packoffset(c78);
    float4 View_View_ScreenPositionScaleBias : packoffset(c79);
    float3 View_View_TranslatedWorldCameraOrigin : packoffset(c81);
    float3 View_View_PreViewTranslationHigh : packoffset(c84);
    float3 View_View_PreViewTranslationLow : packoffset(c85);
    float3 View_View_ViewTilePosition : packoffset(c121);
    float3 View_View_RelativeWorldCameraOriginTO : packoffset(c122);
    float3 View_View_RelativePreViewTranslationTO : packoffset(c124);
    row_major float4x4 View_View_ClipToPrevClip : packoffset(c136);
    float4 View_View_ViewRectMin : packoffset(c148);
    float4 View_View_ViewSizeAndInvSize : packoffset(c149);
    float4 View_View_LightProbeSizeRatioAndInvSizeRatio : packoffset(c151);
    float View_View_PreExposure : packoffset(c156.z);
    float View_View_OneOverPreExposure : packoffset(c156.w);
    float4 View_View_DiffuseOverrideParameter : packoffset(c157);
    float4 View_View_SpecularOverrideParameter : packoffset(c158);
    float4 View_View_NormalOverrideParameter : packoffset(c159);
    float2 View_View_RoughnessOverrideParameter : packoffset(c160);
    float2 View_View_AmbientOcclusionOverrideParameter : packoffset(c160.z);
    float View_View_OutOfBoundsMask : packoffset(c161.z);
    float View_View_CullingSign : packoffset(c162.w);
    float View_View_MaterialTextureMipBias : packoffset(c164.y);
    uint View_View_StateFrameIndexMod8 : packoffset(c165.z);
    float View_View_CameraCut : packoffset(c166.w);
    float View_View_UnlitViewmodeMask : packoffset(c167);
    float3 View_View_PrecomputedIndirectLightingColorScale : packoffset(c180);
    float3 View_View_PrecomputedIndirectSpecularColorScale : packoffset(c181);
    float View_View_RenderingReflectionCaptureMask : packoffset(c204.w);
    float View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag : packoffset(c207.y);
    float4 View_View_SkyLightColor : packoffset(c208);
    float View_View_ReflectionCubemapMaxMip : packoffset(c218.z);
    float3 View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight : packoffset(c220);
    int View_View_StereoPassIndex : packoffset(c220.w);
    float3 View_View_VolumetricFogInvGridSize : packoffset(c252);
    float3 View_View_VolumetricFogGridZParams : packoffset(c253);
    float2 View_View_VolumetricFogScreenToResourceUV : packoffset(c258);
    float2 View_View_VolumetricFogUVMax : packoffset(c258.z);
    float View_View_MinRoughness : packoffset(c269.w);
    float View_View_MaterialMaxEmissiveValue : packoffset(c318.z);
    int4 View_View_EnvironmentComponentsFlags : packoffset(c319);
};

StructuredBuffer<float4> View_SkyIrradianceEnvironmentMap;
StructuredBuffer<float4> Scene_GPUScene_GPUScenePrimitiveSceneData;
StructuredBuffer<float4> Scene_GPUScene_GPUSceneLightmapData;
cbuffer TranslucentBasePass
{
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights : packoffset(c0);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumReflectionCaptures : packoffset(c0.z);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_HasDirectionalLight : packoffset(c0.w);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumGridCells : packoffset(c1);
    int3 TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize : packoffset(c2);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_MaxCulledLightsPerCell : packoffset(c2.w);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift : packoffset(c3);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams : packoffset(c4);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDirection : packoffset(c5);
    float TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius : packoffset(c5.w);
    float TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSoftSourceRadius : packoffset(c6);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightColor : packoffset(c7);
    float TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSpecularScale : packoffset(c8);
    float TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDiffuseScale : packoffset(c8.y);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSceneInfoExtraDataPacked : packoffset(c8.z);
    float2 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD : packoffset(c9);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades : packoffset(c9.z);
    int TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM : packoffset(c9.w);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths : packoffset(c10);
    row_major float4x4 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[4] : packoffset(c11);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[4] : packoffset(c27);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize : packoffset(c31);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightUseStaticShadowing : packoffset(c32.y);
    row_major float4x4 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToStaticShadow : packoffset(c34);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectLightingShowFlag : packoffset(c38);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_bAffectsTranslucentLighting : packoffset(c38.w);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters : packoffset(c45);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane : packoffset(c50);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionOrigin : packoffset(c51);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis : packoffset(c52);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis : packoffset(c53);
    row_major float3x4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_InverseTransposeMirrorMatrix : packoffset(c54);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters : packoffset(c57);
    float2 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2 : packoffset(c58);
    row_major float4x4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ProjectionWithExtraFOV[2] : packoffset(c59);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[2] : packoffset(c67);
    float2 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound : packoffset(c69);
    uint TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_bIsStereo : packoffset(c69.z);
    float TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog : packoffset(c80);
    float TranslucentBasePass_TranslucentBasePass_Shared_Fog_VolumetricFogStartDistance : packoffset(c80.y);
    uint TranslucentBasePass_TranslucentBasePass_Shared_UseBasePassSkylight : packoffset(c106);
    float4 TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor : packoffset(c134);
    float4 TranslucentBasePass_TranslucentBasePass_PrevScreenPositionScaleBias : packoffset(c140);
    float2 TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMin : packoffset(c141);
    float2 TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMax : packoffset(c141.z);
    float TranslucentBasePass_TranslucentBasePass_PrevSceneColorPreExposureInv : packoffset(c142);
    int TranslucentBasePass_TranslucentBasePass_SSRQuality : packoffset(c142.y);
    float TranslucentBasePass_TranslucentBasePass_ReprojectionRadiusScale : packoffset(c150);
    float TranslucentBasePass_TranslucentBasePass_InvClipmapFadeSize : packoffset(c150.w);
    uint TranslucentBasePass_TranslucentBasePass_RadianceProbeClipmapResolution : packoffset(c152);
    uint TranslucentBasePass_TranslucentBasePass_NumRadianceProbeClipmaps : packoffset(c152.y);
    uint TranslucentBasePass_TranslucentBasePass_RadianceProbeResolution : packoffset(c152.z);
    uint TranslucentBasePass_TranslucentBasePass_FinalProbeResolution : packoffset(c152.w);
    uint TranslucentBasePass_TranslucentBasePass_FinalRadianceAtlasMaxMip : packoffset(c153);
    float4 TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[6] : packoffset(c159);
    float4 TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[6] : packoffset(c165);
    float2 TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution : packoffset(c171);
    float TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure : packoffset(c172.z);
    uint TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask : packoffset(c173.y);
    uint TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionDivideShift : packoffset(c173.z);
    uint TranslucentBasePass_TranslucentBasePass_Enabled : packoffset(c175.z);
    float TranslucentBasePass_TranslucentBasePass_RelativeDepthThreshold : packoffset(c175.w);
    float TranslucentBasePass_TranslucentBasePass_SpecularScale : packoffset(c176);
    float TranslucentBasePass_TranslucentBasePass_Contrast : packoffset(c176.y);
    float3 TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams : packoffset(c180);
    int3 TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize : packoffset(c181);
};

StructuredBuffer<float4> TranslucentBasePass_Shared_Forward_ForwardLightBuffer;
StructuredBuffer<uint> TranslucentBasePass_Shared_Forward_NumCulledLightsGrid;
StructuredBuffer<float4> TranslucentBasePass_ProbeWorldOffset;
cbuffer ReflectionCaptureSM5
{
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[341] : packoffset(c0);
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_PositionLow[341] : packoffset(c341);
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[341] : packoffset(c682);
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[341] : packoffset(c1023);
    row_major float4x4 ReflectionCaptureSM5_ReflectionCaptureSM5_BoxTransform[341] : packoffset(c1364);
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[341] : packoffset(c2728);
};

cbuffer VirtualShadowMap
{
    uint VirtualShadowMap_VirtualShadowMap_PageTableRowShift : packoffset(c5);
    uint VirtualShadowMap_VirtualShadowMap_PageTableRowMask : packoffset(c5.y);
};

ByteAddressBuffer VirtualShadowMap_ProjectionData;
cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[17] : packoffset(c0);
};

SamplerState View_SharedPointClampedSampler;
SamplerState View_SharedBilinearClampedSampler;
SamplerState View_SharedTrilinearClampedSampler;
Texture2D<float4> TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlas;
SamplerState TranslucentBasePass_Shared_Forward_ShadowmapSampler;
Texture2D<float4> TranslucentBasePass_Shared_Forward_DirectionalLightStaticShadowmap;
SamplerState TranslucentBasePass_Shared_Forward_StaticShadowmapSampler;
Buffer<uint4> TranslucentBasePass_Shared_Forward_CulledLightDataGrid16Bit;
TextureCube<float4> TranslucentBasePass_Shared_Reflection_SkyLightCubemap;
SamplerState TranslucentBasePass_Shared_Reflection_SkyLightCubemapSampler;
TextureCubeArray<float4> TranslucentBasePass_Shared_Reflection_ReflectionCubemap;
SamplerState TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler;
Texture2D<float4> TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionTexture;
Texture3D<float4> TranslucentBasePass_Shared_Fog_IntegratedLightScattering;
Texture2D<float4> TranslucentBasePass_HZBTexture;
SamplerState TranslucentBasePass_HZBSampler;
Texture3D<uint4> TranslucentBasePass_RadianceProbeIndirectionTexture;
Texture2D<float4> TranslucentBasePass_RadianceCacheFinalRadianceAtlas;
Texture2DArray<float4> TranslucentBasePass_Radiance;
Texture2D<float4> TranslucentBasePass_SceneDepth;
Texture3D<float4> TranslucentBasePass_TranslucencyGIVolumeHistory0;
Texture3D<float4> TranslucentBasePass_TranslucencyGIVolumeHistory1;
Texture2D<float4> TranslucentBasePass_PrevSceneColor;
SamplerState TranslucentBasePass_PrevSceneColorSampler;
Texture2D<float4> LightmapResourceCluster_LightMapTexture;
Texture2D<float4> LightmapResourceCluster_SkyOcclusionTexture;
Texture2D<float4> LightmapResourceCluster_StaticShadowTexture;
SamplerState LightmapResourceCluster_LightMapSampler;
Texture2D<uint4> VirtualShadowMap_PageTable;
Texture2DArray<uint4> VirtualShadowMap_PhysicalPagePool;
Texture2D<float4> Material_Texture2D_0;
SamplerState Material_Texture2D_0Sampler;
Texture2D<float4> Material_Texture2D_1;
SamplerState Material_Texture2D_1Sampler;
Texture2D<float4> Material_Texture2D_2;
SamplerState Material_Texture2D_2Sampler;
Texture2D<float4> Material_Texture2D_3;
SamplerState Material_Texture2D_3Sampler;
Texture2D<float4> Material_Texture2D_4;
SamplerState Material_Texture2D_4Sampler;
Texture2D<float4> Material_Texture2D_5;
SamplerState Material_Texture2D_5Sampler;
Texture2D<float4> Material_Texture2D_6;
SamplerState Material_Texture2D_6Sampler;

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float4 in_var_TEXCOORD10_centroid;
static float4 in_var_TEXCOORD11_centroid;
static float4 in_var_TEXCOORD0[1];
static float4 in_var_TEXCOORD4;
static uint in_var_PRIMITIVE_ID;
static uint in_var_LIGHTMAP_ID;
static float4 in_var_TEXCOORD7;
static float3 in_var_TEXCOORD9;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float4 in_var_TEXCOORD10_centroid : TEXCOORD10_centroid;
    float4 in_var_TEXCOORD11_centroid : TEXCOORD11_centroid;
    float4 in_var_TEXCOORD0[1] : TEXCOORD0;
    float4 in_var_TEXCOORD4 : TEXCOORD4;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    nointerpolation uint in_var_LIGHTMAP_ID : LIGHTMAP_ID;
    float4 in_var_TEXCOORD7 : TEXCOORD7;
    float3 in_var_TEXCOORD9 : TEXCOORD9;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
};

uint spvPackHalf2x16(float2 value)
{
    uint2 Packed = f32tof16(value);
    return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value)
{
    return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main()
{
    float _471 = 1.0f / gl_FragCoord.w;
    float3x3 _537 = float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz);
    float2 _540 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _547 = float4(mad(_540, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _418, 1.0f) * _471;
    float4 _552 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _556 = _552.xyz / _552.w.xxx;
    float3 _557 = _556 - View_View_RelativePreViewTranslationTO;
    precise float3 _103 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _557);
    precise float3 _106 = _557 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _103);
    float _559 = _547.w;
    float2 _564 = mad(_547.xy / _559.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    bool _566 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _567 = -View_View_ViewForward;
    float3 _569 = normalize(-_556);
    float3 _579 = float3(_566 ? _567.x : _569.x, _566 ? _567.y : _569.y, _566 ? _567.z : _569.z);
    uint _580 = in_var_PRIMITIVE_ID * 44u;
    float4 _597 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _598 = _597.x;
    float2 _604 = mul(_537, _579).xy;
    float2 _606 = mad(_604, mad(0.0500000007450580596923828125f, _598 * Material_Material_PreshaderBuffer[0].x, -0.02500000037252902984619140625f).xx, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y));
    float2 _612 = mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _606, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _623 = float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[0].y.xx;
    float2 _626 = Material_Material_PreshaderBuffer[0].z.xx;
    float2 _633 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _623 * _626, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _646 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, (_623 * 1.618000030517578125f.xx) * _626, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _673 = normalize(mul(normalize((lerp(float4(_612, sqrt(clamp(1.0f - dot(_612, _612), 0.0f, 1.0f)), 1.0f).xyz, (float4(_633, sqrt(clamp(1.0f - dot(_633, _633), 0.0f, 1.0f)), 1.0f).xyz + float4(_646, sqrt(clamp(1.0f - dot(_646, _646), 0.0f, 1.0f)), 1.0f).xyz) * float3(1.0f, 1.0f, 0.5f), Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias).x.xxx) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), _537)) * ((View_View_CullingSign * (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_580].x) & 64u) != 0u) ? (-1.0f) : 1.0f)) * float(gl_FrontFacing ? 1 : (-1)));
    float3 _701 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _606, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[2].w.xxx;
    float _704 = _701.x;
    float _708 = _701.y;
    float _712 = _701.z;
    float3 _716 = float3((_704 <= 2.9802329493122670101001858711243e-08f) ? 0.0f : pow(_704, Material_Material_PreshaderBuffer[3].x), (_708 <= 2.9802329493122670101001858711243e-08f) ? 0.0f : pow(_708, Material_Material_PreshaderBuffer[3].x), (_712 <= 2.9802329493122670101001858711243e-08f) ? 0.0f : pow(_712, Material_Material_PreshaderBuffer[3].x));
    float2 _766 = float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[7].w.xx;
    float2 _772 = mad(_604, mad(0.0500000007450580596923828125f, _598 * Material_Material_PreshaderBuffer[8].x, -0.02500000037252902984619140625f).xx, _766);
    float3 _789 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _772, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[9].w.xxx;
    float _792 = _789.x;
    float _796 = _789.y;
    float _800 = _789.z;
    float3 _804 = float3((_792 <= 2.9802329493122670101001858711243e-08f) ? 0.0f : pow(_792, Material_Material_PreshaderBuffer[10].x), (_796 <= 2.9802329493122670101001858711243e-08f) ? 0.0f : pow(_796, Material_Material_PreshaderBuffer[10].x), (_800 <= 2.9802329493122670101001858711243e-08f) ? 0.0f : pow(_800, Material_Material_PreshaderBuffer[10].x));
    float3 _865 = clamp(lerp(mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _606, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[1].w.xxx, Material_Material_PreshaderBuffer[2].xyz, lerp(_716, dot(_716, float3(0.2126390039920806884765625f, 0.715168654918670654296875f, 0.072192318737506866455078125f)).xxx, Material_Material_PreshaderBuffer[3].y.xxx) * Material_Material_PreshaderBuffer[4].xyz) + mad(Material_Material_PreshaderBuffer[5].yzw, (Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(_604, mad(0.0500000007450580596923828125f, Material_Material_PreshaderBuffer[4].w, -0.02500000037252902984619140625f).xx, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y)), View_View_MaterialTextureMipBias).y * Material_Material_PreshaderBuffer[5].x).xxx, Material_Material_PreshaderBuffer[7].xyz * (Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(_604, mad(0.0500000007450580596923828125f, Material_Material_PreshaderBuffer[6].x, -0.02500000037252902984619140625f).xx, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y)), View_View_MaterialTextureMipBias).x * Material_Material_PreshaderBuffer[6].y).xxx), mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _772, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].y.xxx, Material_Material_PreshaderBuffer[9].xyz, lerp(_804, dot(_804, float3(0.2126390039920806884765625f, 0.715168654918670654296875f, 0.072192318737506866455078125f)).xxx, Material_Material_PreshaderBuffer[10].y.xxx) * Material_Material_PreshaderBuffer[11].xyz) + mad(Material_Material_PreshaderBuffer[12].yzw, (Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(_604, mad(0.0500000007450580596923828125f, Material_Material_PreshaderBuffer[11].w, -0.02500000037252902984619140625f).xx, _766), View_View_MaterialTextureMipBias).y * Material_Material_PreshaderBuffer[12].x).xxx, Material_Material_PreshaderBuffer[14].xyz * (Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(_604, mad(0.0500000007450580596923828125f, Material_Material_PreshaderBuffer[13].x, -0.02500000037252902984619140625f).xx, _766), View_View_MaterialTextureMipBias).x * Material_Material_PreshaderBuffer[13].y).xxx), (length(((View_View_ViewTilePosition - View_View_ViewTilePosition) * 2097152.0f) + (_557 - View_View_RelativeWorldCameraOriginTO)) * Material_Material_PreshaderBuffer[14].w).xxx), 0.0f.xxx, 1.0f.xxx);
    float _866 = clamp(Material_Material_PreshaderBuffer[15].x, 0.0f, 1.0f);
    float _871 = mad(clamp(Material_Material_PreshaderBuffer[15].z, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _875 = clamp(View_View_AmbientOcclusionOverrideParameter.y + View_View_AmbientOcclusionOverrideParameter.x, 0.0f, 1.0f);
    float4 _880 = LightmapResourceCluster_StaticShadowTexture.Sample(LightmapResourceCluster_LightMapSampler, in_var_TEXCOORD4.zw);
    uint _881 = in_var_LIGHTMAP_ID * 15u;
    uint _882 = _881 + 1u;
    float4 _888 = clamp(mad(_880, Scene_GPUScene_GPUSceneLightmapData[_882], (Scene_GPUScene_GPUSceneLightmapData[_882] * (-0.5f)) + 0.5f.xxxx), 0.0f.xxxx, 1.0f.xxxx);
    float4 _892 = (Scene_GPUScene_GPUSceneLightmapData[_881] * _888) * _888;
    float3 _905 = ((_865 - (_865 * _866)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _912 = (lerp((0.07999999821186065673828125f * clamp(Material_Material_PreshaderBuffer[15].y, 0.0f, 1.0f)).xxx, _865, _866.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _913 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _918 = 0.0f.xxx;
    if (_913)
    {
        _918 = _905 + (_912 * 0.449999988079071044921875f);
    }
    else
    {
        _918 = _905;
    }
    bool3 _919 = _913.xxx;
    float3 _920 = float3(_919.x ? 0.0f.xxx.x : _912.x, _919.y ? 0.0f.xxx.y : _912.y, _919.z ? 0.0f.xxx.z : _912.z);
    float4 _926 = LightmapResourceCluster_LightMapTexture.Sample(LightmapResourceCluster_LightMapSampler, in_var_TEXCOORD4.xy * float2(1.0f, 0.5f));
    float4 _928 = LightmapResourceCluster_LightMapTexture.Sample(LightmapResourceCluster_LightMapSampler, mad(in_var_TEXCOORD4.xy, float2(1.0f, 0.5f), float2(0.0f, 0.5f)));
    uint _933 = _881 + 4u;
    uint _937 = _881 + 6u;
    float3 _942 = _926.xyz;
    float _958 = _673.y;
    float3 _1125 = 0.0f.xxx;
    if (TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z > 0)
    {
        float4 _1051 = float4(_103, 1.0f);
        precise float4 _107 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _108 = _1051 + _107;
        precise float4 _109 = _108 - _1051;
        precise float4 _110 = _108 - _109;
        precise float4 _111 = _1051 - _110;
        precise float4 _112 = _107 - _109;
        precise float4 _113 = _111 + _112;
        float4 _1062 = mul(_108 + (float4(_106, 0.0f) + _113), View_View_RelativeWorldToClip);
        float _1063 = _1062.w;
        float3 _1082 = float3(mad((_1062.xy / _1063.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_1063, TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.x, TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.y)) * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.z) / float(TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z));
        float4 _1086 = TranslucentBasePass_TranslucencyGIVolumeHistory0.SampleLevel(View_SharedBilinearClampedSampler, _1082, 0.0f);
        float3 _1087 = _1086.xyz;
        float3 _1091 = TranslucentBasePass_TranslucencyGIVolumeHistory1.SampleLevel(View_SharedBilinearClampedSampler, _1082, 0.0f).xyz;
        float4 _1093 = 0.0f.xxxx;
        _1093.x = _1086.x;
        float4 _1095 = 0.0f.xxxx;
        _1095.x = _1086.y;
        float4 _1097 = 0.0f.xxxx;
        _1097.x = _1086.z;
        float3 _1101 = _1087 / (dot(_1087, float3(0.2126390039920806884765625f, 0.715168654918670654296875f, 0.072192318737506866455078125f)) + 9.9999997473787516355514526367188e-06f).xxx;
        float3 _1103 = _1091 * _1101.x;
        float3 _1106 = _1091 * _1101.y;
        float3 _1109 = _1091 * _1101.z;
        float4 _1114 = float4(0.2820949852466583251953125f, (-0.48860299587249755859375f) * _958, 0.48860299587249755859375f * _673.z, (-0.48860299587249755859375f) * _673.x);
        _1114.x = 0.886227548122406005859375f;
        float3 _1117 = _1114.yzw * 2.094395160675048828125f;
        float4 _1118 = float4(_1114.x, _1117.x, _1117.y, _1117.z);
        _1125 = max(0.0f.xxx, float3(dot(float4(_1093.x, _1103.x, _1103.y, _1103.z), _1118), dot(float4(_1095.x, _1106.x, _1106.y, _1106.z), _1118), dot(float4(_1097.x, _1109.x, _1109.y, _1109.z), _1118))) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        float3 _1047 = 0.0f.xxx;
        if (TranslucentBasePass_TranslucentBasePass_Shared_UseBasePassSkylight > 0u)
        {
            float _1003 = 0.0f;
            float _1004 = 0.0f;
            float3 _1005 = 0.0f.xxx;
            [branch]
            if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
            {
                float4 _986 = LightmapResourceCluster_SkyOcclusionTexture.Sample(LightmapResourceCluster_LightMapSampler, in_var_TEXCOORD4.xy);
                float _990 = _986.w;
                float3 _993 = normalize(((_986.xyz * 2.0f) - 1.0f.xxx).xyz);
                float _997 = mad(mad(_990, _990, -1.0f), mad(-_990, _990, 1.0f), 1.0f);
                _1003 = lerp(clamp(dot(_993, _673), 0.0f, 1.0f), 1.0f, _997);
                _1004 = _990 * _990;
                _1005 = lerp(_993, _673, _997.xxx);
            }
            else
            {
                _1003 = 1.0f;
                _1004 = 1.0f;
                _1005 = _673;
            }
            float4 _1009 = float4(_1005, 1.0f);
            float4 _1022 = _1009.xyzz * _1009.yzzx;
            _1047 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _1009), dot(View_SkyIrradianceEnvironmentMap[1u], _1009), dot(View_SkyIrradianceEnvironmentMap[2u], _1009)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _1022), dot(View_SkyIrradianceEnvironmentMap[4u], _1022), dot(View_SkyIrradianceEnvironmentMap[5u], _1022))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_1005.x, _1005.x, -(_1005.y * _1005.y)))) * View_View_SkyLightColor.xyz) * (_1004 * _1003);
        }
        else
        {
            _1047 = 0.0f.xxx;
        }
        _1125 = _1047;
    }
    float3 _1126 = mad(mad(_942 * _942, Scene_GPUScene_GPUSceneLightmapData[_933].xyz, Scene_GPUScene_GPUSceneLightmapData[_937].xyz) * ((exp2(mad(_926.w + mad(_928.w, 0.0039215688593685626983642578125f, -0.00196078442968428134918212890625f), Scene_GPUScene_GPUSceneLightmapData[_933].w, Scene_GPUScene_GPUSceneLightmapData[_937].w)) - 0.0185813605785369873046875f) * max(0.0f, dot(mad(_928, Scene_GPUScene_GPUSceneLightmapData[_881 + 5u], Scene_GPUScene_GPUSceneLightmapData[_881 + 7u]), float4(_958, _673.zx, 1.0f)))), View_View_PrecomputedIndirectLightingColorScale, _1125);
    float3 _1135 = _875.xxx;
    uint2 _1167 = uint2(_540 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    uint _1177 = (((min(uint(max(0.0f, log2(mad(_471, TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.x, TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.y)) * TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.z)), uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.y)) + _1167.y) * uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.x)) + _1167.x;
    uint _1180 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_580].x);
    uint _1193 = (uint((_1180 & 2048u) != 0u) | (uint((_1180 & 4096u) != 0u) << 1u)) | (uint((_1180 & 8192u) != 0u) << 2u);
    float4 _2014 = 0.0f.xxxx;
    float4 _2015 = 0.0f.xxxx;
    float4 _2016 = 0.0f.xxxx;
    [branch]
    if ((TranslucentBasePass_TranslucentBasePass_Shared_Forward_HasDirectionalLight != 0u) && (TranslucentBasePass_TranslucentBasePass_Shared_Forward_bAffectsTranslucentLighting > 0u))
    {
        float4 _1228 = float4(_418, float((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSceneInfoExtraDataPacked & 2u) >> 1u), float((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSceneInfoExtraDataPacked & 4u) >> 2u), float((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSceneInfoExtraDataPacked & 8u) >> 3u));
        _1228.x = 1.0f;
        float _1271 = 0.0f;
        [branch]
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightUseStaticShadowing > 0u)
        {
            float4 _1243 = mul(float4(_556, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToStaticShadow);
            float2 _1247 = _1243.xy / _1243.w.xx;
            bool2 _1248 = bool2(_1247.x >= 0.0f.xx.x, _1247.y >= 0.0f.xx.y);
            bool2 _1249 = bool2(_1247.x <= 1.0f.xx.x, _1247.y <= 1.0f.xx.y);
            float _1270 = 0.0f;
            if (all(bool2(_1248.x && _1249.x, _1248.y && _1249.y)))
            {
                float4 _1263 = TranslucentBasePass_Shared_Forward_DirectionalLightStaticShadowmap.SampleLevel(TranslucentBasePass_Shared_Forward_StaticShadowmapSampler, _1247, 0.0f);
                float _1264 = _1263.x;
                _1270 = float((_1243.z < _1264) || (_1264 > 0.9900000095367431640625f));
            }
            else
            {
                _1270 = 1.0f;
            }
            _1271 = _1270;
        }
        else
        {
            _1271 = 1.0f;
        }
        float4 _1272 = _892;
        _1272.x = _1271;
        float _1351 = 0.0f;
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _1280 = _559.xxxx;
            float4 _1282 = float4(bool4(_1280.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.x, _1280.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.y, _1280.z >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.z, _1280.w >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _1290 = uint(((_1282.x + _1282.y) + _1282.z) + _1282.w);
            float _1350 = 0.0f;
            if (_1290 < TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _1300 = mul(float4(_556, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_1290]);
                float2 _1304 = _1300.xy / _1300.w.xx;
                bool2 _1308 = bool2(_1304.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_1290].xy.x, _1304.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_1290].xy.y);
                bool2 _1310 = bool2(_1304.x <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_1290].zw.x, _1304.y <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_1290].zw.y);
                float _1349 = 0.0f;
                if (all(bool2(_1308.x && _1310.x, _1308.y && _1310.y)))
                {
                    float2 _1328 = mad(_1304, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy, (-0.5f).xx);
                    float2 _1329 = frac(_1328);
                    float4 _1340 = clamp((TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(TranslucentBasePass_Shared_Forward_ShadowmapSampler, (floor(_1328) + 1.0f.xx) * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - mad(1.0f - _1300.z, 4000.0f, -1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _1344 = lerp(_1340.wx, _1340.zy, _1329.xx);
                    _1349 = lerp(_1344.x, _1344.y, _1329.y);
                }
                else
                {
                    _1349 = 1.0f;
                }
                _1350 = _1349;
            }
            else
            {
                _1350 = 1.0f;
            }
            _1351 = _1350;
        }
        else
        {
            _1351 = 1.0f;
        }
        float _1770 = 0.0f;
        [branch]
        if (true && (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM != (-1)))
        {
            uint _1360 = uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM) * 288u;
            uint _1362 = (_1360 + 208u) >> 2u;
            uint _1374 = (_1360 + 224u) >> 2u;
            uint _1391 = (_1360 + 240u) >> 2u;
            uint _1403 = (_1360 + 264u) >> 2u;
            int _1416 = 0;
            int _1417 = 0;
            if (int(VirtualShadowMap_ProjectionData.Load(_1403 * 4 + 0)) != (-1))
            {
                _1416 = int(VirtualShadowMap_ProjectionData.Load(_1403 * 4 + 0) >> 16u) - 1024;
                _1417 = int(VirtualShadowMap_ProjectionData.Load(_1403 * 4 + 0) & 65535u);
            }
            else
            {
                _1416 = 1024;
                _1417 = -1;
            }
            precise float3 _114 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1362 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1362 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1362 + 2u) * 4 + 0))) - View_View_PreViewTranslationHigh;
            precise float3 _115 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1374 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1374 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1374 + 2u) * 4 + 0))) - View_View_PreViewTranslationLow;
            precise float3 _116 = _114 + _115;
            int _1426 = max(0, (int(floor(log2(length(_556 + (asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1391 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1391 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1391 + 2u) * 4 + 0))) + _116))) + asfloat(VirtualShadowMap_ProjectionData.Load(((_1360 + 236u) >> 2u) * 4 + 0)))) - _1416));
            float _1768 = 0.0f;
            if (_1426 < _1417)
            {
                int _1430 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM + _1426;
                uint _1431 = uint(_1430);
                uint _1432 = _1431 * 288u;
                uint _1434 = (_1432 + 32u) >> 2u;
                uint _1449 = (_1432 + 48u) >> 2u;
                uint _1458 = (_1432 + 64u) >> 2u;
                uint _1473 = (_1432 + 80u) >> 2u;
                uint _1488 = (_1432 + 96u) >> 2u;
                uint _1503 = (_1432 + 112u) >> 2u;
                uint _1519 = (_1432 + 208u) >> 2u;
                uint _1531 = (_1432 + 224u) >> 2u;
                precise float3 _117 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1519 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1519 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1519 + 2u) * 4 + 0))) - View_View_PreViewTranslationHigh;
                precise float3 _118 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1531 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1531 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1531 + 2u) * 4 + 0))) - View_View_PreViewTranslationLow;
                precise float3 _119 = _117 + _118;
                float4 _1547 = mul(float4(_556 + _119, 1.0f), float4x4(asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1458 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1458 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1458 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1458 + 3u) * 4 + 0))), asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1473 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1473 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1473 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1473 + 3u) * 4 + 0))), asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1488 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1488 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1488 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1488 + 3u) * 4 + 0))), asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1503 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1503 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1503 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1503 + 3u) * 4 + 0)))));
                float2 _1548 = _1547.xy;
                uint2 _1550 = uint2(_1548 * 128.0f);
                bool _1552 = int(_1431) < 8192;
                uint2 _1570 = uint2(0u, 0u);
                if (_1552)
                {
                    _1570 = uint2(_1431 & 127u, _1431 >> 7u);
                }
                else
                {
                    uint _1556 = _1431 + 4294959105u;
                    _1570 = uint2((_1556 & VirtualShadowMap_VirtualShadowMap_PageTableRowMask) * 128u, (_1556 >> (VirtualShadowMap_VirtualShadowMap_PageTableRowShift & 31u)) * 192u);
                }
                uint2 _1575 = uint2(0u, 0u);
                if (!_1552)
                {
                    _1575 = _1570 + _1550;
                }
                else
                {
                    _1575 = _1570;
                }
                uint4 _1577 = VirtualShadowMap_PageTable.Load(int3(_1575, 0u));
                uint _1578 = _1577.x;
                uint _1584 = (_1578 >> 20u) & 63u;
                bool _1586 = (_1578 & 2147483648u) != 0u;
                float _1758 = 0.0f;
                bool _1759 = false;
                if (_1586)
                {
                    float _1734 = 0.0f;
                    float _1735 = 0.0f;
                    uint2 _1736 = uint2(0u, 0u);
                    uint2 _1737 = uint2(0u, 0u);
                    bool _1738 = false;
                    if (_1584 > 0u)
                    {
                        uint _1599 = (_1432 + 256u) >> 2u;
                        uint _1602 = _1599 + 1u;
                        uint _1607 = uint(int(_1431 + _1584));
                        uint _1610 = ((_1607 * 288u) + 256u) >> 2u;
                        int _1622 = int(_1584);
                        uint2 _1630 = ((_1550 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1599 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1602 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1610 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1610 + 1u) * 4 + 0)))) << (_1622.xx & int2(31, 31)))) >> (_1584.xx & uint2(31u, 31u));
                        uint2 _1631 = _1630 * uint2(128u, 128u);
                        uint _1645 = uint(_1430 + _1622) * 288u;
                        uint _1647 = (_1645 + 48u) >> 2u;
                        uint _1662 = (_1645 + 256u) >> 2u;
                        float _1683 = (_1622 >= 0) ? (1.0f / float(1u << (uint(_1622) & 31u))) : float(1u << (uint(-_1622) & 31u));
                        bool _1698 = int(_1607) < 8192;
                        uint2 _1716 = uint2(0u, 0u);
                        if (_1698)
                        {
                            _1716 = uint2(_1607 & 127u, _1607 >> 7u);
                        }
                        else
                        {
                            uint _1702 = _1607 + 4294959105u;
                            _1716 = uint2((_1702 & VirtualShadowMap_VirtualShadowMap_PageTableRowMask) * 128u, (_1702 >> (VirtualShadowMap_VirtualShadowMap_PageTableRowShift & 31u)) * 192u);
                        }
                        uint2 _1721 = uint2(0u, 0u);
                        if (!_1698)
                        {
                            _1721 = _1716 + _1630;
                        }
                        else
                        {
                            _1721 = _1716;
                        }
                        uint4 _1722 = VirtualShadowMap_PageTable.Load(int3(_1721, 0u));
                        uint _1723 = _1722.x;
                        _1734 = _1683;
                        _1735 = mad(-_1683, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1449 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1449 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1449 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1449 + 3u) * 4 + 0))).z, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1647 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1647 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1647 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1647 + 3u) * 4 + 0))).z);
                        _1736 = clamp(uint2(((_1548 * _1683) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1662 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1662 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1599 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1602 * 4 + 0)))) * _1683)) * 0.25f).xy) * 16384.0f), _1631, _1631 + uint2(127u, 127u));
                        _1737 = uint2(_1723 & 1023u, (_1723 >> 10u) & 1023u);
                        _1738 = ((_1723 & 2147483648u) != 0u) && (((_1723 >> 20u) & 63u) == 0u);
                    }
                    else
                    {
                        _1734 = 1.0f;
                        _1735 = 0.0f;
                        _1736 = uint2(_1548 * 16384.0f);
                        _1737 = uint2(_1578 & 1023u, (_1578 >> 10u) & 1023u);
                        _1738 = _1586 && (_1584 == 0u);
                    }
                    float _1756 = 0.0f;
                    if (_1738)
                    {
                        int4 _1747 = int4(uint4((_1737 * uint2(128u, 128u)) + (_1736 & uint2(127u, 127u)), 0u, 0u));
                        _1756 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_1747.xyz, _1747.w)).x) - _1735) / _1734;
                    }
                    else
                    {
                        _1756 = 0.0f;
                    }
                    _1758 = _1756;
                    _1759 = _1738 ? true : false;
                }
                else
                {
                    _1758 = 0.0f;
                    _1759 = false;
                }
                float _1767 = 0.0f;
                if (_1759)
                {
                    _1767 = (mad(max(0.0f, 0.0f), asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1434 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1434 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1434 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1434 + 3u) * 4 + 0))).z, _1758) > _1547.z) ? 0.0f : 1.0f;
                }
                else
                {
                    _1767 = 1.0f;
                }
                _1768 = _1767;
            }
            else
            {
                _1768 = 1.0f;
            }
            _1770 = _1351 * _1768;
        }
        else
        {
            _1770 = _1351;
        }
        float _1777 = clamp(mad(_559, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
        float _1779 = lerp(_1770, lerp(1.0f, dot(_1272, _1228), dot(_1228, 1.0f.xxxx)), _1777 * _1777);
        float3 _1996 = 0.0f.xxx;
        float3 _1997 = 0.0f.xxx;
        [branch]
        if ((_1779 + min(_1779, 1.0f)) > 0.0f)
        {
            float _1787 = max(_871, View_View_MinRoughness);
            float _1788 = dot(TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDirection, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDirection);
            float _1791 = rsqrt(_1788);
            float3 _1792 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDirection * _1791;
            float _1793 = dot(_673, _1792);
            float _1811 = 0.0f;
            if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1800 = sqrt(clamp((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1788 + 1.0f)), 0.0f, 1.0f));
                float _1810 = 0.0f;
                if (_1793 < _1800)
                {
                    float _1806 = _1800 + max(_1793, -_1800);
                    _1810 = (_1806 * _1806) / (4.0f * _1800);
                }
                else
                {
                    _1810 = _1793;
                }
                _1811 = _1810;
            }
            else
            {
                _1811 = _1793;
            }
            float _1812 = clamp(_1811, 0.0f, 1.0f);
            float _1813 = max(_1787, View_View_MinRoughness);
            float _1818 = clamp((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius * _1791) * mad(-_1813, _1813, 1.0f), 0.0f, 1.0f);
            float _1820 = clamp(TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1791, 0.0f, 1.0f);
            float3 _1989 = 0.0f.xxx;
            float3 _1990 = 0.0f.xxx;
            [branch]
            if (_1812 > 0.0f)
            {
                float _1831 = dot(_673, _579);
                float _1832 = dot(_579, _1792);
                float _1834 = rsqrt(mad(2.0f, _1832, 2.0f));
                bool _1840 = _1818 > 0.0f;
                float _1919 = 0.0f;
                float _1920 = 0.0f;
                if (_1840)
                {
                    float _1845 = sqrt(mad(-_1818, _1818, 1.0f));
                    float _1846 = 2.0f * _1793;
                    float _1847 = -_1832;
                    float _1848 = mad(_1846, _1831, _1847);
                    float _1917 = 0.0f;
                    float _1918 = 0.0f;
                    if (_1848 >= _1845)
                    {
                        _1917 = 1.0f;
                        _1918 = abs(_1831);
                    }
                    else
                    {
                        float _1853 = -_1848;
                        float _1856 = _1818 * rsqrt(mad(_1853, _1848, 1.0f));
                        float _1857 = mad(_1853, _1793, _1831);
                        float _1861 = mad(_1853, _1832, mad(2.0f * _1831, _1831, -1.0f));
                        float _1872 = _1856 * sqrt(clamp(mad(_1846 * _1831, _1832, mad(_1847, _1832, mad(-_1831, _1831, mad(-_1793, _1793, 1.0f)))), 0.0f, 1.0f));
                        float _1874 = (_1872 * 2.0f) * _1831;
                        float _1875 = mad(_1793, _1845, _1831);
                        float _1876 = mad(_1856, _1857, _1875);
                        float _1878 = mad(_1856, _1861, mad(_1832, _1845, 1.0f));
                        float _1879 = _1872 * _1878;
                        float _1880 = _1876 * _1878;
                        float _1885 = _1880 * mad(-0.5f, _1879, (0.25f * _1874) * _1876);
                        float _1895 = mad(_1876, mad(_1875, _1878 * _1878, _1880 * mad(-0.5f, mad(_1832, _1845, _1878), -0.5f)), mad(_1879, _1879, (_1874 * _1876) * mad(_1874, _1876, _1879 * (-2.0f))));
                        float _1899 = (2.0f * _1885) / mad(_1895, _1895, _1885 * _1885);
                        float _1900 = _1899 * _1895;
                        float _1902 = mad(-_1899, _1885, 1.0f);
                        float _1908 = mad(_1832, _1845, mad(_1902, _1856 * _1861, _1900 * _1874));
                        float _1910 = rsqrt(mad(2.0f, _1908, 2.0f));
                        _1917 = clamp((mad(_1793, _1845, mad(_1902, _1856 * _1857, _1900 * _1872)) + _1831) * _1910, 0.0f, 1.0f);
                        _1918 = clamp(mad(_1910, _1908, _1910), 0.0f, 1.0f);
                    }
                    _1919 = _1917;
                    _1920 = _1918;
                }
                else
                {
                    _1919 = clamp((_1793 + _1831) * _1834, 0.0f, 1.0f);
                    _1920 = clamp(mad(_1834, _1832, _1834), 0.0f, 1.0f);
                }
                float _1923 = clamp(abs(_1831) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1925 = 1.0f.xxx * _1812;
                float3 _1987 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1987 = 0.0f.xxx;
                }
                else
                {
                    float _1932 = _1787 * _1787;
                    float _1942 = 0.0f;
                    if (_1820 > 0.0f)
                    {
                        _1942 = clamp(mad(_1932, _1932, (_1820 * _1820) / mad(_1920, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1942 = _1932 * _1932;
                    }
                    float _1956 = 0.0f;
                    if (_1840)
                    {
                        _1956 = _1942 / (_1942 + (((0.25f * _1818) * mad(3.0f, asfloat(532487669 + (asint(_1942) >> 1)), _1818)) / (_1920 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1956 = 1.0f;
                    }
                    float _1959 = mad(mad(_1919, _1942, -_1919), _1919, 1.0f);
                    float _1964 = sqrt(_1942);
                    float _1965 = 1.0f - _1964;
                    float _1971 = 1.0f - _1920;
                    float _1972 = _1971 * _1971;
                    float _1973 = _1972 * _1972;
                    _1987 = _1925 * (((clamp(50.0f * _920.y, 0.0f, 1.0f) * (_1973 * _1971)).xxx + (_920 * mad(-_1973, _1971, 1.0f))) * (((_1942 / ((3.1415927410125732421875f * _1959) * _1959)) * _1956) * (0.5f / mad(_1812, mad(_1923, _1965, _1964), _1923 * mad(_1812, _1965, _1964)))));
                }
                _1989 = ((_918 * 0.3183098733425140380859375f) * _1925) * 1.0f;
                _1990 = _1987;
            }
            else
            {
                _1989 = 0.0f.xxx;
                _1990 = 0.0f.xxx;
            }
            float3 _1993 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightColor * _1779;
            _1996 = mad(_1989 * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1993, 0.0f.xxx);
            _1997 = (_1990 * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1993;
        }
        else
        {
            _1996 = 0.0f.xxx;
            _1997 = 0.0f.xxx;
        }
        float4 _2001 = float4(_1996, 0.0f);
        float4 _2005 = float4(_1997, 0.0f);
        float4 _2012 = 0.0f.xxxx;
        float4 _2013 = 0.0f.xxxx;
        [flatten]
        if ((((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSceneInfoExtraDataPacked >> 8u) & 7u) & _1193) != 0u)
        {
            _2012 = float4(_2001.x, _2001.y, _2001.z, _2001.w);
            _2013 = float4(_2005.x, _2005.y, _2005.z, _2005.w);
        }
        else
        {
            _2012 = 0.0f.xxxx;
            _2013 = 0.0f.xxxx;
        }
        _2014 = _1272;
        _2015 = _2012;
        _2016 = _2013;
    }
    else
    {
        _2014 = _892;
        _2015 = 0.0f.xxxx;
        _2016 = 0.0f.xxxx;
    }
    uint _2017 = _1177 * 2u;
    uint _2027 = TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_2017 + 1u] & 1073741823u;
    uint _2030 = min(min((TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_2017] & 65535u), TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights), TranslucentBasePass_TranslucentBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _2032 = 0.0f.xxxx;
    float4 _2035 = 0.0f.xxxx;
    _2032 = _2015;
    _2035 = _2016;
    float4 _2033 = 0.0f.xxxx;
    float4 _2036 = 0.0f.xxxx;
    [loop]
    for (uint _2037 = 0u; _2037 < _2030; _2032 = _2033, _2035 = _2036, _2037++)
    {
        uint _2046 = TranslucentBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_2027 + _2037).x * 6u;
        uint _2049 = _2046 + 1u;
        uint _2052 = _2046 + 2u;
        uint _2055 = _2046 + 3u;
        uint _2058 = _2046 + 4u;
        uint _2062 = asuint(TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2052].w);
        if (((_2062 >> 28u) & 1u) == 0u)
        {
            _2033 = _2032;
            _2036 = _2035;
            continue;
        }
        uint _2073 = asuint(TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2049].y);
        uint _2089 = asuint(TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2055].z);
        float2 _2091 = spvUnpackHalf2x16(_2089 & 65535u);
        float _2092 = _2091.x;
        float2 _2095 = spvUnpackHalf2x16(asuint(TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2055].w));
        float _2096 = _2095.x;
        uint _2102 = asuint(TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2058].w);
        float4 _2126 = float4(float(_2062 & 1u), float((_2062 & 2u) >> 1u), float((_2062 & 4u) >> 2u), float((_2062 & 8u) >> 3u));
        uint _2127 = _2062 >> 4u;
        bool _2142 = TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2049].w == 0.0f;
        float3 _2144 = TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2046].xyz - _556;
        float _2145 = dot(_2144, _2144);
        float _2162 = 0.0f;
        if (_2142)
        {
            float _2157 = _2145 * (TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2046].w * TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2046].w);
            float _2160 = clamp(mad(-_2157, _2157, 1.0f), 0.0f, 1.0f);
            _2162 = _2160 * _2160;
        }
        else
        {
            float3 _2151 = _2144 * TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2046].w;
            _2162 = pow(1.0f - clamp(dot(_2151, _2151), 0.0f, 1.0f), TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2049].w);
        }
        float _2173 = 0.0f;
        if (((_2062 >> 16u) & 3u) == 2u)
        {
            float _2170 = clamp((dot(_2144 * rsqrt(_2145), TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2052].xyz) - TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2055].x) * TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2055].y, 0.0f, 1.0f);
            _2173 = _2162 * (_2170 * _2170);
        }
        else
        {
            _2173 = _2162;
        }
        float3 _2475 = 0.0f.xxx;
        float3 _2476 = 0.0f.xxx;
        [branch]
        if (_2173 > 0.0f)
        {
            float _2185 = 0.0f;
            [branch]
            if (uint(int((_2062 & 255u) != 0u)) != 0u)
            {
                _2185 = dot(float4(float(_2127 & 1u), float((_2127 & 2u) >> 1u), float((_2127 & 4u) >> 2u), float((_2127 & 8u) >> 3u)), 1.0f.xxxx) * lerp(1.0f, dot(_2014, _2126), dot(_2126, 1.0f.xxxx));
            }
            else
            {
                _2185 = 1.0f;
            }
            float3 _2473 = 0.0f.xxx;
            float3 _2474 = 0.0f.xxx;
            [branch]
            if ((_2185 + _2185) > 0.0f)
            {
                float3 _2191 = TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2058].xyz * (0.5f * _2096);
                float3 _2192 = _2144 - _2191;
                float3 _2193 = _2144 + _2191;
                float _2196 = max(_871, View_View_MinRoughness);
                bool _2197 = _2096 > 0.0f;
                float _2222 = 0.0f;
                float _2223 = 0.0f;
                float _2224 = 0.0f;
                [branch]
                if (_2197)
                {
                    float _2209 = rsqrt(dot(_2192, _2192));
                    float _2210 = rsqrt(dot(_2193, _2193));
                    float _2211 = _2209 * _2210;
                    float _2213 = dot(_2192, _2193) * _2211;
                    _2222 = _2213;
                    _2223 = 0.5f * mad(dot(_673, _2192), _2209, dot(_673, _2193) * _2210);
                    _2224 = _2211 / mad(_2209, _2210, mad(_2213, 0.5f, 0.5f));
                }
                else
                {
                    float _2201 = dot(_2192, _2192);
                    _2222 = 1.0f;
                    _2223 = dot(_673, _2192 * rsqrt(_2201));
                    _2224 = 1.0f / (_2201 + 1.0f);
                }
                float _2242 = 0.0f;
                if (_2092 > 0.0f)
                {
                    float _2231 = sqrt(clamp((_2092 * _2092) * _2224, 0.0f, 1.0f));
                    float _2241 = 0.0f;
                    if (_2223 < _2231)
                    {
                        float _2237 = _2231 + max(_2223, -_2231);
                        _2241 = (_2237 * _2237) / (4.0f * _2231);
                    }
                    else
                    {
                        _2241 = _2223;
                    }
                    _2242 = _2241;
                }
                else
                {
                    _2242 = _2223;
                }
                float _2243 = clamp(_2242, 0.0f, 1.0f);
                float3 _2261 = 0.0f.xxx;
                if (_2197)
                {
                    float3 _2248 = reflect(-_579, _673);
                    float3 _2249 = _2193 - _2192;
                    float _2250 = dot(_2248, _2249);
                    _2261 = _2192 + (_2249 * clamp(dot(_2192, (_2248 * _2250) - _2249) / mad(_2096, _2096, -(_2250 * _2250)), 0.0f, 1.0f));
                }
                else
                {
                    _2261 = _2192;
                }
                float _2263 = rsqrt(dot(_2261, _2261));
                float3 _2264 = _2261 * _2263;
                float _2265 = max(_2196, View_View_MinRoughness);
                float _2270 = clamp((_2092 * _2263) * mad(-_2265, _2265, 1.0f), 0.0f, 1.0f);
                float _2272 = clamp(spvUnpackHalf2x16(_2089 >> 16u).x * _2263, 0.0f, 1.0f);
                float3 _2466 = 0.0f.xxx;
                float3 _2467 = 0.0f.xxx;
                [branch]
                if (_2243 > 0.0f)
                {
                    float _2283 = dot(_673, _2264);
                    float _2284 = dot(_673, _579);
                    float _2285 = dot(_579, _2264);
                    float _2287 = rsqrt(mad(2.0f, _2285, 2.0f));
                    bool _2293 = _2270 > 0.0f;
                    float _2372 = 0.0f;
                    float _2373 = 0.0f;
                    if (_2293)
                    {
                        float _2298 = sqrt(mad(-_2270, _2270, 1.0f));
                        float _2299 = 2.0f * _2283;
                        float _2300 = -_2285;
                        float _2301 = mad(_2299, _2284, _2300);
                        float _2370 = 0.0f;
                        float _2371 = 0.0f;
                        if (_2301 >= _2298)
                        {
                            _2370 = 1.0f;
                            _2371 = abs(_2284);
                        }
                        else
                        {
                            float _2306 = -_2301;
                            float _2309 = _2270 * rsqrt(mad(_2306, _2301, 1.0f));
                            float _2310 = mad(_2306, _2283, _2284);
                            float _2314 = mad(_2306, _2285, mad(2.0f * _2284, _2284, -1.0f));
                            float _2325 = _2309 * sqrt(clamp(mad(_2299 * _2284, _2285, mad(_2300, _2285, mad(-_2284, _2284, mad(-_2283, _2283, 1.0f)))), 0.0f, 1.0f));
                            float _2327 = (_2325 * 2.0f) * _2284;
                            float _2328 = mad(_2283, _2298, _2284);
                            float _2329 = mad(_2309, _2310, _2328);
                            float _2331 = mad(_2309, _2314, mad(_2285, _2298, 1.0f));
                            float _2332 = _2325 * _2331;
                            float _2333 = _2329 * _2331;
                            float _2338 = _2333 * mad(-0.5f, _2332, (0.25f * _2327) * _2329);
                            float _2348 = mad(_2329, mad(_2328, _2331 * _2331, _2333 * mad(-0.5f, mad(_2285, _2298, _2331), -0.5f)), mad(_2332, _2332, (_2327 * _2329) * mad(_2327, _2329, _2332 * (-2.0f))));
                            float _2352 = (2.0f * _2338) / mad(_2348, _2348, _2338 * _2338);
                            float _2353 = _2352 * _2348;
                            float _2355 = mad(-_2352, _2338, 1.0f);
                            float _2361 = mad(_2285, _2298, mad(_2355, _2309 * _2314, _2353 * _2327));
                            float _2363 = rsqrt(mad(2.0f, _2361, 2.0f));
                            _2370 = clamp((mad(_2283, _2298, mad(_2355, _2309 * _2310, _2353 * _2325)) + _2284) * _2363, 0.0f, 1.0f);
                            _2371 = clamp(mad(_2363, _2361, _2363), 0.0f, 1.0f);
                        }
                        _2372 = _2370;
                        _2373 = _2371;
                    }
                    else
                    {
                        _2372 = clamp((_2283 + _2284) * _2287, 0.0f, 1.0f);
                        _2373 = clamp(mad(_2287, _2285, _2287), 0.0f, 1.0f);
                    }
                    float _2376 = clamp(abs(_2284) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _2379 = 1.0f.xxx * ((_2142 ? _2224 : 1.0f) * _2243);
                    float3 _2464 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_2096, _2092), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _2464 = 0.0f.xxx;
                    }
                    else
                    {
                        float _2386 = _2196 * _2196;
                        float _2396 = 0.0f;
                        if (_2272 > 0.0f)
                        {
                            _2396 = clamp(mad(_2386, _2386, (_2272 * _2272) / mad(_2373, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _2396 = _2386 * _2386;
                        }
                        float _2410 = 0.0f;
                        float _2411 = 0.0f;
                        if (_2293)
                        {
                            float _2408 = _2396 + (((0.25f * _2270) * mad(3.0f, asfloat(532487669 + (asint(_2396) >> 1)), _2270)) / (_2373 + 0.001000000047497451305389404296875f));
                            _2410 = _2396 / _2408;
                            _2411 = _2408;
                        }
                        else
                        {
                            _2410 = 1.0f;
                            _2411 = _2396;
                        }
                        float _2433 = 0.0f;
                        if (_2222 < 1.0f)
                        {
                            float _2418 = sqrt((1.00010001659393310546875f - _2222) / (1.0f + _2222));
                            _2433 = _2410 * sqrt(_2411 / max(_2411 + (((0.25f * _2418) * mad(3.0f, asfloat(532487669 + (asint(_2411) >> 1)), _2418)) / (_2373 + 0.001000000047497451305389404296875f)), 9.9999997473787516355514526367188e-06f));
                        }
                        else
                        {
                            _2433 = _2410;
                        }
                        float _2436 = mad(mad(_2372, _2396, -_2372), _2372, 1.0f);
                        float _2441 = sqrt(_2396);
                        float _2442 = 1.0f - _2441;
                        float _2448 = 1.0f - _2373;
                        float _2449 = _2448 * _2448;
                        float _2450 = _2449 * _2449;
                        _2464 = _2379 * (((clamp(50.0f * _920.y, 0.0f, 1.0f) * (_2450 * _2448)).xxx + (_920 * mad(-_2450, _2448, 1.0f))) * (((_2396 / ((3.1415927410125732421875f * _2436) * _2436)) * _2433) * (0.5f / mad(_2243, mad(_2376, _2442, _2441), _2376 * mad(_2243, _2442, _2441)))));
                    }
                    _2466 = ((_918 * 0.3183098733425140380859375f) * _2379) * 1.0f;
                    _2467 = _2464;
                }
                else
                {
                    _2466 = 0.0f.xxx;
                    _2467 = 0.0f.xxx;
                }
                float3 _2470 = ((float3(float((_2073 >> 0u) & 1023u), float((_2073 >> 10u) & 1023u), float((_2073 >> 20u) & 1023u)) * TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2049].x) * _2173) * _2185;
                _2473 = mad(_2466 * (float((_2102 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _2470, 0.0f.xxx);
                _2474 = (_2467 * (float(_2102 & 1023u) * 0.000977517105638980865478515625f)) * _2470;
            }
            else
            {
                _2473 = 0.0f.xxx;
                _2474 = 0.0f.xxx;
            }
            _2475 = _2473;
            _2476 = _2474;
        }
        else
        {
            _2475 = 0.0f.xxx;
            _2476 = 0.0f.xxx;
        }
        float4 _2491 = 0.0f.xxxx;
        float4 _2492 = 0.0f.xxxx;
        [flatten]
        if ((((_2062 >> 8u) & 7u) & _1193) != 0u)
        {
            _2491 = _2032 + float4(_2475, 0.0f);
            _2492 = _2035 + float4(_2476, 0.0f);
        }
        else
        {
            _2491 = _2032;
            _2492 = _2035;
        }
        _2033 = _2491;
        _2036 = _2492;
    }
    bool4 _2496 = (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    float3 _2505 = (_673 * (2.0f * dot(_579, _673))) - _579;
    bool _2545 = false;
    if (TranslucentBasePass_TranslucentBasePass_Enabled > 0u)
    {
        float _2535 = 0.0f;
        do
        {
            [flatten]
            if (_566)
            {
                _2535 = mad(_559, View_View_ViewToClip[2u].z, View_View_ViewToClip[3u].z);
                break;
            }
            else
            {
                _2535 = 1.0f / ((_559 + View_View_InvDeviceZToWorldZTransform.w) * View_View_InvDeviceZToWorldZTransform.z);
                break;
            }
            break; // unreachable workaround
        } while(false);
        _2545 = (float(abs(asint(TranslucentBasePass_SceneDepth.SampleLevel(View_SharedPointClampedSampler, _564, 0.0f).x) - asint(_2535))) <= TranslucentBasePass_TranslucentBasePass_RelativeDepthThreshold) ? true : false;
    }
    else
    {
        _2545 = false;
    }
    bool _2546 = _2545 && true;
    bool _2550 = !_2546;
    uint _2619 = 0u;
    bool _2620 = false;
    if ((TranslucentBasePass_TranslucentBasePass_FinalProbeResolution > 0u) && _2550)
    {
        uint _2572 = 0u;
        float _2562 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
        float3 _2564 = (View_View_ViewTilePosition * 2097152.0f) + _557;
        uint _2616 = 0u;
        do
        {
            uint _2613 = 0u;
            bool _2614 = false;
            uint _2568 = 0u;
            for (;;)
            {
                _2572 = TranslucentBasePass_TranslucentBasePass_NumRadianceProbeClipmaps;
                if (_2568 < _2572)
                {
                    float3 _2585 = ((_2564 + (View_View_PreViewTranslationHigh + View_View_PreViewTranslationLow)) - TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2568].xyz) / TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2568].w.xxx;
                    float3 _2590 = clamp((_2585 - 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_InvClipmapFadeSize, 0.0f.xxx, 1.0f.xxx);
                    float3 _2598 = clamp(((float(TranslucentBasePass_TranslucentBasePass_RadianceProbeClipmapResolution).xxx - 0.5f.xxx) - _2585) * TranslucentBasePass_TranslucentBasePass_InvClipmapFadeSize, 0.0f.xxx, 1.0f.xxx);
                    if (min(min(_2590.x, min(_2590.y, _2590.z)), min(_2598.x, min(_2598.y, _2598.z))) > _2562)
                    {
                        _2613 = _2568;
                        _2614 = true;
                        break;
                    }
                    _2568++;
                    continue;
                }
                else
                {
                    _2613 = _376;
                    _2614 = false;
                    break;
                }
            }
            if (_2614)
            {
                _2616 = _2613;
                break;
            }
            _2616 = _2572;
            break;
        } while(false);
        _2619 = _2616;
        _2620 = (_2616 < _2572) ? true : false;
    }
    else
    {
        _2619 = 0u;
        _2620 = false;
    }
    float3 _3896 = 0.0f.xxx;
    if (_2546)
    {
        _3896 = (pow(max(0.0f.xxx, (TranslucentBasePass_Radiance.Sample(View_SharedPointClampedSampler, float3(_564, 0.0f)).xyz * View_View_OneOverPreExposure) * 5.5555553436279296875f), TranslucentBasePass_TranslucentBasePass_Contrast.xxx) * 0.180000007152557373046875f) * TranslucentBasePass_TranslucentBasePass_SpecularScale;
    }
    else
    {
        float3 _3876 = 0.0f.xxx;
        if (_2620)
        {
            float3 _2908 = (View_View_ViewTilePosition * 2097152.0f) + _557;
            float3 _2909 = View_View_PreViewTranslationHigh + View_View_PreViewTranslationLow;
            float3 _2919 = (((_2908 + _2909) - TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].xyz) / TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].w.xxx) - 0.5f.xxx;
            int3 _2921 = int3(floor(_2919));
            float3 _2922 = frac(_2919);
            uint3 _2923 = uint3(_2921);
            uint _2929 = _2619 * TranslucentBasePass_TranslucentBasePass_RadianceProbeClipmapResolution;
            int4 _2934 = int4(uint4(_2923.x + _2929, _2923.yz, 0u));
            uint4 _2938 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2934.xyz, _2934.w));
            uint _2939 = _2938.x;
            float3 _2948 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].xyz + ((float3(_2923) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].w)) + TranslucentBasePass_ProbeWorldOffset[_2939].xyz) - _2909;
            float _2951 = TranslucentBasePass_TranslucentBasePass_ReprojectionRadiusScale * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_2619].x;
            float3 _2957 = _2908 - float4(_2948, _2951).xyz;
            float _2959 = dot(_2505, _2505);
            float _2960 = dot(_2505, _2957);
            float _2961 = 2.0f * _2960;
            float _2962 = -_2951;
            float _2964 = 4.0f * _2959;
            float _2967 = mad(_2961, _2961, -(_2964 * mad(_2962, _2951, dot(_2957, _2957))));
            float2 _2979 = 0.0f.xx;
            [flatten]
            if (_2967 >= 0.0f)
            {
                _2979 = ((_2960 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2967))) / (2.0f * _2959).xx;
            }
            else
            {
                _2979 = (-1.0f).xx;
            }
            float3 _2983 = (_2908 + (_2505 * _2979.y)) - _2948;
            float3 _2988 = normalize(_2983);
            float3 _2989 = abs(_2988);
            float _2992 = sqrt(1.0f - _2989.z);
            float _2993 = _2989.x;
            float _2994 = _2989.y;
            float _2998 = min(_2993, _2994) / (max(_2993, _2994) + 5.4210108624275221700372640043497e-20f);
            float _3004 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2998, 0.0419038832187652587890625f), _2998, 0.08817707002162933349609375f), _2998, -0.2473337352275848388671875f), _2998, 0.006157201714813709259033203125f), _2998, 0.63622653484344482421875f), _2998, 4.0675854506844189018011093139648e-06f);
            float _3007 = (_2993 < _2994) ? (1.0f - _3004) : _3004;
            float2 _3011 = float2(mad(-_3007, _2992, _2992), _3007 * _2992);
            bool2 _3014 = (_2988.z < 0.0f).xx;
            float2 _3016 = 1.0f.xx - _3011.yx;
            uint2 _3026 = TranslucentBasePass_TranslucentBasePass_FinalProbeResolution.xx;
            uint _3032 = TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionDivideShift & 31u;
            float _3038 = float(TranslucentBasePass_TranslucentBasePass_RadianceProbeResolution);
            float2 _3045 = float(1u << (TranslucentBasePass_TranslucentBasePass_FinalRadianceAtlasMaxMip & 31u)).xx;
            float3 _3063 = 0.0f.xxx;
            if (_2939 != 4294967295u)
            {
                _3063 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3026 * uint2(_2939 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2939 >> _3032)) + ((((asfloat(asuint(float2(_3014.x ? _3016.x : _3011.x, _3014.y ? _3016.y : _3011.y)) ^ (asuint(_2988.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3038) + _3045)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3063 = 0.0f.xxx;
            }
            uint3 _3066 = uint3(_2921 + int3(0, 0, 1));
            int4 _3072 = int4(uint4(_3066.x + _2929, _3066.yz, 0u));
            uint4 _3075 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3072.xyz, _3072.w));
            uint _3076 = _3075.x;
            float3 _3085 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].xyz + ((float3(_3066) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].w)) + TranslucentBasePass_ProbeWorldOffset[_3076].xyz) - _2909;
            float3 _3091 = _2908 - float4(_3085, _2951).xyz;
            float _3093 = dot(_2505, _3091);
            float _3094 = 2.0f * _3093;
            float _3098 = mad(_3094, _3094, -(_2964 * mad(_2962, _2951, dot(_3091, _3091))));
            float2 _3110 = 0.0f.xx;
            [flatten]
            if (_3098 >= 0.0f)
            {
                _3110 = ((_3093 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3098))) / (2.0f * _2959).xx;
            }
            else
            {
                _3110 = (-1.0f).xx;
            }
            float3 _3114 = (_2908 + (_2505 * _3110.y)) - _3085;
            float3 _3119 = normalize(_3114);
            float3 _3120 = abs(_3119);
            float _3123 = sqrt(1.0f - _3120.z);
            float _3129 = min(_3120.x, _3120.y) / (max(_3120.x, _3120.y) + 5.4210108624275221700372640043497e-20f);
            float _3135 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3129, 0.0419038832187652587890625f), _3129, 0.08817707002162933349609375f), _3129, -0.2473337352275848388671875f), _3129, 0.006157201714813709259033203125f), _3129, 0.63622653484344482421875f), _3129, 4.0675854506844189018011093139648e-06f);
            float _3138 = (_3120.x < _3120.y) ? (1.0f - _3135) : _3135;
            float2 _3142 = float2(mad(-_3138, _3123, _3123), _3138 * _3123);
            bool2 _3145 = (_3119.z < 0.0f).xx;
            float2 _3147 = 1.0f.xx - _3142.yx;
            float3 _3177 = 0.0f.xxx;
            if (_3076 != 4294967295u)
            {
                _3177 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3026 * uint2(_3076 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3076 >> _3032)) + ((((asfloat(asuint(float2(_3145.x ? _3147.x : _3142.x, _3145.y ? _3147.y : _3142.y)) ^ (asuint(_3119.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3038) + _3045)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3177 = 0.0f.xxx;
            }
            uint3 _3180 = uint3(_2921 + int3(0, 1, 0));
            int4 _3186 = int4(uint4(_3180.x + _2929, _3180.yz, 0u));
            uint4 _3189 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3186.xyz, _3186.w));
            uint _3190 = _3189.x;
            float3 _3199 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].xyz + ((float3(_3180) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].w)) + TranslucentBasePass_ProbeWorldOffset[_3190].xyz) - _2909;
            float3 _3205 = _2908 - float4(_3199, _2951).xyz;
            float _3207 = dot(_2505, _3205);
            float _3208 = 2.0f * _3207;
            float _3212 = mad(_3208, _3208, -(_2964 * mad(_2962, _2951, dot(_3205, _3205))));
            float2 _3224 = 0.0f.xx;
            [flatten]
            if (_3212 >= 0.0f)
            {
                _3224 = ((_3207 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3212))) / (2.0f * _2959).xx;
            }
            else
            {
                _3224 = (-1.0f).xx;
            }
            float3 _3228 = (_2908 + (_2505 * _3224.y)) - _3199;
            float3 _3233 = normalize(_3228);
            float3 _3234 = abs(_3233);
            float _3237 = sqrt(1.0f - _3234.z);
            float _3243 = min(_3234.x, _3234.y) / (max(_3234.x, _3234.y) + 5.4210108624275221700372640043497e-20f);
            float _3249 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3243, 0.0419038832187652587890625f), _3243, 0.08817707002162933349609375f), _3243, -0.2473337352275848388671875f), _3243, 0.006157201714813709259033203125f), _3243, 0.63622653484344482421875f), _3243, 4.0675854506844189018011093139648e-06f);
            float _3252 = (_3234.x < _3234.y) ? (1.0f - _3249) : _3249;
            float2 _3256 = float2(mad(-_3252, _3237, _3237), _3252 * _3237);
            bool2 _3259 = (_3233.z < 0.0f).xx;
            float2 _3261 = 1.0f.xx - _3256.yx;
            float3 _3291 = 0.0f.xxx;
            if (_3190 != 4294967295u)
            {
                _3291 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3026 * uint2(_3190 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3190 >> _3032)) + ((((asfloat(asuint(float2(_3259.x ? _3261.x : _3256.x, _3259.y ? _3261.y : _3256.y)) ^ (asuint(_3233.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3038) + _3045)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3291 = 0.0f.xxx;
            }
            uint3 _3294 = uint3(_2921 + int3(0, 1, 1));
            int4 _3300 = int4(uint4(_3294.x + _2929, _3294.yz, 0u));
            uint4 _3303 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3300.xyz, _3300.w));
            uint _3304 = _3303.x;
            float3 _3313 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].xyz + ((float3(_3294) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].w)) + TranslucentBasePass_ProbeWorldOffset[_3304].xyz) - _2909;
            float3 _3319 = _2908 - float4(_3313, _2951).xyz;
            float _3321 = dot(_2505, _3319);
            float _3322 = 2.0f * _3321;
            float _3326 = mad(_3322, _3322, -(_2964 * mad(_2962, _2951, dot(_3319, _3319))));
            float2 _3338 = 0.0f.xx;
            [flatten]
            if (_3326 >= 0.0f)
            {
                _3338 = ((_3321 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3326))) / (2.0f * _2959).xx;
            }
            else
            {
                _3338 = (-1.0f).xx;
            }
            float3 _3342 = (_2908 + (_2505 * _3338.y)) - _3313;
            float3 _3347 = normalize(_3342);
            float3 _3348 = abs(_3347);
            float _3351 = sqrt(1.0f - _3348.z);
            float _3357 = min(_3348.x, _3348.y) / (max(_3348.x, _3348.y) + 5.4210108624275221700372640043497e-20f);
            float _3363 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3357, 0.0419038832187652587890625f), _3357, 0.08817707002162933349609375f), _3357, -0.2473337352275848388671875f), _3357, 0.006157201714813709259033203125f), _3357, 0.63622653484344482421875f), _3357, 4.0675854506844189018011093139648e-06f);
            float _3366 = (_3348.x < _3348.y) ? (1.0f - _3363) : _3363;
            float2 _3370 = float2(mad(-_3366, _3351, _3351), _3366 * _3351);
            bool2 _3373 = (_3347.z < 0.0f).xx;
            float2 _3375 = 1.0f.xx - _3370.yx;
            float3 _3405 = 0.0f.xxx;
            if (_3304 != 4294967295u)
            {
                _3405 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3026 * uint2(_3304 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3304 >> _3032)) + ((((asfloat(asuint(float2(_3373.x ? _3375.x : _3370.x, _3373.y ? _3375.y : _3370.y)) ^ (asuint(_3347.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3038) + _3045)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3405 = 0.0f.xxx;
            }
            uint3 _3408 = uint3(_2921 + int3(1, 0, 0));
            int4 _3414 = int4(uint4(_3408.x + _2929, _3408.yz, 0u));
            uint4 _3417 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3414.xyz, _3414.w));
            uint _3418 = _3417.x;
            float3 _3427 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].xyz + ((float3(_3408) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].w)) + TranslucentBasePass_ProbeWorldOffset[_3418].xyz) - _2909;
            float3 _3433 = _2908 - float4(_3427, _2951).xyz;
            float _3435 = dot(_2505, _3433);
            float _3436 = 2.0f * _3435;
            float _3440 = mad(_3436, _3436, -(_2964 * mad(_2962, _2951, dot(_3433, _3433))));
            float2 _3452 = 0.0f.xx;
            [flatten]
            if (_3440 >= 0.0f)
            {
                _3452 = ((_3435 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3440))) / (2.0f * _2959).xx;
            }
            else
            {
                _3452 = (-1.0f).xx;
            }
            float3 _3456 = (_2908 + (_2505 * _3452.y)) - _3427;
            float3 _3461 = normalize(_3456);
            float3 _3462 = abs(_3461);
            float _3465 = sqrt(1.0f - _3462.z);
            float _3471 = min(_3462.x, _3462.y) / (max(_3462.x, _3462.y) + 5.4210108624275221700372640043497e-20f);
            float _3477 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3471, 0.0419038832187652587890625f), _3471, 0.08817707002162933349609375f), _3471, -0.2473337352275848388671875f), _3471, 0.006157201714813709259033203125f), _3471, 0.63622653484344482421875f), _3471, 4.0675854506844189018011093139648e-06f);
            float _3480 = (_3462.x < _3462.y) ? (1.0f - _3477) : _3477;
            float2 _3484 = float2(mad(-_3480, _3465, _3465), _3480 * _3465);
            bool2 _3487 = (_3461.z < 0.0f).xx;
            float2 _3489 = 1.0f.xx - _3484.yx;
            float3 _3519 = 0.0f.xxx;
            if (_3418 != 4294967295u)
            {
                _3519 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3026 * uint2(_3418 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3418 >> _3032)) + ((((asfloat(asuint(float2(_3487.x ? _3489.x : _3484.x, _3487.y ? _3489.y : _3484.y)) ^ (asuint(_3461.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3038) + _3045)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3519 = 0.0f.xxx;
            }
            uint3 _3522 = uint3(_2921 + int3(1, 0, 1));
            int4 _3528 = int4(uint4(_3522.x + _2929, _3522.yz, 0u));
            uint4 _3531 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3528.xyz, _3528.w));
            uint _3532 = _3531.x;
            float3 _3541 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].xyz + ((float3(_3522) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].w)) + TranslucentBasePass_ProbeWorldOffset[_3532].xyz) - _2909;
            float3 _3547 = _2908 - float4(_3541, _2951).xyz;
            float _3549 = dot(_2505, _3547);
            float _3550 = 2.0f * _3549;
            float _3554 = mad(_3550, _3550, -(_2964 * mad(_2962, _2951, dot(_3547, _3547))));
            float2 _3566 = 0.0f.xx;
            [flatten]
            if (_3554 >= 0.0f)
            {
                _3566 = ((_3549 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3554))) / (2.0f * _2959).xx;
            }
            else
            {
                _3566 = (-1.0f).xx;
            }
            float3 _3570 = (_2908 + (_2505 * _3566.y)) - _3541;
            float3 _3575 = normalize(_3570);
            float3 _3576 = abs(_3575);
            float _3579 = sqrt(1.0f - _3576.z);
            float _3585 = min(_3576.x, _3576.y) / (max(_3576.x, _3576.y) + 5.4210108624275221700372640043497e-20f);
            float _3591 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3585, 0.0419038832187652587890625f), _3585, 0.08817707002162933349609375f), _3585, -0.2473337352275848388671875f), _3585, 0.006157201714813709259033203125f), _3585, 0.63622653484344482421875f), _3585, 4.0675854506844189018011093139648e-06f);
            float _3594 = (_3576.x < _3576.y) ? (1.0f - _3591) : _3591;
            float2 _3598 = float2(mad(-_3594, _3579, _3579), _3594 * _3579);
            bool2 _3601 = (_3575.z < 0.0f).xx;
            float2 _3603 = 1.0f.xx - _3598.yx;
            float3 _3633 = 0.0f.xxx;
            if (_3532 != 4294967295u)
            {
                _3633 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3026 * uint2(_3532 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3532 >> _3032)) + ((((asfloat(asuint(float2(_3601.x ? _3603.x : _3598.x, _3601.y ? _3603.y : _3598.y)) ^ (asuint(_3575.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3038) + _3045)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3633 = 0.0f.xxx;
            }
            uint3 _3636 = uint3(_2921 + int3(1, 1, 0));
            int4 _3642 = int4(uint4(_3636.x + _2929, _3636.yz, 0u));
            uint4 _3645 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3642.xyz, _3642.w));
            uint _3646 = _3645.x;
            float3 _3655 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].xyz + ((float3(_3636) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].w)) + TranslucentBasePass_ProbeWorldOffset[_3646].xyz) - _2909;
            float3 _3661 = _2908 - float4(_3655, _2951).xyz;
            float _3663 = dot(_2505, _3661);
            float _3664 = 2.0f * _3663;
            float _3668 = mad(_3664, _3664, -(_2964 * mad(_2962, _2951, dot(_3661, _3661))));
            float2 _3680 = 0.0f.xx;
            [flatten]
            if (_3668 >= 0.0f)
            {
                _3680 = ((_3663 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3668))) / (2.0f * _2959).xx;
            }
            else
            {
                _3680 = (-1.0f).xx;
            }
            float3 _3684 = (_2908 + (_2505 * _3680.y)) - _3655;
            float3 _3689 = normalize(_3684);
            float3 _3690 = abs(_3689);
            float _3693 = sqrt(1.0f - _3690.z);
            float _3699 = min(_3690.x, _3690.y) / (max(_3690.x, _3690.y) + 5.4210108624275221700372640043497e-20f);
            float _3705 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3699, 0.0419038832187652587890625f), _3699, 0.08817707002162933349609375f), _3699, -0.2473337352275848388671875f), _3699, 0.006157201714813709259033203125f), _3699, 0.63622653484344482421875f), _3699, 4.0675854506844189018011093139648e-06f);
            float _3708 = (_3690.x < _3690.y) ? (1.0f - _3705) : _3705;
            float2 _3712 = float2(mad(-_3708, _3693, _3693), _3708 * _3693);
            bool2 _3715 = (_3689.z < 0.0f).xx;
            float2 _3717 = 1.0f.xx - _3712.yx;
            float3 _3747 = 0.0f.xxx;
            if (_3646 != 4294967295u)
            {
                _3747 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3026 * uint2(_3646 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3646 >> _3032)) + ((((asfloat(asuint(float2(_3715.x ? _3717.x : _3712.x, _3715.y ? _3717.y : _3712.y)) ^ (asuint(_3689.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3038) + _3045)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3747 = 0.0f.xxx;
            }
            uint3 _3750 = uint3(_2921 + int3(1, 1, 1));
            int4 _3756 = int4(uint4(_3750.x + _2929, _3750.yz, 0u));
            uint4 _3759 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3756.xyz, _3756.w));
            uint _3760 = _3759.x;
            float3 _3769 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].xyz + ((float3(_3750) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2619].w)) + TranslucentBasePass_ProbeWorldOffset[_3760].xyz) - _2909;
            float3 _3775 = _2908 - float4(_3769, _2951).xyz;
            float _3777 = dot(_2505, _3775);
            float _3778 = 2.0f * _3777;
            float _3782 = mad(_3778, _3778, -(_2964 * mad(_2962, _2951, dot(_3775, _3775))));
            float2 _3794 = 0.0f.xx;
            [flatten]
            if (_3782 >= 0.0f)
            {
                _3794 = ((_3777 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3782))) / (2.0f * _2959).xx;
            }
            else
            {
                _3794 = (-1.0f).xx;
            }
            float3 _3798 = (_2908 + (_2505 * _3794.y)) - _3769;
            float3 _3803 = normalize(_3798);
            float3 _3804 = abs(_3803);
            float _3807 = sqrt(1.0f - _3804.z);
            float _3813 = min(_3804.x, _3804.y) / (max(_3804.x, _3804.y) + 5.4210108624275221700372640043497e-20f);
            float _3819 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3813, 0.0419038832187652587890625f), _3813, 0.08817707002162933349609375f), _3813, -0.2473337352275848388671875f), _3813, 0.006157201714813709259033203125f), _3813, 0.63622653484344482421875f), _3813, 4.0675854506844189018011093139648e-06f);
            float _3822 = (_3804.x < _3804.y) ? (1.0f - _3819) : _3819;
            float2 _3826 = float2(mad(-_3822, _3807, _3807), _3822 * _3807);
            bool2 _3829 = (_3803.z < 0.0f).xx;
            float2 _3831 = 1.0f.xx - _3826.yx;
            float3 _3861 = 0.0f.xxx;
            if (_3760 != 4294967295u)
            {
                _3861 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3026 * uint2(_3760 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3760 >> _3032)) + ((((asfloat(asuint(float2(_3829.x ? _3831.x : _3826.x, _3829.y ? _3831.y : _3826.y)) ^ (asuint(_3803.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3038) + _3045)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3861 = 0.0f.xxx;
            }
            float3 _3864 = _2922.z.xxx;
            float3 _3870 = _2922.y.xxx;
            _3876 = lerp(lerp(lerp(_3063 * ((_2979.y * _2979.y) / (_2951 * dot(_2983, _2505))), _3177 * ((_3110.y * _3110.y) / (_2951 * dot(_3114, _2505))), _3864), lerp(_3291 * ((_3224.y * _3224.y) / (_2951 * dot(_3228, _2505))), _3405 * ((_3338.y * _3338.y) / (_2951 * dot(_3342, _2505))), _3864), _3870), lerp(lerp(_3519 * ((_3452.y * _3452.y) / (_2951 * dot(_3456, _2505))), _3633 * ((_3566.y * _3566.y) / (_2951 * dot(_3570, _2505))), _3864), lerp(_3747 * ((_3680.y * _3680.y) / (_2951 * dot(_3684, _2505))), _3861 * ((_3794.y * _3794.y) / (_2951 * dot(_3798, _2505))), _3864), _3870), _2922.x.xxx);
        }
        else
        {
            uint _2630 = (TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumGridCells + _1177) * 2u;
            uint _2635 = min(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_2630], TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumReflectionCaptures);
            uint _2636 = _2630 + 1u;
            float _2643 = mad(-1.2000000476837158203125f, log2(max(_871, 0.001000000047497451305389404296875f)), 1.0f);
            float _2645 = (View_View_ReflectionCubemapMaxMip - 1.0f) - _2643;
            float2 _2647 = 0.0f.xx;
            float4 _2650 = 0.0f.xxxx;
            _2647 = float2(0.0f, 1.0f);
            _2650 = float4(0.0f, 0.0f, 0.0f, 1.0f);
            float2 _2648 = 0.0f.xx;
            float4 _2651 = 0.0f.xxxx;
            [loop]
            for (uint _2652 = 0u; _2652 < _2635; _2647 = _2648, _2650 = _2651, _2652++)
            {
                [branch]
                if (_2650.w < 0.001000000047497451305389404296875f)
                {
                    break;
                }
                uint4 _2663 = TranslucentBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_2636] + _2652);
                uint _2664 = _2663.x;
                precise float3 _120 = ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2664].xyz + View_View_PreViewTranslationHigh;
                precise float3 _121 = _120 - ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2664].xyz;
                precise float3 _122 = _120 - _121;
                precise float3 _123 = ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2664].xyz - _122;
                precise float3 _124 = View_View_PreViewTranslationHigh - _121;
                precise float3 _125 = _123 + _124;
                float3 _2673 = _120 + (_125 + (ReflectionCaptureSM5_ReflectionCaptureSM5_PositionLow[_2664].xyz + View_View_PreViewTranslationLow));
                float3 _2678 = _556 - _2673;
                float _2680 = sqrt(dot(_2678, _2678));
                [branch]
                if (_2680 < ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2664].w)
                {
                    float _2799 = 0.0f;
                    float3 _2800 = 0.0f.xxx;
                    [branch]
                    if (ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_2664].z > 0.0f)
                    {
                        float3 _2731 = float4(_2673, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2664].w).xyz;
                        float3 _2738 = mul(float4(_556 - _2731, 1.0f), ReflectionCaptureSM5_ReflectionCaptureSM5_BoxTransform[_2664]).xyz;
                        float3 _2744 = mul(float4(_2505, 0.0f), ReflectionCaptureSM5_ReflectionCaptureSM5_BoxTransform[_2664]).xyz;
                        float3 _2745 = 1.0f.xxx / _2744;
                        float3 _2747 = -_2738;
                        float3 _2750 = max(mad(_2747, _2745, (-1.0f).xxx / _2744), mad(_2747, _2745, _2745));
                        float3 _2764 = ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2664].xyz - (0.5f * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2664].w).xxx;
                        float3 _2765 = -_2764;
                        float3 _2766 = _2738 * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2664].xyz;
                        bool3 _2767 = bool3(_2766.x < _2765.x, _2766.y < _2765.y, _2766.z < _2765.z);
                        float3 _2769 = abs(mad(_2738, ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2664].xyz, _2764));
                        bool3 _2780 = bool3(_2766.x > _2764.x, _2766.y > _2764.y, _2766.z > _2764.z);
                        float3 _2782 = abs(mad(_2738, ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2664].xyz, _2765));
                        _2799 = 1.0f - smoothstep(0.0f, 0.699999988079071044921875f * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2664].w, dot(float3(_2767.x ? _2769.x : 0.0f, _2767.y ? _2769.y : 0.0f, _2767.z ? _2769.z : 0.0f), 1.0f.xxx) + dot(float3(_2780.x ? _2782.x : 0.0f, _2780.y ? _2782.y : 0.0f, _2780.z ? _2782.z : 0.0f), 1.0f.xxx));
                        _2800 = (_556 + (_2505 * min(_2750.x, min(_2750.y, _2750.z)))) - (_2731 + ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[_2664].xyz);
                    }
                    else
                    {
                        float3 _2699 = _556 - float4(_2673, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2664].w).xyz;
                        float _2701 = dot(_2505, _2699);
                        float _2705 = mad(_2701, _2701, -mad(-ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2664].w, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2664].w, dot(_2699, _2699)));
                        float _2720 = 0.0f;
                        float3 _2721 = 0.0f.xxx;
                        [flatten]
                        if (_2705 >= 0.0f)
                        {
                            float _2715 = clamp(mad(2.5f, clamp(_2680 / ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2664].w, 0.0f, 1.0f), -1.5f), 0.0f, 1.0f);
                            _2720 = mad(-(_2715 * _2715), mad(-2.0f, _2715, 3.0f), 1.0f);
                            _2721 = (_2699 + (_2505 * (sqrt(_2705) - _2701))) - ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[_2664].xyz;
                        }
                        else
                        {
                            _2720 = 0.0f;
                            _2721 = _2505;
                        }
                        _2799 = _2720;
                        _2800 = _2721;
                    }
                    float4 _2809 = TranslucentBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_2800, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_2664].y), _2645);
                    float3 _2812 = _2809.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_2664].x;
                    float4 _2814 = float4(_2812.x, _2812.y, _2812.z, _2809.w) * _2799;
                    float3 _2819 = _2650.xyz + ((_2814.xyz * _2650.w) * 1.0f);
                    float4 _2820 = float4(_2819.x, _2819.y, _2819.z, _2650.w);
                    _2820.w = _2650.w * (1.0f - _2814.w);
                    _2648 = float2(mad(ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[_2664].w * _2799, _2647.y, _2647.x), _2647.y * (1.0f - _2799));
                    _2651 = _2820;
                }
                else
                {
                    _2648 = _2647;
                    _2651 = _2650;
                }
            }
            float3 _2836 = _2650.xyz * View_View_PrecomputedIndirectSpecularColorScale;
            float4 _2837 = float4(_2836.x, _2836.y, _2836.z, _2650.w);
            float _2840 = _2647.x * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.2126390039920806884765625f, 0.715168654918670654296875f, 0.072192318737506866455078125f));
            float2 _2841 = 0.0f.xx;
            _2841.x = _2840;
            float4 _2883 = 0.0f.xxxx;
            float2 _2884 = 0.0f.xx;
            float3 _2885 = 0.0f.xxx;
            [branch]
            if ((TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
            {
                float3 _2862 = TranslucentBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_SkyLightCubemapSampler, _2505, (TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _2643).xyz * View_View_SkyLightColor.xyz;
                float4 _2880 = 0.0f.xxxx;
                float2 _2881 = 0.0f.xx;
                float3 _2882 = 0.0f.xxx;
                [flatten]
                if ((TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.z < 1.0f) && true)
                {
                    float3 _2875 = _2836.xyz + ((_2862 * _2650.w) * 1.0f);
                    float2 _2879 = 0.0f.xx;
                    _2879.x = mad(View_SkyIrradianceEnvironmentMap[7u].x * dot(View_View_SkyLightColor.xyz, float3(0.2126390039920806884765625f, 0.715168654918670654296875f, 0.072192318737506866455078125f)), _2647.y, _2840);
                    _2880 = float4(_2875.x, _2875.y, _2875.z, _2650.w);
                    _2881 = _2879;
                    _2882 = 0.0f.xxx;
                }
                else
                {
                    _2880 = _2837;
                    _2881 = _2841;
                    _2882 = _2862 * 1.0f;
                }
                _2883 = _2880;
                _2884 = _2881;
                _2885 = _2882;
            }
            else
            {
                _2883 = _2837;
                _2884 = _2841;
                _2885 = 0.0f.xxx;
            }
            _3876 = ((_2883.xyz * lerp(1.0f, min(dot(_1126, float3(0.2126390039920806884765625f, 0.715168654918670654296875f, 0.072192318737506866455078125f)) / max(_2884.x, 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp(mad(_871, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y), 0.0f, 1.0f)))).xyz + (_2885 * _2883.w)).xyz;
        }
        _3896 = _3876;
    }
    float3 _4205 = 0.0f.xxx;
    if (((View_View_CameraCut == 0.0f) && (TranslucentBasePass_TranslucentBasePass_SSRQuality > 0)) && _2550)
    {
        float _3921 = min(_559, 1000000.0f);
        float4 _3926 = mul(float4(_2505, 0.0f), View_View_TranslatedWorldToView);
        float _3927 = _3926.z;
        float _3932 = (_3927 < 0.0f) ? min(((-0.949999988079071044921875f) * _559) / _3927, _3921) : _3921;
        float4 _3941 = mul(float4(_556, 1.0f), View_View_TranslatedWorldToClip);
        float4 _3946 = mul(float4(_556 + (_2505 * _3932), 1.0f), View_View_TranslatedWorldToClip);
        float3 _3950 = _3941.xyz * (1.0f / _3941.w);
        float4 _3957 = _3941 + mul(float4(0.0f, 0.0f, _3932, 0.0f), View_View_ViewToClip);
        float3 _3961 = _3957.xyz * (1.0f / _3957.w);
        float3 _3962 = (_3946.xyz * (1.0f / _3946.w)) - _3950;
        float2 _3963 = _3950.xy;
        float2 _3964 = _3962.xy;
        float _3966 = 0.5f * length(_3964);
        float2 _3975 = 1.0f.xx - (max(abs(_3964 + (_3963 * _3966)) - _3966.xx, 0.0f.xx) / abs(_3964));
        float3 _3980 = _3962 * (min(_3975.x, _3975.y) / _3966);
        float _3996 = 0.0f;
        if (_566)
        {
            _3996 = max(0.0f, (_3950.z - _3961.z) * 4.0f);
        }
        else
        {
            _3996 = max(abs(_3980.z), (_3950.z - _3961.z) * 4.0f);
        }
        float _4011 = _3996 * 0.083333335816860198974609375f;
        float3 _4012 = float3((_3980.xy * float2(0.5f, -0.5f)) * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.xy, _3980.z) * 0.083333335816860198974609375f;
        float3 _4014 = float3(mad(_3963, float2(0.5f, -0.5f), 0.5f.xx) * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.xy, _3950.z) + (_4012 * (frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) - 0.5f));
        bool4 _4016 = bool4(false, false, false, false);
        float4 _4019 = 0.0f.xxxx;
        uint _4025 = 0u;
        float _4027 = 0.0f;
        _4016 = _416;
        _4019 = _415;
        _4025 = 0u;
        _4027 = 0.0f;
        bool4 _4017 = bool4(false, false, false, false);
        float4 _4020 = 0.0f.xxxx;
        bool _4022 = false;
        float _4024 = 0.0f;
        float _4028 = 0.0f;
        bool4 _4091 = bool4(false, false, false, false);
        float4 _4092 = 0.0f.xxxx;
        bool _4093 = false;
        bool _4021 = false;
        float _4023 = 1.0f;
        [loop]
        for (;;)
        {
            if (_4025 < 12u)
            {
                float2 _4032 = _4014.xy;
                float2 _4033 = _4012.xy;
                float _4034 = float(_4025);
                float _4035 = _4034 + 1.0f;
                float _4038 = _4014.z;
                float _4039 = _4012.z;
                float _4041 = _4034 + 2.0f;
                float _4045 = _4034 + 3.0f;
                float _4049 = _4034 + 4.0f;
                float _4054 = mad(0.666666686534881591796875f, _871, _4023);
                _4024 = mad(0.666666686534881591796875f, _871, _4054);
                float4 _4067 = float4(TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _4032 + (_4033 * _4035), _4023).x, TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _4032 + (_4033 * _4041), _4023).x, TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _4032 + (_4033 * _4045), _4054).x, TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _4032 + (_4033 * _4049), _4054).x);
                _4020 = float4(mad(_4035, _4039, _4038), mad(_4041, _4039, _4038), mad(_4045, _4039, _4038), mad(_4049, _4039, _4038)) - _4067;
                float4 _4068 = _4011.xxxx;
                float4 _4070 = abs(_4020 + _4068);
                bool4 _4071 = bool4(_4070.x < _4068.x, _4070.y < _4068.y, _4070.z < _4068.z, _4070.w < _4068.w);
                bool4 _4072 = bool4(_4067.x != 0.0f.xxxx.x, _4067.y != 0.0f.xxxx.y, _4067.z != 0.0f.xxxx.z, _4067.w != 0.0f.xxxx.w);
                bool _4075 = _4071.x && _4072.x;
                bool _4078 = _4071.y && _4072.y;
                bool _4081 = _4071.z && _4072.z;
                bool _4084 = _4071.w && _4072.w;
                _4017 = bool4(_4075, _4078, _4081, _4084);
                _4022 = (((_4021 || _4075) || _4078) || _4081) || _4084;
                [branch]
                if (_4022 || false)
                {
                    _4091 = _4017;
                    _4092 = _4020;
                    _4093 = _4022;
                    break;
                }
                _4028 = _4020.w;
                _4016 = _4017;
                _4019 = _4020;
                _4021 = _4022;
                _4023 = _4024;
                _4025 += 4u;
                _4027 = _4028;
                continue;
            }
            else
            {
                _4091 = _4016;
                _4092 = _4019;
                _4093 = _4021;
                break;
            }
        }
        float3 _4132 = 0.0f.xxx;
        [branch]
        if (_4093)
        {
            float _4106 = 0.0f;
            [flatten]
            if (_4091.z)
            {
                _4106 = _4092.y;
            }
            else
            {
                _4106 = _4092.z;
            }
            float _4114 = 0.0f;
            float _4115 = 0.0f;
            [flatten]
            if (_4091.y)
            {
                _4114 = _4092.y;
                _4115 = _4092.x;
            }
            else
            {
                _4114 = _4091.z ? _4092.z : _4092.w;
                _4115 = _4106;
            }
            float _4121 = 0.0f;
            [flatten]
            if (_4091.x)
            {
                _4121 = _4092.x;
            }
            else
            {
                _4121 = _4114;
            }
            float _4122 = _4091.x ? _4027 : _4115;
            _4132 = _4014 + (_4012 * (((_4091.x ? 0.0f : (_4091.y ? 1.0f : (_4091.z ? 2.0f : 3.0f))) + float(_4025)) + clamp(_4122 / (_4122 - _4121), 0.0f, 1.0f)));
        }
        else
        {
            _4132 = _4014 + (_4012 * float(_4025));
        }
        float3 _4204 = 0.0f.xxx;
        [branch]
        if (_4093)
        {
            float2 _4146 = (mad(mad((_4132.xy * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.zw).xy, float2(2.0f, -2.0f), float2(-1.0f, 1.0f)).xy, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz).xy - View_View_ScreenPositionScaleBias.wz) / View_View_ScreenPositionScaleBias.xy;
            float4 _4153 = mul(float4(_4146, _4132.z, 1.0f), View_View_ClipToPrevClip);
            float2 _4157 = _4153.xy / _4153.w.xx;
            float2 _4164 = clamp((abs(_4146) * 5.0f) - 4.0f.xx, 0.0f.xx, 1.0f.xx);
            float2 _4171 = clamp((abs(_4157) * 5.0f) - 4.0f.xx, 0.0f.xx, 1.0f.xx);
            float3 _4188 = -min(-TranslucentBasePass_PrevSceneColor.SampleLevel(TranslucentBasePass_PrevSceneColorSampler, clamp(mad(_4157, TranslucentBasePass_TranslucentBasePass_PrevScreenPositionScaleBias.xy, TranslucentBasePass_TranslucentBasePass_PrevScreenPositionScaleBias.zw), TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMin, TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMax), 0.0f).xyz, 0.0f.xxx);
            float4 _4189 = float4(_4188.x, _4188.y, _4188.z, _415.w);
            _4189.w = 1.0f;
            float4 _4194 = _4189 * (min(clamp(1.0f - dot(_4164, _4164), 0.0f, 1.0f), clamp(1.0f - dot(_4171, _4171), 0.0f, 1.0f)) * clamp(mad(-6.599999904632568359375f, _871, 2.0f), 0.0f, 1.0f));
            _4204 = (_3896 * (1.0f - _4194.w)) + (_4194.xyz * TranslucentBasePass_TranslucentBasePass_PrevSceneColorPreExposureInv).xyz;
        }
        else
        {
            _4204 = _3896;
        }
        _4205 = _4204;
    }
    else
    {
        _4205 = _3896;
    }
    float3 _4340 = 0.0f.xxx;
    [branch]
    if (abs(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz, 1.0f.xxx)) > 9.9999997473787516355514526367188e-05f)
    {
        float3 _4230 = _556 - TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionOrigin.xyz;
        float _4263 = 1.0f - clamp((_871 - 0.20000000298023223876953125f) * 10.0f, 0.0f, 1.0f);
        float _4265 = (((1.0f - clamp(mad(abs(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane, float4(_556, -1.0f))), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.y), 0.0f, 1.0f)) * (clamp((TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis.w - abs(dot(_4230, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis.xyz))) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, 0.0f, 1.0f) * clamp((TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis.w - abs(dot(_4230, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis.xyz))) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, 0.0f, 1.0f))) * clamp(mad(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz, _673), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2.x, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2.y), 0.0f, 1.0f)) * _4263;
        float4 _4334 = 0.0f.xxxx;
        [branch]
        if (_4265 > 0.0f)
        {
            float3 _4270 = normalize(_556 - View_View_TranslatedWorldCameraOrigin);
            float4 _4303 = mul(float4(mul(float4(_556 + (reflect(reflect(float3(_566 ? View_View_ViewForward.x : _4270.x, _566 ? View_View_ViewForward.y : _4270.y, _566 ? View_View_ViewForward.z : _4270.z), -TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz), mul(_673, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_InverseTransposeMirrorMatrix).xyz) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.z), 1.0f), View_View_TranslatedWorldToView).xyz, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ProjectionWithExtraFOV[View_View_StereoPassIndex]);
            uint _4310 = 0u;
            if (TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_bIsStereo != 0u)
            {
                _4310 = uint(View_View_StereoPassIndex);
            }
            else
            {
                _4310 = 0u;
            }
            float4 _4327 = TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionTexture.SampleLevel(View_SharedTrilinearClampedSampler, mad(clamp(_4303.xy / _4303.w.xx, -TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[_4310].xy, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[_4310].zw), 0.0f);
            float3 _4331 = _4327.xyz * _4263;
            float4 _4332 = float4(_4331.x, _4331.y, _4331.z, 0.0f.xxxx.w);
            _4332.w = _4265 * _4327.w;
            _4334 = _4332;
        }
        else
        {
            _4334 = 0.0f.xxxx;
        }
        _4340 = _4334.xyz + (_4205 * (1.0f - _4334.w));
    }
    else
    {
        _4340 = _4205;
    }
    float4 _4342 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _871) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _4343 = _4342.x;
    float2 _4352 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_4343 * _4343, exp2((-9.27999973297119140625f) * clamp(dot(_673, _579), 0.0f, 1.0f))), _4343, _4342.y)) + _4342.zw;
    bool _4379 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _4462 = 0.0f.xxxx;
    if (_4379)
    {
        float4 _4385 = float4(_103, 1.0f);
        precise float4 _126 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _127 = _4385 + _126;
        precise float4 _128 = _127 - _4385;
        precise float4 _129 = _127 - _128;
        precise float4 _130 = _4385 - _129;
        precise float4 _131 = _126 - _128;
        precise float4 _132 = _130 + _131;
        float4 _4396 = mul(_127 + (float4(_106, 0.0f) + _132), View_View_RelativeWorldToClip);
        float _4397 = _4396.w;
        float4 _4461 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _4461 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _4443 = 0.0f.xxxx;
            float _4444 = 0.0f;
            if (_4379)
            {
                float4 _4439 = TranslucentBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_4396.xy / _4397.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_4397, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _4441 = _4439.xyz * View_View_OneOverPreExposure;
                _4443 = float4(_4441.x, _4441.y, _4441.z, _4439.w);
                _4444 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _4443 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _4444 = 0.0f;
            }
            float4 _4449 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _4443, clamp((_559 - _4444) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _4452 = _4449.w;
            _4461 = float4(_4449.xyz + (in_var_TEXCOORD7.xyz * _4452), _4452 * in_var_TEXCOORD7.w);
            break;
        } while(false);
        _4462 = _4461;
    }
    else
    {
        _4462 = in_var_TEXCOORD7;
    }
    float3 _4469 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[1].xyz, Material_Material_PreshaderBuffer[0].w.xxx), 0.0f.xxx);
    float _4543 = 0.0f;
    float3 _4544 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _133 = Scene_GPUScene_GPUScenePrimitiveSceneData[_580 + 18u].xyz * 2097152.0f;
        precise float3 _134 = _133 + Scene_GPUScene_GPUScenePrimitiveSceneData[_580 + 19u].xyz;
        precise float3 _135 = _134 - _133;
        precise float3 _136 = Scene_GPUScene_GPUScenePrimitiveSceneData[_580 + 19u].xyz - _135;
        uint _4495 = _580 + 32u;
        precise float3 _137 = _103 - _134;
        precise float3 _138 = _106 - _136;
        precise float3 _139 = _137 + _138;
        float3 _4500 = abs(_139);
        float3 _4501 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_580 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_580 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_580 + 27u].w) + 1.0f.xxx;
        float _4541 = 0.0f;
        float3 _4542 = 0.0f.xxx;
        if (any(bool3(_4500.x > _4501.x, _4500.y > _4501.y, _4500.z > _4501.z)))
        {
            float3 _4537 = frac(dot(frac(frac(_103 * 1.52587890625e-05f.xxx) + frac(_106 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _4541 = 1.0f;
            _4542 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_4537.x > 0.5f.xxx.x, _4537.y > 0.5f.xxx.y, _4537.z > 0.5f.xxx.z)));
        }
        else
        {
            float _4526 = 0.0f;
            float3 _4527 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_4495].x > 0.0f)
            {
                float3 _4511 = abs(_556 - in_var_TEXCOORD9);
                float _4521 = 1.0f - clamp(abs(max(_4511.x, max(_4511.y, _4511.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_4495].x) * 20.0f, 0.0f, 1.0f);
                _4526 = float(int(sign(_4521)));
                _4527 = float3(1.0f, 0.0f, 1.0f) * _4521;
            }
            else
            {
                _4526 = 1.0f;
                _4527 = _4469;
            }
            _4541 = _4526;
            _4542 = _4527;
        }
        _4543 = _4541;
        _4544 = _4542;
    }
    else
    {
        _4543 = 1.0f;
        _4544 = _4469;
    }
    float4 _4554 = float4(((mad(_1126 * _918, max(_1135, ((((((_865 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _875) + ((_865 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _875) + ((_865 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _875), lerp(mad((_4340 * ((_920 * _4352.x) + (clamp(50.0f * _920.y, 0.0f, 1.0f) * _4352.y).xxx)) * 1.0f, max(_1135, ((((((_920 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _875) + ((_920 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _875) + ((_920 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _875), float4(_2496.x ? 0.0f.xxxx.x : _2032.x, _2496.y ? 0.0f.xxxx.y : _2032.y, _2496.z ? 0.0f.xxxx.z : _2032.z, _2496.w ? 0.0f.xxxx.w : _2032.w).xyz + float4(_2496.x ? 0.0f.xxxx.x : _2035.x, _2496.y ? 0.0f.xxxx.y : _2035.y, _2496.z ? 0.0f.xxxx.z : _2035.z, _2496.w ? 0.0f.xxxx.w : _2035.w).xyz), _918 + (_920 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _4544) * _4462.w) + _4462.xyz, _4543);
    float3 _4563 = min((_4554.xyz * View_View_PreExposure).xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_4563.x, _4563.y, _4563.z, _4554.w);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    gl_FrontFacing = stage_input.gl_FrontFacing;
    in_var_TEXCOORD10_centroid = stage_input.in_var_TEXCOORD10_centroid;
    in_var_TEXCOORD11_centroid = stage_input.in_var_TEXCOORD11_centroid;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD4 = stage_input.in_var_TEXCOORD4;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_LIGHTMAP_ID = stage_input.in_var_LIGHTMAP_ID;
    in_var_TEXCOORD7 = stage_input.in_var_TEXCOORD7;
    in_var_TEXCOORD9 = stage_input.in_var_TEXCOORD9;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
