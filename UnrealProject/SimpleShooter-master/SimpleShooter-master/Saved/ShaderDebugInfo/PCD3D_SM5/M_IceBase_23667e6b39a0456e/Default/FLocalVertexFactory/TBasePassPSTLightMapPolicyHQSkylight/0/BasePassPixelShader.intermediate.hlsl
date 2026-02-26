#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static uint _374 = 0u;
static float4 _413 = 0.0f.xxxx;
static bool4 _414 = bool4(false, false, false, false);
static float _416 = 0.0f;
static float4 _417 = 0.0f.xxxx;
static float2 _418 = 0.0f.xx;

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
    float _469 = 1.0f / gl_FragCoord.w;
    float3x3 _535 = float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz);
    float2 _538 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _545 = float4(mad(_538, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _416, 1.0f) * _469;
    float4 _550 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _554 = _550.xyz / _550.w.xxx;
    float3 _555 = _554 - View_View_RelativePreViewTranslationTO;
    precise float3 _102 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _555);
    precise float3 _105 = _555 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _102);
    float _557 = _545.w;
    float2 _562 = mad(_545.xy / _557.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    bool _564 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _565 = -View_View_ViewForward;
    float3 _567 = normalize(-_554);
    float3 _577 = float3(_564 ? _565.x : _567.x, _564 ? _565.y : _567.y, _564 ? _565.z : _567.z);
    uint _578 = in_var_PRIMITIVE_ID * 44u;
    float4 _595 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _596 = _595.x;
    float2 _602 = mul(_535, _577).xy;
    float2 _604 = mad(_602, mad(0.0500000007450580596923828125f, _596 * Material_Material_PreshaderBuffer[0].x, -0.02500000037252902984619140625f).xx, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y));
    float2 _610 = mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _604, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _621 = float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[0].y.xx;
    float2 _624 = Material_Material_PreshaderBuffer[0].z.xx;
    float2 _631 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _621 * _624, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _644 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, (_621 * 1.618000030517578125f.xx) * _624, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _671 = normalize(mul(normalize((lerp(float4(_610, sqrt(clamp(1.0f - dot(_610, _610), 0.0f, 1.0f)), 1.0f).xyz, (float4(_631, sqrt(clamp(1.0f - dot(_631, _631), 0.0f, 1.0f)), 1.0f).xyz + float4(_644, sqrt(clamp(1.0f - dot(_644, _644), 0.0f, 1.0f)), 1.0f).xyz) * float3(1.0f, 1.0f, 0.5f), Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias).x.xxx) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), _535)) * ((View_View_CullingSign * (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_578].x) & 64u) != 0u) ? (-1.0f) : 1.0f)) * float(gl_FrontFacing ? 1 : (-1)));
    float3 _699 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _604, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[2].w.xxx;
    float _702 = _699.x;
    float _706 = _699.y;
    float _710 = _699.z;
    float3 _714 = float3((_702 <= 2.9802329493122670101001858711243e-08f) ? 0.0f : pow(_702, Material_Material_PreshaderBuffer[3].x), (_706 <= 2.9802329493122670101001858711243e-08f) ? 0.0f : pow(_706, Material_Material_PreshaderBuffer[3].x), (_710 <= 2.9802329493122670101001858711243e-08f) ? 0.0f : pow(_710, Material_Material_PreshaderBuffer[3].x));
    float2 _764 = float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[7].w.xx;
    float2 _770 = mad(_602, mad(0.0500000007450580596923828125f, _596 * Material_Material_PreshaderBuffer[8].x, -0.02500000037252902984619140625f).xx, _764);
    float3 _787 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _770, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[9].w.xxx;
    float _790 = _787.x;
    float _794 = _787.y;
    float _798 = _787.z;
    float3 _802 = float3((_790 <= 2.9802329493122670101001858711243e-08f) ? 0.0f : pow(_790, Material_Material_PreshaderBuffer[10].x), (_794 <= 2.9802329493122670101001858711243e-08f) ? 0.0f : pow(_794, Material_Material_PreshaderBuffer[10].x), (_798 <= 2.9802329493122670101001858711243e-08f) ? 0.0f : pow(_798, Material_Material_PreshaderBuffer[10].x));
    float3 _863 = clamp(lerp(mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _604, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[1].w.xxx, Material_Material_PreshaderBuffer[2].xyz, lerp(_714, dot(_714, float3(0.2126390039920806884765625f, 0.715168654918670654296875f, 0.072192318737506866455078125f)).xxx, Material_Material_PreshaderBuffer[3].y.xxx) * Material_Material_PreshaderBuffer[4].xyz) + mad(Material_Material_PreshaderBuffer[5].yzw, (Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(_602, mad(0.0500000007450580596923828125f, Material_Material_PreshaderBuffer[4].w, -0.02500000037252902984619140625f).xx, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y)), View_View_MaterialTextureMipBias).y * Material_Material_PreshaderBuffer[5].x).xxx, Material_Material_PreshaderBuffer[7].xyz * (Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(_602, mad(0.0500000007450580596923828125f, Material_Material_PreshaderBuffer[6].x, -0.02500000037252902984619140625f).xx, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y)), View_View_MaterialTextureMipBias).x * Material_Material_PreshaderBuffer[6].y).xxx), mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _770, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].y.xxx, Material_Material_PreshaderBuffer[9].xyz, lerp(_802, dot(_802, float3(0.2126390039920806884765625f, 0.715168654918670654296875f, 0.072192318737506866455078125f)).xxx, Material_Material_PreshaderBuffer[10].y.xxx) * Material_Material_PreshaderBuffer[11].xyz) + mad(Material_Material_PreshaderBuffer[12].yzw, (Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(_602, mad(0.0500000007450580596923828125f, Material_Material_PreshaderBuffer[11].w, -0.02500000037252902984619140625f).xx, _764), View_View_MaterialTextureMipBias).y * Material_Material_PreshaderBuffer[12].x).xxx, Material_Material_PreshaderBuffer[14].xyz * (Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(_602, mad(0.0500000007450580596923828125f, Material_Material_PreshaderBuffer[13].x, -0.02500000037252902984619140625f).xx, _764), View_View_MaterialTextureMipBias).x * Material_Material_PreshaderBuffer[13].y).xxx), (length(((View_View_ViewTilePosition - View_View_ViewTilePosition) * 2097152.0f) + (_555 - View_View_RelativeWorldCameraOriginTO)) * Material_Material_PreshaderBuffer[14].w).xxx), 0.0f.xxx, 1.0f.xxx);
    float _864 = clamp(Material_Material_PreshaderBuffer[15].x, 0.0f, 1.0f);
    float _869 = mad(clamp(Material_Material_PreshaderBuffer[15].z, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _873 = clamp(View_View_AmbientOcclusionOverrideParameter.y + View_View_AmbientOcclusionOverrideParameter.x, 0.0f, 1.0f);
    float3 _886 = ((_863 - (_863 * _864)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _893 = (lerp((0.07999999821186065673828125f * clamp(Material_Material_PreshaderBuffer[15].y, 0.0f, 1.0f)).xxx, _863, _864.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _894 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _899 = 0.0f.xxx;
    if (_894)
    {
        _899 = _886 + (_893 * 0.449999988079071044921875f);
    }
    else
    {
        _899 = _886;
    }
    bool3 _900 = _894.xxx;
    float3 _901 = float3(_900.x ? 0.0f.xxx.x : _893.x, _900.y ? 0.0f.xxx.y : _893.y, _900.z ? 0.0f.xxx.z : _893.z);
    float4 _908 = LightmapResourceCluster_LightMapTexture.Sample(LightmapResourceCluster_LightMapSampler, in_var_TEXCOORD4.xy * float2(1.0f, 0.5f));
    float4 _910 = LightmapResourceCluster_LightMapTexture.Sample(LightmapResourceCluster_LightMapSampler, mad(in_var_TEXCOORD4.xy, float2(1.0f, 0.5f), float2(0.0f, 0.5f)));
    uint _915 = in_var_LIGHTMAP_ID * 15u;
    uint _916 = _915 + 4u;
    uint _920 = _915 + 6u;
    float3 _925 = _908.xyz;
    float _941 = _671.y;
    float3 _1108 = 0.0f.xxx;
    if (TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z > 0)
    {
        float4 _1034 = float4(_102, 1.0f);
        precise float4 _106 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _107 = _1034 + _106;
        precise float4 _108 = _107 - _1034;
        precise float4 _109 = _107 - _108;
        precise float4 _110 = _1034 - _109;
        precise float4 _111 = _106 - _108;
        precise float4 _112 = _110 + _111;
        float4 _1045 = mul(_107 + (float4(_105, 0.0f) + _112), View_View_RelativeWorldToClip);
        float _1046 = _1045.w;
        float3 _1065 = float3(mad((_1045.xy / _1046.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_1046, TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.x, TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.y)) * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.z) / float(TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z));
        float4 _1069 = TranslucentBasePass_TranslucencyGIVolumeHistory0.SampleLevel(View_SharedBilinearClampedSampler, _1065, 0.0f);
        float3 _1070 = _1069.xyz;
        float3 _1074 = TranslucentBasePass_TranslucencyGIVolumeHistory1.SampleLevel(View_SharedBilinearClampedSampler, _1065, 0.0f).xyz;
        float4 _1076 = 0.0f.xxxx;
        _1076.x = _1069.x;
        float4 _1078 = 0.0f.xxxx;
        _1078.x = _1069.y;
        float4 _1080 = 0.0f.xxxx;
        _1080.x = _1069.z;
        float3 _1084 = _1070 / (dot(_1070, float3(0.2126390039920806884765625f, 0.715168654918670654296875f, 0.072192318737506866455078125f)) + 9.9999997473787516355514526367188e-06f).xxx;
        float3 _1086 = _1074 * _1084.x;
        float3 _1089 = _1074 * _1084.y;
        float3 _1092 = _1074 * _1084.z;
        float4 _1097 = float4(0.2820949852466583251953125f, (-0.48860299587249755859375f) * _941, 0.48860299587249755859375f * _671.z, (-0.48860299587249755859375f) * _671.x);
        _1097.x = 0.886227548122406005859375f;
        float3 _1100 = _1097.yzw * 2.094395160675048828125f;
        float4 _1101 = float4(_1097.x, _1100.x, _1100.y, _1100.z);
        _1108 = max(0.0f.xxx, float3(dot(float4(_1076.x, _1086.x, _1086.y, _1086.z), _1101), dot(float4(_1078.x, _1089.x, _1089.y, _1089.z), _1101), dot(float4(_1080.x, _1092.x, _1092.y, _1092.z), _1101))) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        float3 _1030 = 0.0f.xxx;
        if (TranslucentBasePass_TranslucentBasePass_Shared_UseBasePassSkylight > 0u)
        {
            float _986 = 0.0f;
            float _987 = 0.0f;
            float3 _988 = 0.0f.xxx;
            [branch]
            if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
            {
                float4 _969 = LightmapResourceCluster_SkyOcclusionTexture.Sample(LightmapResourceCluster_LightMapSampler, in_var_TEXCOORD4.xy);
                float _973 = _969.w;
                float3 _976 = normalize(((_969.xyz * 2.0f) - 1.0f.xxx).xyz);
                float _980 = mad(mad(_973, _973, -1.0f), mad(-_973, _973, 1.0f), 1.0f);
                _986 = lerp(clamp(dot(_976, _671), 0.0f, 1.0f), 1.0f, _980);
                _987 = _973 * _973;
                _988 = lerp(_976, _671, _980.xxx);
            }
            else
            {
                _986 = 1.0f;
                _987 = 1.0f;
                _988 = _671;
            }
            float4 _992 = float4(_988, 1.0f);
            float4 _1005 = _992.xyzz * _992.yzzx;
            _1030 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _992), dot(View_SkyIrradianceEnvironmentMap[1u], _992), dot(View_SkyIrradianceEnvironmentMap[2u], _992)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _1005), dot(View_SkyIrradianceEnvironmentMap[4u], _1005), dot(View_SkyIrradianceEnvironmentMap[5u], _1005))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_988.x, _988.x, -(_988.y * _988.y)))) * View_View_SkyLightColor.xyz) * (_987 * _986);
        }
        else
        {
            _1030 = 0.0f.xxx;
        }
        _1108 = _1030;
    }
    float3 _1109 = mad(mad(_925 * _925, Scene_GPUScene_GPUSceneLightmapData[_916].xyz, Scene_GPUScene_GPUSceneLightmapData[_920].xyz) * ((exp2(mad(_908.w + mad(_910.w, 0.0039215688593685626983642578125f, -0.00196078442968428134918212890625f), Scene_GPUScene_GPUSceneLightmapData[_916].w, Scene_GPUScene_GPUSceneLightmapData[_920].w)) - 0.0185813605785369873046875f) * max(0.0f, dot(mad(_910, Scene_GPUScene_GPUSceneLightmapData[_915 + 5u], Scene_GPUScene_GPUSceneLightmapData[_915 + 7u]), float4(_941, _671.zx, 1.0f)))), View_View_PrecomputedIndirectLightingColorScale, _1108);
    float3 _1118 = _873.xxx;
    uint2 _1150 = uint2(_538 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    uint _1160 = (((min(uint(max(0.0f, log2(mad(_469, TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.x, TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.y)) * TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.z)), uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.y)) + _1150.y) * uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.x)) + _1150.x;
    uint _1163 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_578].x);
    uint _1176 = (uint((_1163 & 2048u) != 0u) | (uint((_1163 & 4096u) != 0u) << 1u)) | (uint((_1163 & 8192u) != 0u) << 2u);
    float4 _1997 = 0.0f.xxxx;
    float4 _1998 = 0.0f.xxxx;
    float4 _1999 = 0.0f.xxxx;
    [branch]
    if ((TranslucentBasePass_TranslucentBasePass_Shared_Forward_HasDirectionalLight != 0u) && (TranslucentBasePass_TranslucentBasePass_Shared_Forward_bAffectsTranslucentLighting > 0u))
    {
        float4 _1211 = float4(_416, float((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSceneInfoExtraDataPacked & 2u) >> 1u), float((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSceneInfoExtraDataPacked & 4u) >> 2u), float((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSceneInfoExtraDataPacked & 8u) >> 3u));
        _1211.x = 1.0f;
        float _1254 = 0.0f;
        [branch]
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightUseStaticShadowing > 0u)
        {
            float4 _1226 = mul(float4(_554, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToStaticShadow);
            float2 _1230 = _1226.xy / _1226.w.xx;
            bool2 _1231 = bool2(_1230.x >= 0.0f.xx.x, _1230.y >= 0.0f.xx.y);
            bool2 _1232 = bool2(_1230.x <= 1.0f.xx.x, _1230.y <= 1.0f.xx.y);
            float _1253 = 0.0f;
            if (all(bool2(_1231.x && _1232.x, _1231.y && _1232.y)))
            {
                float4 _1246 = TranslucentBasePass_Shared_Forward_DirectionalLightStaticShadowmap.SampleLevel(TranslucentBasePass_Shared_Forward_StaticShadowmapSampler, _1230, 0.0f);
                float _1247 = _1246.x;
                _1253 = float((_1226.z < _1247) || (_1247 > 0.9900000095367431640625f));
            }
            else
            {
                _1253 = 1.0f;
            }
            _1254 = _1253;
        }
        else
        {
            _1254 = 1.0f;
        }
        float4 _1255 = 0.0f.xxxx;
        _1255.x = _1254;
        float _1334 = 0.0f;
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _1263 = _557.xxxx;
            float4 _1265 = float4(bool4(_1263.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.x, _1263.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.y, _1263.z >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.z, _1263.w >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _1273 = uint(((_1265.x + _1265.y) + _1265.z) + _1265.w);
            float _1333 = 0.0f;
            if (_1273 < TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _1283 = mul(float4(_554, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_1273]);
                float2 _1287 = _1283.xy / _1283.w.xx;
                bool2 _1291 = bool2(_1287.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_1273].xy.x, _1287.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_1273].xy.y);
                bool2 _1293 = bool2(_1287.x <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_1273].zw.x, _1287.y <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_1273].zw.y);
                float _1332 = 0.0f;
                if (all(bool2(_1291.x && _1293.x, _1291.y && _1293.y)))
                {
                    float2 _1311 = mad(_1287, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy, (-0.5f).xx);
                    float2 _1312 = frac(_1311);
                    float4 _1323 = clamp((TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(TranslucentBasePass_Shared_Forward_ShadowmapSampler, (floor(_1311) + 1.0f.xx) * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - mad(1.0f - _1283.z, 4000.0f, -1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _1327 = lerp(_1323.wx, _1323.zy, _1312.xx);
                    _1332 = lerp(_1327.x, _1327.y, _1312.y);
                }
                else
                {
                    _1332 = 1.0f;
                }
                _1333 = _1332;
            }
            else
            {
                _1333 = 1.0f;
            }
            _1334 = _1333;
        }
        else
        {
            _1334 = 1.0f;
        }
        float _1753 = 0.0f;
        [branch]
        if (true && (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM != (-1)))
        {
            uint _1343 = uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM) * 288u;
            uint _1345 = (_1343 + 208u) >> 2u;
            uint _1357 = (_1343 + 224u) >> 2u;
            uint _1374 = (_1343 + 240u) >> 2u;
            uint _1386 = (_1343 + 264u) >> 2u;
            int _1399 = 0;
            int _1400 = 0;
            if (int(VirtualShadowMap_ProjectionData.Load(_1386 * 4 + 0)) != (-1))
            {
                _1399 = int(VirtualShadowMap_ProjectionData.Load(_1386 * 4 + 0) >> 16u) - 1024;
                _1400 = int(VirtualShadowMap_ProjectionData.Load(_1386 * 4 + 0) & 65535u);
            }
            else
            {
                _1399 = 1024;
                _1400 = -1;
            }
            precise float3 _113 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1345 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1345 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1345 + 2u) * 4 + 0))) - View_View_PreViewTranslationHigh;
            precise float3 _114 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1357 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1357 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1357 + 2u) * 4 + 0))) - View_View_PreViewTranslationLow;
            precise float3 _115 = _113 + _114;
            int _1409 = max(0, (int(floor(log2(length(_554 + (asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1374 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1374 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1374 + 2u) * 4 + 0))) + _115))) + asfloat(VirtualShadowMap_ProjectionData.Load(((_1343 + 236u) >> 2u) * 4 + 0)))) - _1399));
            float _1751 = 0.0f;
            if (_1409 < _1400)
            {
                int _1413 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM + _1409;
                uint _1414 = uint(_1413);
                uint _1415 = _1414 * 288u;
                uint _1417 = (_1415 + 32u) >> 2u;
                uint _1432 = (_1415 + 48u) >> 2u;
                uint _1441 = (_1415 + 64u) >> 2u;
                uint _1456 = (_1415 + 80u) >> 2u;
                uint _1471 = (_1415 + 96u) >> 2u;
                uint _1486 = (_1415 + 112u) >> 2u;
                uint _1502 = (_1415 + 208u) >> 2u;
                uint _1514 = (_1415 + 224u) >> 2u;
                precise float3 _116 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1502 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1502 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1502 + 2u) * 4 + 0))) - View_View_PreViewTranslationHigh;
                precise float3 _117 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1514 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1514 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1514 + 2u) * 4 + 0))) - View_View_PreViewTranslationLow;
                precise float3 _118 = _116 + _117;
                float4 _1530 = mul(float4(_554 + _118, 1.0f), float4x4(asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1441 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1441 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1441 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1441 + 3u) * 4 + 0))), asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1456 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1456 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1456 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1456 + 3u) * 4 + 0))), asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1471 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1471 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1471 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1471 + 3u) * 4 + 0))), asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1486 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1486 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1486 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1486 + 3u) * 4 + 0)))));
                float2 _1531 = _1530.xy;
                uint2 _1533 = uint2(_1531 * 128.0f);
                bool _1535 = int(_1414) < 8192;
                uint2 _1553 = uint2(0u, 0u);
                if (_1535)
                {
                    _1553 = uint2(_1414 & 127u, _1414 >> 7u);
                }
                else
                {
                    uint _1539 = _1414 + 4294959105u;
                    _1553 = uint2((_1539 & VirtualShadowMap_VirtualShadowMap_PageTableRowMask) * 128u, (_1539 >> (VirtualShadowMap_VirtualShadowMap_PageTableRowShift & 31u)) * 192u);
                }
                uint2 _1558 = uint2(0u, 0u);
                if (!_1535)
                {
                    _1558 = _1553 + _1533;
                }
                else
                {
                    _1558 = _1553;
                }
                uint4 _1560 = VirtualShadowMap_PageTable.Load(int3(_1558, 0u));
                uint _1561 = _1560.x;
                uint _1567 = (_1561 >> 20u) & 63u;
                bool _1569 = (_1561 & 2147483648u) != 0u;
                float _1741 = 0.0f;
                bool _1742 = false;
                if (_1569)
                {
                    float _1717 = 0.0f;
                    float _1718 = 0.0f;
                    uint2 _1719 = uint2(0u, 0u);
                    uint2 _1720 = uint2(0u, 0u);
                    bool _1721 = false;
                    if (_1567 > 0u)
                    {
                        uint _1582 = (_1415 + 256u) >> 2u;
                        uint _1585 = _1582 + 1u;
                        uint _1590 = uint(int(_1414 + _1567));
                        uint _1593 = ((_1590 * 288u) + 256u) >> 2u;
                        int _1605 = int(_1567);
                        uint2 _1613 = ((_1533 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1582 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1585 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1593 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1593 + 1u) * 4 + 0)))) << (_1605.xx & int2(31, 31)))) >> (_1567.xx & uint2(31u, 31u));
                        uint2 _1614 = _1613 * uint2(128u, 128u);
                        uint _1628 = uint(_1413 + _1605) * 288u;
                        uint _1630 = (_1628 + 48u) >> 2u;
                        uint _1645 = (_1628 + 256u) >> 2u;
                        float _1666 = (_1605 >= 0) ? (1.0f / float(1u << (uint(_1605) & 31u))) : float(1u << (uint(-_1605) & 31u));
                        bool _1681 = int(_1590) < 8192;
                        uint2 _1699 = uint2(0u, 0u);
                        if (_1681)
                        {
                            _1699 = uint2(_1590 & 127u, _1590 >> 7u);
                        }
                        else
                        {
                            uint _1685 = _1590 + 4294959105u;
                            _1699 = uint2((_1685 & VirtualShadowMap_VirtualShadowMap_PageTableRowMask) * 128u, (_1685 >> (VirtualShadowMap_VirtualShadowMap_PageTableRowShift & 31u)) * 192u);
                        }
                        uint2 _1704 = uint2(0u, 0u);
                        if (!_1681)
                        {
                            _1704 = _1699 + _1613;
                        }
                        else
                        {
                            _1704 = _1699;
                        }
                        uint4 _1705 = VirtualShadowMap_PageTable.Load(int3(_1704, 0u));
                        uint _1706 = _1705.x;
                        _1717 = _1666;
                        _1718 = mad(-_1666, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1432 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1432 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1432 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1432 + 3u) * 4 + 0))).z, asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1630 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1630 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1630 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1630 + 3u) * 4 + 0))).z);
                        _1719 = clamp(uint2(((_1531 * _1666) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1645 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1645 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1582 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1585 * 4 + 0)))) * _1666)) * 0.25f).xy) * 16384.0f), _1614, _1614 + uint2(127u, 127u));
                        _1720 = uint2(_1706 & 1023u, (_1706 >> 10u) & 1023u);
                        _1721 = ((_1706 & 2147483648u) != 0u) && (((_1706 >> 20u) & 63u) == 0u);
                    }
                    else
                    {
                        _1717 = 1.0f;
                        _1718 = 0.0f;
                        _1719 = uint2(_1531 * 16384.0f);
                        _1720 = uint2(_1561 & 1023u, (_1561 >> 10u) & 1023u);
                        _1721 = _1569 && (_1567 == 0u);
                    }
                    float _1739 = 0.0f;
                    if (_1721)
                    {
                        int4 _1730 = int4(uint4((_1720 * uint2(128u, 128u)) + (_1719 & uint2(127u, 127u)), 0u, 0u));
                        _1739 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int4(_1730.xyz, _1730.w)).x) - _1718) / _1717;
                    }
                    else
                    {
                        _1739 = 0.0f;
                    }
                    _1741 = _1739;
                    _1742 = _1721 ? true : false;
                }
                else
                {
                    _1741 = 0.0f;
                    _1742 = false;
                }
                float _1750 = 0.0f;
                if (_1742)
                {
                    _1750 = (mad(max(0.0f, 0.0f), asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1417 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1417 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1417 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1417 + 3u) * 4 + 0))).z, _1741) > _1530.z) ? 0.0f : 1.0f;
                }
                else
                {
                    _1750 = 1.0f;
                }
                _1751 = _1750;
            }
            else
            {
                _1751 = 1.0f;
            }
            _1753 = _1334 * _1751;
        }
        else
        {
            _1753 = _1334;
        }
        float _1760 = clamp(mad(_557, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
        float _1762 = lerp(_1753, lerp(1.0f, dot(_1255, _1211), dot(_1211, 1.0f.xxxx)), _1760 * _1760);
        float3 _1979 = 0.0f.xxx;
        float3 _1980 = 0.0f.xxx;
        [branch]
        if ((_1762 + min(_1762, 1.0f)) > 0.0f)
        {
            float _1770 = max(_869, View_View_MinRoughness);
            float _1771 = dot(TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDirection, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDirection);
            float _1774 = rsqrt(_1771);
            float3 _1775 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDirection * _1774;
            float _1776 = dot(_671, _1775);
            float _1794 = 0.0f;
            if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1783 = sqrt(clamp((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1771 + 1.0f)), 0.0f, 1.0f));
                float _1793 = 0.0f;
                if (_1776 < _1783)
                {
                    float _1789 = _1783 + max(_1776, -_1783);
                    _1793 = (_1789 * _1789) / (4.0f * _1783);
                }
                else
                {
                    _1793 = _1776;
                }
                _1794 = _1793;
            }
            else
            {
                _1794 = _1776;
            }
            float _1795 = clamp(_1794, 0.0f, 1.0f);
            float _1796 = max(_1770, View_View_MinRoughness);
            float _1801 = clamp((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius * _1774) * mad(-_1796, _1796, 1.0f), 0.0f, 1.0f);
            float _1803 = clamp(TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1774, 0.0f, 1.0f);
            float3 _1972 = 0.0f.xxx;
            float3 _1973 = 0.0f.xxx;
            [branch]
            if (_1795 > 0.0f)
            {
                float _1814 = dot(_671, _577);
                float _1815 = dot(_577, _1775);
                float _1817 = rsqrt(mad(2.0f, _1815, 2.0f));
                bool _1823 = _1801 > 0.0f;
                float _1902 = 0.0f;
                float _1903 = 0.0f;
                if (_1823)
                {
                    float _1828 = sqrt(mad(-_1801, _1801, 1.0f));
                    float _1829 = 2.0f * _1776;
                    float _1830 = -_1815;
                    float _1831 = mad(_1829, _1814, _1830);
                    float _1900 = 0.0f;
                    float _1901 = 0.0f;
                    if (_1831 >= _1828)
                    {
                        _1900 = 1.0f;
                        _1901 = abs(_1814);
                    }
                    else
                    {
                        float _1836 = -_1831;
                        float _1839 = _1801 * rsqrt(mad(_1836, _1831, 1.0f));
                        float _1840 = mad(_1836, _1776, _1814);
                        float _1844 = mad(_1836, _1815, mad(2.0f * _1814, _1814, -1.0f));
                        float _1855 = _1839 * sqrt(clamp(mad(_1829 * _1814, _1815, mad(_1830, _1815, mad(-_1814, _1814, mad(-_1776, _1776, 1.0f)))), 0.0f, 1.0f));
                        float _1857 = (_1855 * 2.0f) * _1814;
                        float _1858 = mad(_1776, _1828, _1814);
                        float _1859 = mad(_1839, _1840, _1858);
                        float _1861 = mad(_1839, _1844, mad(_1815, _1828, 1.0f));
                        float _1862 = _1855 * _1861;
                        float _1863 = _1859 * _1861;
                        float _1868 = _1863 * mad(-0.5f, _1862, (0.25f * _1857) * _1859);
                        float _1878 = mad(_1859, mad(_1858, _1861 * _1861, _1863 * mad(-0.5f, mad(_1815, _1828, _1861), -0.5f)), mad(_1862, _1862, (_1857 * _1859) * mad(_1857, _1859, _1862 * (-2.0f))));
                        float _1882 = (2.0f * _1868) / mad(_1878, _1878, _1868 * _1868);
                        float _1883 = _1882 * _1878;
                        float _1885 = mad(-_1882, _1868, 1.0f);
                        float _1891 = mad(_1815, _1828, mad(_1885, _1839 * _1844, _1883 * _1857));
                        float _1893 = rsqrt(mad(2.0f, _1891, 2.0f));
                        _1900 = clamp((mad(_1776, _1828, mad(_1885, _1839 * _1840, _1883 * _1855)) + _1814) * _1893, 0.0f, 1.0f);
                        _1901 = clamp(mad(_1893, _1891, _1893), 0.0f, 1.0f);
                    }
                    _1902 = _1900;
                    _1903 = _1901;
                }
                else
                {
                    _1902 = clamp((_1776 + _1814) * _1817, 0.0f, 1.0f);
                    _1903 = clamp(mad(_1817, _1815, _1817), 0.0f, 1.0f);
                }
                float _1906 = clamp(abs(_1814) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1908 = 1.0f.xxx * _1795;
                float3 _1970 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1970 = 0.0f.xxx;
                }
                else
                {
                    float _1915 = _1770 * _1770;
                    float _1925 = 0.0f;
                    if (_1803 > 0.0f)
                    {
                        _1925 = clamp(mad(_1915, _1915, (_1803 * _1803) / mad(_1903, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1925 = _1915 * _1915;
                    }
                    float _1939 = 0.0f;
                    if (_1823)
                    {
                        _1939 = _1925 / (_1925 + (((0.25f * _1801) * mad(3.0f, asfloat(532487669 + (asint(_1925) >> 1)), _1801)) / (_1903 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1939 = 1.0f;
                    }
                    float _1942 = mad(mad(_1902, _1925, -_1902), _1902, 1.0f);
                    float _1947 = sqrt(_1925);
                    float _1948 = 1.0f - _1947;
                    float _1954 = 1.0f - _1903;
                    float _1955 = _1954 * _1954;
                    float _1956 = _1955 * _1955;
                    _1970 = _1908 * (((clamp(50.0f * _901.y, 0.0f, 1.0f) * (_1956 * _1954)).xxx + (_901 * mad(-_1956, _1954, 1.0f))) * (((_1925 / ((3.1415927410125732421875f * _1942) * _1942)) * _1939) * (0.5f / mad(_1795, mad(_1906, _1948, _1947), _1906 * mad(_1795, _1948, _1947)))));
                }
                _1972 = ((_899 * 0.3183098733425140380859375f) * _1908) * 1.0f;
                _1973 = _1970;
            }
            else
            {
                _1972 = 0.0f.xxx;
                _1973 = 0.0f.xxx;
            }
            float3 _1976 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightColor * _1762;
            _1979 = mad(_1972 * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1976, 0.0f.xxx);
            _1980 = (_1973 * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1976;
        }
        else
        {
            _1979 = 0.0f.xxx;
            _1980 = 0.0f.xxx;
        }
        float4 _1984 = float4(_1979, 0.0f);
        float4 _1988 = float4(_1980, 0.0f);
        float4 _1995 = 0.0f.xxxx;
        float4 _1996 = 0.0f.xxxx;
        [flatten]
        if ((((TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightSceneInfoExtraDataPacked >> 8u) & 7u) & _1176) != 0u)
        {
            _1995 = float4(_1984.x, _1984.y, _1984.z, _1984.w);
            _1996 = float4(_1988.x, _1988.y, _1988.z, _1988.w);
        }
        else
        {
            _1995 = 0.0f.xxxx;
            _1996 = 0.0f.xxxx;
        }
        _1997 = _1255;
        _1998 = _1995;
        _1999 = _1996;
    }
    else
    {
        _1997 = 0.0f.xxxx;
        _1998 = 0.0f.xxxx;
        _1999 = 0.0f.xxxx;
    }
    uint _2000 = _1160 * 2u;
    uint _2010 = TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_2000 + 1u] & 1073741823u;
    uint _2013 = min(min((TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_2000] & 65535u), TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights), TranslucentBasePass_TranslucentBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _2015 = 0.0f.xxxx;
    float4 _2018 = 0.0f.xxxx;
    _2015 = _1998;
    _2018 = _1999;
    float4 _2016 = 0.0f.xxxx;
    float4 _2019 = 0.0f.xxxx;
    [loop]
    for (uint _2020 = 0u; _2020 < _2013; _2015 = _2016, _2018 = _2019, _2020++)
    {
        uint _2029 = TranslucentBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_2010 + _2020).x * 6u;
        uint _2032 = _2029 + 1u;
        uint _2035 = _2029 + 2u;
        uint _2038 = _2029 + 3u;
        uint _2041 = _2029 + 4u;
        uint _2045 = asuint(TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2035].w);
        if (((_2045 >> 28u) & 1u) == 0u)
        {
            _2016 = _2015;
            _2019 = _2018;
            continue;
        }
        uint _2056 = asuint(TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2032].y);
        uint _2072 = asuint(TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2038].z);
        float2 _2074 = spvUnpackHalf2x16(_2072 & 65535u);
        float _2075 = _2074.x;
        float2 _2078 = spvUnpackHalf2x16(asuint(TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2038].w));
        float _2079 = _2078.x;
        uint _2085 = asuint(TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2041].w);
        float4 _2109 = float4(float(_2045 & 1u), float((_2045 & 2u) >> 1u), float((_2045 & 4u) >> 2u), float((_2045 & 8u) >> 3u));
        uint _2110 = _2045 >> 4u;
        bool _2125 = TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2032].w == 0.0f;
        float3 _2127 = TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2029].xyz - _554;
        float _2128 = dot(_2127, _2127);
        float _2145 = 0.0f;
        if (_2125)
        {
            float _2140 = _2128 * (TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2029].w * TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2029].w);
            float _2143 = clamp(mad(-_2140, _2140, 1.0f), 0.0f, 1.0f);
            _2145 = _2143 * _2143;
        }
        else
        {
            float3 _2134 = _2127 * TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2029].w;
            _2145 = pow(1.0f - clamp(dot(_2134, _2134), 0.0f, 1.0f), TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2032].w);
        }
        float _2156 = 0.0f;
        if (((_2045 >> 16u) & 3u) == 2u)
        {
            float _2153 = clamp((dot(_2127 * rsqrt(_2128), TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2035].xyz) - TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2038].x) * TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2038].y, 0.0f, 1.0f);
            _2156 = _2145 * (_2153 * _2153);
        }
        else
        {
            _2156 = _2145;
        }
        float3 _2458 = 0.0f.xxx;
        float3 _2459 = 0.0f.xxx;
        [branch]
        if (_2156 > 0.0f)
        {
            float _2168 = 0.0f;
            [branch]
            if (uint(int((_2045 & 255u) != 0u)) != 0u)
            {
                _2168 = dot(float4(float(_2110 & 1u), float((_2110 & 2u) >> 1u), float((_2110 & 4u) >> 2u), float((_2110 & 8u) >> 3u)), 1.0f.xxxx) * lerp(1.0f, dot(_1997, _2109), dot(_2109, 1.0f.xxxx));
            }
            else
            {
                _2168 = 1.0f;
            }
            float3 _2456 = 0.0f.xxx;
            float3 _2457 = 0.0f.xxx;
            [branch]
            if ((_2168 + _2168) > 0.0f)
            {
                float3 _2174 = TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2041].xyz * (0.5f * _2079);
                float3 _2175 = _2127 - _2174;
                float3 _2176 = _2127 + _2174;
                float _2179 = max(_869, View_View_MinRoughness);
                bool _2180 = _2079 > 0.0f;
                float _2205 = 0.0f;
                float _2206 = 0.0f;
                float _2207 = 0.0f;
                [branch]
                if (_2180)
                {
                    float _2192 = rsqrt(dot(_2175, _2175));
                    float _2193 = rsqrt(dot(_2176, _2176));
                    float _2194 = _2192 * _2193;
                    float _2196 = dot(_2175, _2176) * _2194;
                    _2205 = _2196;
                    _2206 = 0.5f * mad(dot(_671, _2175), _2192, dot(_671, _2176) * _2193);
                    _2207 = _2194 / mad(_2192, _2193, mad(_2196, 0.5f, 0.5f));
                }
                else
                {
                    float _2184 = dot(_2175, _2175);
                    _2205 = 1.0f;
                    _2206 = dot(_671, _2175 * rsqrt(_2184));
                    _2207 = 1.0f / (_2184 + 1.0f);
                }
                float _2225 = 0.0f;
                if (_2075 > 0.0f)
                {
                    float _2214 = sqrt(clamp((_2075 * _2075) * _2207, 0.0f, 1.0f));
                    float _2224 = 0.0f;
                    if (_2206 < _2214)
                    {
                        float _2220 = _2214 + max(_2206, -_2214);
                        _2224 = (_2220 * _2220) / (4.0f * _2214);
                    }
                    else
                    {
                        _2224 = _2206;
                    }
                    _2225 = _2224;
                }
                else
                {
                    _2225 = _2206;
                }
                float _2226 = clamp(_2225, 0.0f, 1.0f);
                float3 _2244 = 0.0f.xxx;
                if (_2180)
                {
                    float3 _2231 = reflect(-_577, _671);
                    float3 _2232 = _2176 - _2175;
                    float _2233 = dot(_2231, _2232);
                    _2244 = _2175 + (_2232 * clamp(dot(_2175, (_2231 * _2233) - _2232) / mad(_2079, _2079, -(_2233 * _2233)), 0.0f, 1.0f));
                }
                else
                {
                    _2244 = _2175;
                }
                float _2246 = rsqrt(dot(_2244, _2244));
                float3 _2247 = _2244 * _2246;
                float _2248 = max(_2179, View_View_MinRoughness);
                float _2253 = clamp((_2075 * _2246) * mad(-_2248, _2248, 1.0f), 0.0f, 1.0f);
                float _2255 = clamp(spvUnpackHalf2x16(_2072 >> 16u).x * _2246, 0.0f, 1.0f);
                float3 _2449 = 0.0f.xxx;
                float3 _2450 = 0.0f.xxx;
                [branch]
                if (_2226 > 0.0f)
                {
                    float _2266 = dot(_671, _2247);
                    float _2267 = dot(_671, _577);
                    float _2268 = dot(_577, _2247);
                    float _2270 = rsqrt(mad(2.0f, _2268, 2.0f));
                    bool _2276 = _2253 > 0.0f;
                    float _2355 = 0.0f;
                    float _2356 = 0.0f;
                    if (_2276)
                    {
                        float _2281 = sqrt(mad(-_2253, _2253, 1.0f));
                        float _2282 = 2.0f * _2266;
                        float _2283 = -_2268;
                        float _2284 = mad(_2282, _2267, _2283);
                        float _2353 = 0.0f;
                        float _2354 = 0.0f;
                        if (_2284 >= _2281)
                        {
                            _2353 = 1.0f;
                            _2354 = abs(_2267);
                        }
                        else
                        {
                            float _2289 = -_2284;
                            float _2292 = _2253 * rsqrt(mad(_2289, _2284, 1.0f));
                            float _2293 = mad(_2289, _2266, _2267);
                            float _2297 = mad(_2289, _2268, mad(2.0f * _2267, _2267, -1.0f));
                            float _2308 = _2292 * sqrt(clamp(mad(_2282 * _2267, _2268, mad(_2283, _2268, mad(-_2267, _2267, mad(-_2266, _2266, 1.0f)))), 0.0f, 1.0f));
                            float _2310 = (_2308 * 2.0f) * _2267;
                            float _2311 = mad(_2266, _2281, _2267);
                            float _2312 = mad(_2292, _2293, _2311);
                            float _2314 = mad(_2292, _2297, mad(_2268, _2281, 1.0f));
                            float _2315 = _2308 * _2314;
                            float _2316 = _2312 * _2314;
                            float _2321 = _2316 * mad(-0.5f, _2315, (0.25f * _2310) * _2312);
                            float _2331 = mad(_2312, mad(_2311, _2314 * _2314, _2316 * mad(-0.5f, mad(_2268, _2281, _2314), -0.5f)), mad(_2315, _2315, (_2310 * _2312) * mad(_2310, _2312, _2315 * (-2.0f))));
                            float _2335 = (2.0f * _2321) / mad(_2331, _2331, _2321 * _2321);
                            float _2336 = _2335 * _2331;
                            float _2338 = mad(-_2335, _2321, 1.0f);
                            float _2344 = mad(_2268, _2281, mad(_2338, _2292 * _2297, _2336 * _2310));
                            float _2346 = rsqrt(mad(2.0f, _2344, 2.0f));
                            _2353 = clamp((mad(_2266, _2281, mad(_2338, _2292 * _2293, _2336 * _2308)) + _2267) * _2346, 0.0f, 1.0f);
                            _2354 = clamp(mad(_2346, _2344, _2346), 0.0f, 1.0f);
                        }
                        _2355 = _2353;
                        _2356 = _2354;
                    }
                    else
                    {
                        _2355 = clamp((_2266 + _2267) * _2270, 0.0f, 1.0f);
                        _2356 = clamp(mad(_2270, _2268, _2270), 0.0f, 1.0f);
                    }
                    float _2359 = clamp(abs(_2267) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _2362 = 1.0f.xxx * ((_2125 ? _2207 : 1.0f) * _2226);
                    float3 _2447 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_2079, _2075), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _2447 = 0.0f.xxx;
                    }
                    else
                    {
                        float _2369 = _2179 * _2179;
                        float _2379 = 0.0f;
                        if (_2255 > 0.0f)
                        {
                            _2379 = clamp(mad(_2369, _2369, (_2255 * _2255) / mad(_2356, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _2379 = _2369 * _2369;
                        }
                        float _2393 = 0.0f;
                        float _2394 = 0.0f;
                        if (_2276)
                        {
                            float _2391 = _2379 + (((0.25f * _2253) * mad(3.0f, asfloat(532487669 + (asint(_2379) >> 1)), _2253)) / (_2356 + 0.001000000047497451305389404296875f));
                            _2393 = _2379 / _2391;
                            _2394 = _2391;
                        }
                        else
                        {
                            _2393 = 1.0f;
                            _2394 = _2379;
                        }
                        float _2416 = 0.0f;
                        if (_2205 < 1.0f)
                        {
                            float _2401 = sqrt((1.00010001659393310546875f - _2205) / (1.0f + _2205));
                            _2416 = _2393 * sqrt(_2394 / max(_2394 + (((0.25f * _2401) * mad(3.0f, asfloat(532487669 + (asint(_2394) >> 1)), _2401)) / (_2356 + 0.001000000047497451305389404296875f)), 9.9999997473787516355514526367188e-06f));
                        }
                        else
                        {
                            _2416 = _2393;
                        }
                        float _2419 = mad(mad(_2355, _2379, -_2355), _2355, 1.0f);
                        float _2424 = sqrt(_2379);
                        float _2425 = 1.0f - _2424;
                        float _2431 = 1.0f - _2356;
                        float _2432 = _2431 * _2431;
                        float _2433 = _2432 * _2432;
                        _2447 = _2362 * (((clamp(50.0f * _901.y, 0.0f, 1.0f) * (_2433 * _2431)).xxx + (_901 * mad(-_2433, _2431, 1.0f))) * (((_2379 / ((3.1415927410125732421875f * _2419) * _2419)) * _2416) * (0.5f / mad(_2226, mad(_2359, _2425, _2424), _2359 * mad(_2226, _2425, _2424)))));
                    }
                    _2449 = ((_899 * 0.3183098733425140380859375f) * _2362) * 1.0f;
                    _2450 = _2447;
                }
                else
                {
                    _2449 = 0.0f.xxx;
                    _2450 = 0.0f.xxx;
                }
                float3 _2453 = ((float3(float((_2056 >> 0u) & 1023u), float((_2056 >> 10u) & 1023u), float((_2056 >> 20u) & 1023u)) * TranslucentBasePass_Shared_Forward_ForwardLightBuffer[_2032].x) * _2156) * _2168;
                _2456 = mad(_2449 * (float((_2085 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _2453, 0.0f.xxx);
                _2457 = (_2450 * (float(_2085 & 1023u) * 0.000977517105638980865478515625f)) * _2453;
            }
            else
            {
                _2456 = 0.0f.xxx;
                _2457 = 0.0f.xxx;
            }
            _2458 = _2456;
            _2459 = _2457;
        }
        else
        {
            _2458 = 0.0f.xxx;
            _2459 = 0.0f.xxx;
        }
        float4 _2474 = 0.0f.xxxx;
        float4 _2475 = 0.0f.xxxx;
        [flatten]
        if ((((_2045 >> 8u) & 7u) & _1176) != 0u)
        {
            _2474 = _2015 + float4(_2458, 0.0f);
            _2475 = _2018 + float4(_2459, 0.0f);
        }
        else
        {
            _2474 = _2015;
            _2475 = _2018;
        }
        _2016 = _2474;
        _2019 = _2475;
    }
    bool4 _2479 = (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    float3 _2488 = (_671 * (2.0f * dot(_577, _671))) - _577;
    bool _2528 = false;
    if (TranslucentBasePass_TranslucentBasePass_Enabled > 0u)
    {
        float _2518 = 0.0f;
        do
        {
            [flatten]
            if (_564)
            {
                _2518 = mad(_557, View_View_ViewToClip[2u].z, View_View_ViewToClip[3u].z);
                break;
            }
            else
            {
                _2518 = 1.0f / ((_557 + View_View_InvDeviceZToWorldZTransform.w) * View_View_InvDeviceZToWorldZTransform.z);
                break;
            }
            break; // unreachable workaround
        } while(false);
        _2528 = (float(abs(asint(TranslucentBasePass_SceneDepth.SampleLevel(View_SharedPointClampedSampler, _562, 0.0f).x) - asint(_2518))) <= TranslucentBasePass_TranslucentBasePass_RelativeDepthThreshold) ? true : false;
    }
    else
    {
        _2528 = false;
    }
    bool _2529 = _2528 && true;
    bool _2533 = !_2529;
    uint _2602 = 0u;
    bool _2603 = false;
    if ((TranslucentBasePass_TranslucentBasePass_FinalProbeResolution > 0u) && _2533)
    {
        uint _2555 = 0u;
        float _2545 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
        float3 _2547 = (View_View_ViewTilePosition * 2097152.0f) + _555;
        uint _2599 = 0u;
        do
        {
            uint _2596 = 0u;
            bool _2597 = false;
            uint _2551 = 0u;
            for (;;)
            {
                _2555 = TranslucentBasePass_TranslucentBasePass_NumRadianceProbeClipmaps;
                if (_2551 < _2555)
                {
                    float3 _2568 = ((_2547 + (View_View_PreViewTranslationHigh + View_View_PreViewTranslationLow)) - TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2551].xyz) / TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2551].w.xxx;
                    float3 _2573 = clamp((_2568 - 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_InvClipmapFadeSize, 0.0f.xxx, 1.0f.xxx);
                    float3 _2581 = clamp(((float(TranslucentBasePass_TranslucentBasePass_RadianceProbeClipmapResolution).xxx - 0.5f.xxx) - _2568) * TranslucentBasePass_TranslucentBasePass_InvClipmapFadeSize, 0.0f.xxx, 1.0f.xxx);
                    if (min(min(_2573.x, min(_2573.y, _2573.z)), min(_2581.x, min(_2581.y, _2581.z))) > _2545)
                    {
                        _2596 = _2551;
                        _2597 = true;
                        break;
                    }
                    _2551++;
                    continue;
                }
                else
                {
                    _2596 = _374;
                    _2597 = false;
                    break;
                }
            }
            if (_2597)
            {
                _2599 = _2596;
                break;
            }
            _2599 = _2555;
            break;
        } while(false);
        _2602 = _2599;
        _2603 = (_2599 < _2555) ? true : false;
    }
    else
    {
        _2602 = 0u;
        _2603 = false;
    }
    float3 _3879 = 0.0f.xxx;
    if (_2529)
    {
        _3879 = (pow(max(0.0f.xxx, (TranslucentBasePass_Radiance.Sample(View_SharedPointClampedSampler, float3(_562, 0.0f)).xyz * View_View_OneOverPreExposure) * 5.5555553436279296875f), TranslucentBasePass_TranslucentBasePass_Contrast.xxx) * 0.180000007152557373046875f) * TranslucentBasePass_TranslucentBasePass_SpecularScale;
    }
    else
    {
        float3 _3859 = 0.0f.xxx;
        if (_2603)
        {
            float3 _2891 = (View_View_ViewTilePosition * 2097152.0f) + _555;
            float3 _2892 = View_View_PreViewTranslationHigh + View_View_PreViewTranslationLow;
            float3 _2902 = (((_2891 + _2892) - TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].xyz) / TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].w.xxx) - 0.5f.xxx;
            int3 _2904 = int3(floor(_2902));
            float3 _2905 = frac(_2902);
            uint3 _2906 = uint3(_2904);
            uint _2912 = _2602 * TranslucentBasePass_TranslucentBasePass_RadianceProbeClipmapResolution;
            int4 _2917 = int4(uint4(_2906.x + _2912, _2906.yz, 0u));
            uint4 _2921 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2917.xyz, _2917.w));
            uint _2922 = _2921.x;
            float3 _2931 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].xyz + ((float3(_2906) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].w)) + TranslucentBasePass_ProbeWorldOffset[_2922].xyz) - _2892;
            float _2934 = TranslucentBasePass_TranslucentBasePass_ReprojectionRadiusScale * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_2602].x;
            float3 _2940 = _2891 - float4(_2931, _2934).xyz;
            float _2942 = dot(_2488, _2488);
            float _2943 = dot(_2488, _2940);
            float _2944 = 2.0f * _2943;
            float _2945 = -_2934;
            float _2947 = 4.0f * _2942;
            float _2950 = mad(_2944, _2944, -(_2947 * mad(_2945, _2934, dot(_2940, _2940))));
            float2 _2962 = 0.0f.xx;
            [flatten]
            if (_2950 >= 0.0f)
            {
                _2962 = ((_2943 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2950))) / (2.0f * _2942).xx;
            }
            else
            {
                _2962 = (-1.0f).xx;
            }
            float3 _2966 = (_2891 + (_2488 * _2962.y)) - _2931;
            float3 _2971 = normalize(_2966);
            float3 _2972 = abs(_2971);
            float _2975 = sqrt(1.0f - _2972.z);
            float _2976 = _2972.x;
            float _2977 = _2972.y;
            float _2981 = min(_2976, _2977) / (max(_2976, _2977) + 5.4210108624275221700372640043497e-20f);
            float _2987 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2981, 0.0419038832187652587890625f), _2981, 0.08817707002162933349609375f), _2981, -0.2473337352275848388671875f), _2981, 0.006157201714813709259033203125f), _2981, 0.63622653484344482421875f), _2981, 4.0675854506844189018011093139648e-06f);
            float _2990 = (_2976 < _2977) ? (1.0f - _2987) : _2987;
            float2 _2994 = float2(mad(-_2990, _2975, _2975), _2990 * _2975);
            bool2 _2997 = (_2971.z < 0.0f).xx;
            float2 _2999 = 1.0f.xx - _2994.yx;
            uint2 _3009 = TranslucentBasePass_TranslucentBasePass_FinalProbeResolution.xx;
            uint _3015 = TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionDivideShift & 31u;
            float _3021 = float(TranslucentBasePass_TranslucentBasePass_RadianceProbeResolution);
            float2 _3028 = float(1u << (TranslucentBasePass_TranslucentBasePass_FinalRadianceAtlasMaxMip & 31u)).xx;
            float3 _3046 = 0.0f.xxx;
            if (_2922 != 4294967295u)
            {
                _3046 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3009 * uint2(_2922 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2922 >> _3015)) + ((((asfloat(asuint(float2(_2997.x ? _2999.x : _2994.x, _2997.y ? _2999.y : _2994.y)) ^ (asuint(_2971.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3021) + _3028)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3046 = 0.0f.xxx;
            }
            uint3 _3049 = uint3(_2904 + int3(0, 0, 1));
            int4 _3055 = int4(uint4(_3049.x + _2912, _3049.yz, 0u));
            uint4 _3058 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3055.xyz, _3055.w));
            uint _3059 = _3058.x;
            float3 _3068 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].xyz + ((float3(_3049) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].w)) + TranslucentBasePass_ProbeWorldOffset[_3059].xyz) - _2892;
            float3 _3074 = _2891 - float4(_3068, _2934).xyz;
            float _3076 = dot(_2488, _3074);
            float _3077 = 2.0f * _3076;
            float _3081 = mad(_3077, _3077, -(_2947 * mad(_2945, _2934, dot(_3074, _3074))));
            float2 _3093 = 0.0f.xx;
            [flatten]
            if (_3081 >= 0.0f)
            {
                _3093 = ((_3076 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3081))) / (2.0f * _2942).xx;
            }
            else
            {
                _3093 = (-1.0f).xx;
            }
            float3 _3097 = (_2891 + (_2488 * _3093.y)) - _3068;
            float3 _3102 = normalize(_3097);
            float3 _3103 = abs(_3102);
            float _3106 = sqrt(1.0f - _3103.z);
            float _3112 = min(_3103.x, _3103.y) / (max(_3103.x, _3103.y) + 5.4210108624275221700372640043497e-20f);
            float _3118 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3112, 0.0419038832187652587890625f), _3112, 0.08817707002162933349609375f), _3112, -0.2473337352275848388671875f), _3112, 0.006157201714813709259033203125f), _3112, 0.63622653484344482421875f), _3112, 4.0675854506844189018011093139648e-06f);
            float _3121 = (_3103.x < _3103.y) ? (1.0f - _3118) : _3118;
            float2 _3125 = float2(mad(-_3121, _3106, _3106), _3121 * _3106);
            bool2 _3128 = (_3102.z < 0.0f).xx;
            float2 _3130 = 1.0f.xx - _3125.yx;
            float3 _3160 = 0.0f.xxx;
            if (_3059 != 4294967295u)
            {
                _3160 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3009 * uint2(_3059 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3059 >> _3015)) + ((((asfloat(asuint(float2(_3128.x ? _3130.x : _3125.x, _3128.y ? _3130.y : _3125.y)) ^ (asuint(_3102.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3021) + _3028)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3160 = 0.0f.xxx;
            }
            uint3 _3163 = uint3(_2904 + int3(0, 1, 0));
            int4 _3169 = int4(uint4(_3163.x + _2912, _3163.yz, 0u));
            uint4 _3172 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3169.xyz, _3169.w));
            uint _3173 = _3172.x;
            float3 _3182 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].xyz + ((float3(_3163) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].w)) + TranslucentBasePass_ProbeWorldOffset[_3173].xyz) - _2892;
            float3 _3188 = _2891 - float4(_3182, _2934).xyz;
            float _3190 = dot(_2488, _3188);
            float _3191 = 2.0f * _3190;
            float _3195 = mad(_3191, _3191, -(_2947 * mad(_2945, _2934, dot(_3188, _3188))));
            float2 _3207 = 0.0f.xx;
            [flatten]
            if (_3195 >= 0.0f)
            {
                _3207 = ((_3190 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3195))) / (2.0f * _2942).xx;
            }
            else
            {
                _3207 = (-1.0f).xx;
            }
            float3 _3211 = (_2891 + (_2488 * _3207.y)) - _3182;
            float3 _3216 = normalize(_3211);
            float3 _3217 = abs(_3216);
            float _3220 = sqrt(1.0f - _3217.z);
            float _3226 = min(_3217.x, _3217.y) / (max(_3217.x, _3217.y) + 5.4210108624275221700372640043497e-20f);
            float _3232 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3226, 0.0419038832187652587890625f), _3226, 0.08817707002162933349609375f), _3226, -0.2473337352275848388671875f), _3226, 0.006157201714813709259033203125f), _3226, 0.63622653484344482421875f), _3226, 4.0675854506844189018011093139648e-06f);
            float _3235 = (_3217.x < _3217.y) ? (1.0f - _3232) : _3232;
            float2 _3239 = float2(mad(-_3235, _3220, _3220), _3235 * _3220);
            bool2 _3242 = (_3216.z < 0.0f).xx;
            float2 _3244 = 1.0f.xx - _3239.yx;
            float3 _3274 = 0.0f.xxx;
            if (_3173 != 4294967295u)
            {
                _3274 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3009 * uint2(_3173 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3173 >> _3015)) + ((((asfloat(asuint(float2(_3242.x ? _3244.x : _3239.x, _3242.y ? _3244.y : _3239.y)) ^ (asuint(_3216.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3021) + _3028)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3274 = 0.0f.xxx;
            }
            uint3 _3277 = uint3(_2904 + int3(0, 1, 1));
            int4 _3283 = int4(uint4(_3277.x + _2912, _3277.yz, 0u));
            uint4 _3286 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3283.xyz, _3283.w));
            uint _3287 = _3286.x;
            float3 _3296 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].xyz + ((float3(_3277) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].w)) + TranslucentBasePass_ProbeWorldOffset[_3287].xyz) - _2892;
            float3 _3302 = _2891 - float4(_3296, _2934).xyz;
            float _3304 = dot(_2488, _3302);
            float _3305 = 2.0f * _3304;
            float _3309 = mad(_3305, _3305, -(_2947 * mad(_2945, _2934, dot(_3302, _3302))));
            float2 _3321 = 0.0f.xx;
            [flatten]
            if (_3309 >= 0.0f)
            {
                _3321 = ((_3304 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3309))) / (2.0f * _2942).xx;
            }
            else
            {
                _3321 = (-1.0f).xx;
            }
            float3 _3325 = (_2891 + (_2488 * _3321.y)) - _3296;
            float3 _3330 = normalize(_3325);
            float3 _3331 = abs(_3330);
            float _3334 = sqrt(1.0f - _3331.z);
            float _3340 = min(_3331.x, _3331.y) / (max(_3331.x, _3331.y) + 5.4210108624275221700372640043497e-20f);
            float _3346 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3340, 0.0419038832187652587890625f), _3340, 0.08817707002162933349609375f), _3340, -0.2473337352275848388671875f), _3340, 0.006157201714813709259033203125f), _3340, 0.63622653484344482421875f), _3340, 4.0675854506844189018011093139648e-06f);
            float _3349 = (_3331.x < _3331.y) ? (1.0f - _3346) : _3346;
            float2 _3353 = float2(mad(-_3349, _3334, _3334), _3349 * _3334);
            bool2 _3356 = (_3330.z < 0.0f).xx;
            float2 _3358 = 1.0f.xx - _3353.yx;
            float3 _3388 = 0.0f.xxx;
            if (_3287 != 4294967295u)
            {
                _3388 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3009 * uint2(_3287 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3287 >> _3015)) + ((((asfloat(asuint(float2(_3356.x ? _3358.x : _3353.x, _3356.y ? _3358.y : _3353.y)) ^ (asuint(_3330.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3021) + _3028)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3388 = 0.0f.xxx;
            }
            uint3 _3391 = uint3(_2904 + int3(1, 0, 0));
            int4 _3397 = int4(uint4(_3391.x + _2912, _3391.yz, 0u));
            uint4 _3400 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3397.xyz, _3397.w));
            uint _3401 = _3400.x;
            float3 _3410 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].xyz + ((float3(_3391) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].w)) + TranslucentBasePass_ProbeWorldOffset[_3401].xyz) - _2892;
            float3 _3416 = _2891 - float4(_3410, _2934).xyz;
            float _3418 = dot(_2488, _3416);
            float _3419 = 2.0f * _3418;
            float _3423 = mad(_3419, _3419, -(_2947 * mad(_2945, _2934, dot(_3416, _3416))));
            float2 _3435 = 0.0f.xx;
            [flatten]
            if (_3423 >= 0.0f)
            {
                _3435 = ((_3418 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3423))) / (2.0f * _2942).xx;
            }
            else
            {
                _3435 = (-1.0f).xx;
            }
            float3 _3439 = (_2891 + (_2488 * _3435.y)) - _3410;
            float3 _3444 = normalize(_3439);
            float3 _3445 = abs(_3444);
            float _3448 = sqrt(1.0f - _3445.z);
            float _3454 = min(_3445.x, _3445.y) / (max(_3445.x, _3445.y) + 5.4210108624275221700372640043497e-20f);
            float _3460 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3454, 0.0419038832187652587890625f), _3454, 0.08817707002162933349609375f), _3454, -0.2473337352275848388671875f), _3454, 0.006157201714813709259033203125f), _3454, 0.63622653484344482421875f), _3454, 4.0675854506844189018011093139648e-06f);
            float _3463 = (_3445.x < _3445.y) ? (1.0f - _3460) : _3460;
            float2 _3467 = float2(mad(-_3463, _3448, _3448), _3463 * _3448);
            bool2 _3470 = (_3444.z < 0.0f).xx;
            float2 _3472 = 1.0f.xx - _3467.yx;
            float3 _3502 = 0.0f.xxx;
            if (_3401 != 4294967295u)
            {
                _3502 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3009 * uint2(_3401 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3401 >> _3015)) + ((((asfloat(asuint(float2(_3470.x ? _3472.x : _3467.x, _3470.y ? _3472.y : _3467.y)) ^ (asuint(_3444.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3021) + _3028)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3502 = 0.0f.xxx;
            }
            uint3 _3505 = uint3(_2904 + int3(1, 0, 1));
            int4 _3511 = int4(uint4(_3505.x + _2912, _3505.yz, 0u));
            uint4 _3514 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3511.xyz, _3511.w));
            uint _3515 = _3514.x;
            float3 _3524 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].xyz + ((float3(_3505) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].w)) + TranslucentBasePass_ProbeWorldOffset[_3515].xyz) - _2892;
            float3 _3530 = _2891 - float4(_3524, _2934).xyz;
            float _3532 = dot(_2488, _3530);
            float _3533 = 2.0f * _3532;
            float _3537 = mad(_3533, _3533, -(_2947 * mad(_2945, _2934, dot(_3530, _3530))));
            float2 _3549 = 0.0f.xx;
            [flatten]
            if (_3537 >= 0.0f)
            {
                _3549 = ((_3532 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3537))) / (2.0f * _2942).xx;
            }
            else
            {
                _3549 = (-1.0f).xx;
            }
            float3 _3553 = (_2891 + (_2488 * _3549.y)) - _3524;
            float3 _3558 = normalize(_3553);
            float3 _3559 = abs(_3558);
            float _3562 = sqrt(1.0f - _3559.z);
            float _3568 = min(_3559.x, _3559.y) / (max(_3559.x, _3559.y) + 5.4210108624275221700372640043497e-20f);
            float _3574 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3568, 0.0419038832187652587890625f), _3568, 0.08817707002162933349609375f), _3568, -0.2473337352275848388671875f), _3568, 0.006157201714813709259033203125f), _3568, 0.63622653484344482421875f), _3568, 4.0675854506844189018011093139648e-06f);
            float _3577 = (_3559.x < _3559.y) ? (1.0f - _3574) : _3574;
            float2 _3581 = float2(mad(-_3577, _3562, _3562), _3577 * _3562);
            bool2 _3584 = (_3558.z < 0.0f).xx;
            float2 _3586 = 1.0f.xx - _3581.yx;
            float3 _3616 = 0.0f.xxx;
            if (_3515 != 4294967295u)
            {
                _3616 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3009 * uint2(_3515 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3515 >> _3015)) + ((((asfloat(asuint(float2(_3584.x ? _3586.x : _3581.x, _3584.y ? _3586.y : _3581.y)) ^ (asuint(_3558.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3021) + _3028)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3616 = 0.0f.xxx;
            }
            uint3 _3619 = uint3(_2904 + int3(1, 1, 0));
            int4 _3625 = int4(uint4(_3619.x + _2912, _3619.yz, 0u));
            uint4 _3628 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3625.xyz, _3625.w));
            uint _3629 = _3628.x;
            float3 _3638 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].xyz + ((float3(_3619) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].w)) + TranslucentBasePass_ProbeWorldOffset[_3629].xyz) - _2892;
            float3 _3644 = _2891 - float4(_3638, _2934).xyz;
            float _3646 = dot(_2488, _3644);
            float _3647 = 2.0f * _3646;
            float _3651 = mad(_3647, _3647, -(_2947 * mad(_2945, _2934, dot(_3644, _3644))));
            float2 _3663 = 0.0f.xx;
            [flatten]
            if (_3651 >= 0.0f)
            {
                _3663 = ((_3646 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3651))) / (2.0f * _2942).xx;
            }
            else
            {
                _3663 = (-1.0f).xx;
            }
            float3 _3667 = (_2891 + (_2488 * _3663.y)) - _3638;
            float3 _3672 = normalize(_3667);
            float3 _3673 = abs(_3672);
            float _3676 = sqrt(1.0f - _3673.z);
            float _3682 = min(_3673.x, _3673.y) / (max(_3673.x, _3673.y) + 5.4210108624275221700372640043497e-20f);
            float _3688 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3682, 0.0419038832187652587890625f), _3682, 0.08817707002162933349609375f), _3682, -0.2473337352275848388671875f), _3682, 0.006157201714813709259033203125f), _3682, 0.63622653484344482421875f), _3682, 4.0675854506844189018011093139648e-06f);
            float _3691 = (_3673.x < _3673.y) ? (1.0f - _3688) : _3688;
            float2 _3695 = float2(mad(-_3691, _3676, _3676), _3691 * _3676);
            bool2 _3698 = (_3672.z < 0.0f).xx;
            float2 _3700 = 1.0f.xx - _3695.yx;
            float3 _3730 = 0.0f.xxx;
            if (_3629 != 4294967295u)
            {
                _3730 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3009 * uint2(_3629 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3629 >> _3015)) + ((((asfloat(asuint(float2(_3698.x ? _3700.x : _3695.x, _3698.y ? _3700.y : _3695.y)) ^ (asuint(_3672.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3021) + _3028)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3730 = 0.0f.xxx;
            }
            uint3 _3733 = uint3(_2904 + int3(1, 1, 1));
            int4 _3739 = int4(uint4(_3733.x + _2912, _3733.yz, 0u));
            uint4 _3742 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_3739.xyz, _3739.w));
            uint _3743 = _3742.x;
            float3 _3752 = ((TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].xyz + ((float3(_3733) + 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_ClipmapCornerTWSAndCellSize[_2602].w)) + TranslucentBasePass_ProbeWorldOffset[_3743].xyz) - _2892;
            float3 _3758 = _2891 - float4(_3752, _2934).xyz;
            float _3760 = dot(_2488, _3758);
            float _3761 = 2.0f * _3760;
            float _3765 = mad(_3761, _3761, -(_2947 * mad(_2945, _2934, dot(_3758, _3758))));
            float2 _3777 = 0.0f.xx;
            [flatten]
            if (_3765 >= 0.0f)
            {
                _3777 = ((_3760 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_3765))) / (2.0f * _2942).xx;
            }
            else
            {
                _3777 = (-1.0f).xx;
            }
            float3 _3781 = (_2891 + (_2488 * _3777.y)) - _3752;
            float3 _3786 = normalize(_3781);
            float3 _3787 = abs(_3786);
            float _3790 = sqrt(1.0f - _3787.z);
            float _3796 = min(_3787.x, _3787.y) / (max(_3787.x, _3787.y) + 5.4210108624275221700372640043497e-20f);
            float _3802 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _3796, 0.0419038832187652587890625f), _3796, 0.08817707002162933349609375f), _3796, -0.2473337352275848388671875f), _3796, 0.006157201714813709259033203125f), _3796, 0.63622653484344482421875f), _3796, 4.0675854506844189018011093139648e-06f);
            float _3805 = (_3787.x < _3787.y) ? (1.0f - _3802) : _3802;
            float2 _3809 = float2(mad(-_3805, _3790, _3790), _3805 * _3790);
            bool2 _3812 = (_3786.z < 0.0f).xx;
            float2 _3814 = 1.0f.xx - _3809.yx;
            float3 _3844 = 0.0f.xxx;
            if (_3743 != 4294967295u)
            {
                _3844 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_3009 * uint2(_3743 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _3743 >> _3015)) + ((((asfloat(asuint(float2(_3812.x ? _3814.x : _3809.x, _3812.y ? _3814.y : _3809.y)) ^ (asuint(_3786.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _3021) + _3028)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz * TranslucentBasePass_TranslucentBasePass_RadianceCacheOneOverCachedLightingPreExposure;
            }
            else
            {
                _3844 = 0.0f.xxx;
            }
            float3 _3847 = _2905.z.xxx;
            float3 _3853 = _2905.y.xxx;
            _3859 = lerp(lerp(lerp(_3046 * ((_2962.y * _2962.y) / (_2934 * dot(_2966, _2488))), _3160 * ((_3093.y * _3093.y) / (_2934 * dot(_3097, _2488))), _3847), lerp(_3274 * ((_3207.y * _3207.y) / (_2934 * dot(_3211, _2488))), _3388 * ((_3321.y * _3321.y) / (_2934 * dot(_3325, _2488))), _3847), _3853), lerp(lerp(_3502 * ((_3435.y * _3435.y) / (_2934 * dot(_3439, _2488))), _3616 * ((_3549.y * _3549.y) / (_2934 * dot(_3553, _2488))), _3847), lerp(_3730 * ((_3663.y * _3663.y) / (_2934 * dot(_3667, _2488))), _3844 * ((_3777.y * _3777.y) / (_2934 * dot(_3781, _2488))), _3847), _3853), _2905.x.xxx);
        }
        else
        {
            uint _2613 = (TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumGridCells + _1160) * 2u;
            uint _2618 = min(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_2613], TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumReflectionCaptures);
            uint _2619 = _2613 + 1u;
            float _2626 = mad(-1.2000000476837158203125f, log2(max(_869, 0.001000000047497451305389404296875f)), 1.0f);
            float _2628 = (View_View_ReflectionCubemapMaxMip - 1.0f) - _2626;
            float2 _2630 = 0.0f.xx;
            float4 _2633 = 0.0f.xxxx;
            _2630 = float2(0.0f, 1.0f);
            _2633 = float4(0.0f, 0.0f, 0.0f, 1.0f);
            float2 _2631 = 0.0f.xx;
            float4 _2634 = 0.0f.xxxx;
            [loop]
            for (uint _2635 = 0u; _2635 < _2618; _2630 = _2631, _2633 = _2634, _2635++)
            {
                [branch]
                if (_2633.w < 0.001000000047497451305389404296875f)
                {
                    break;
                }
                uint4 _2646 = TranslucentBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_2619] + _2635);
                uint _2647 = _2646.x;
                precise float3 _119 = ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2647].xyz + View_View_PreViewTranslationHigh;
                precise float3 _120 = _119 - ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2647].xyz;
                precise float3 _121 = _119 - _120;
                precise float3 _122 = ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2647].xyz - _121;
                precise float3 _123 = View_View_PreViewTranslationHigh - _120;
                precise float3 _124 = _122 + _123;
                float3 _2656 = _119 + (_124 + (ReflectionCaptureSM5_ReflectionCaptureSM5_PositionLow[_2647].xyz + View_View_PreViewTranslationLow));
                float3 _2661 = _554 - _2656;
                float _2663 = sqrt(dot(_2661, _2661));
                [branch]
                if (_2663 < ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2647].w)
                {
                    float _2782 = 0.0f;
                    float3 _2783 = 0.0f.xxx;
                    [branch]
                    if (ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_2647].z > 0.0f)
                    {
                        float3 _2714 = float4(_2656, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2647].w).xyz;
                        float3 _2721 = mul(float4(_554 - _2714, 1.0f), ReflectionCaptureSM5_ReflectionCaptureSM5_BoxTransform[_2647]).xyz;
                        float3 _2727 = mul(float4(_2488, 0.0f), ReflectionCaptureSM5_ReflectionCaptureSM5_BoxTransform[_2647]).xyz;
                        float3 _2728 = 1.0f.xxx / _2727;
                        float3 _2730 = -_2721;
                        float3 _2733 = max(mad(_2730, _2728, (-1.0f).xxx / _2727), mad(_2730, _2728, _2728));
                        float3 _2747 = ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2647].xyz - (0.5f * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2647].w).xxx;
                        float3 _2748 = -_2747;
                        float3 _2749 = _2721 * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2647].xyz;
                        bool3 _2750 = bool3(_2749.x < _2748.x, _2749.y < _2748.y, _2749.z < _2748.z);
                        float3 _2752 = abs(mad(_2721, ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2647].xyz, _2747));
                        bool3 _2763 = bool3(_2749.x > _2747.x, _2749.y > _2747.y, _2749.z > _2747.z);
                        float3 _2765 = abs(mad(_2721, ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2647].xyz, _2748));
                        _2782 = 1.0f - smoothstep(0.0f, 0.699999988079071044921875f * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_2647].w, dot(float3(_2750.x ? _2752.x : 0.0f, _2750.y ? _2752.y : 0.0f, _2750.z ? _2752.z : 0.0f), 1.0f.xxx) + dot(float3(_2763.x ? _2765.x : 0.0f, _2763.y ? _2765.y : 0.0f, _2763.z ? _2765.z : 0.0f), 1.0f.xxx));
                        _2783 = (_554 + (_2488 * min(_2733.x, min(_2733.y, _2733.z)))) - (_2714 + ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[_2647].xyz);
                    }
                    else
                    {
                        float3 _2682 = _554 - float4(_2656, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2647].w).xyz;
                        float _2684 = dot(_2488, _2682);
                        float _2688 = mad(_2684, _2684, -mad(-ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2647].w, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2647].w, dot(_2682, _2682)));
                        float _2703 = 0.0f;
                        float3 _2704 = 0.0f.xxx;
                        [flatten]
                        if (_2688 >= 0.0f)
                        {
                            float _2698 = clamp(mad(2.5f, clamp(_2663 / ReflectionCaptureSM5_ReflectionCaptureSM5_PositionHighAndRadius[_2647].w, 0.0f, 1.0f), -1.5f), 0.0f, 1.0f);
                            _2703 = mad(-(_2698 * _2698), mad(-2.0f, _2698, 3.0f), 1.0f);
                            _2704 = (_2682 + (_2488 * (sqrt(_2688) - _2684))) - ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[_2647].xyz;
                        }
                        else
                        {
                            _2703 = 0.0f;
                            _2704 = _2488;
                        }
                        _2782 = _2703;
                        _2783 = _2704;
                    }
                    float4 _2792 = TranslucentBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_2783, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_2647].y), _2628);
                    float3 _2795 = _2792.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_2647].x;
                    float4 _2797 = float4(_2795.x, _2795.y, _2795.z, _2792.w) * _2782;
                    float3 _2802 = _2633.xyz + ((_2797.xyz * _2633.w) * 1.0f);
                    float4 _2803 = float4(_2802.x, _2802.y, _2802.z, _2633.w);
                    _2803.w = _2633.w * (1.0f - _2797.w);
                    _2631 = float2(mad(ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[_2647].w * _2782, _2630.y, _2630.x), _2630.y * (1.0f - _2782));
                    _2634 = _2803;
                }
                else
                {
                    _2631 = _2630;
                    _2634 = _2633;
                }
            }
            float3 _2819 = _2633.xyz * View_View_PrecomputedIndirectSpecularColorScale;
            float4 _2820 = float4(_2819.x, _2819.y, _2819.z, _2633.w);
            float _2823 = _2630.x * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.2126390039920806884765625f, 0.715168654918670654296875f, 0.072192318737506866455078125f));
            float2 _2824 = 0.0f.xx;
            _2824.x = _2823;
            float4 _2866 = 0.0f.xxxx;
            float2 _2867 = 0.0f.xx;
            float3 _2868 = 0.0f.xxx;
            [branch]
            if ((TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
            {
                float3 _2845 = TranslucentBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_SkyLightCubemapSampler, _2488, (TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _2626).xyz * View_View_SkyLightColor.xyz;
                float4 _2863 = 0.0f.xxxx;
                float2 _2864 = 0.0f.xx;
                float3 _2865 = 0.0f.xxx;
                [flatten]
                if ((TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.z < 1.0f) && true)
                {
                    float3 _2858 = _2819.xyz + ((_2845 * _2633.w) * 1.0f);
                    float2 _2862 = 0.0f.xx;
                    _2862.x = mad(View_SkyIrradianceEnvironmentMap[7u].x * dot(View_View_SkyLightColor.xyz, float3(0.2126390039920806884765625f, 0.715168654918670654296875f, 0.072192318737506866455078125f)), _2630.y, _2823);
                    _2863 = float4(_2858.x, _2858.y, _2858.z, _2633.w);
                    _2864 = _2862;
                    _2865 = 0.0f.xxx;
                }
                else
                {
                    _2863 = _2820;
                    _2864 = _2824;
                    _2865 = _2845 * 1.0f;
                }
                _2866 = _2863;
                _2867 = _2864;
                _2868 = _2865;
            }
            else
            {
                _2866 = _2820;
                _2867 = _2824;
                _2868 = 0.0f.xxx;
            }
            _3859 = ((_2866.xyz * lerp(1.0f, min(dot(_1109, float3(0.2126390039920806884765625f, 0.715168654918670654296875f, 0.072192318737506866455078125f)) / max(_2867.x, 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp(mad(_869, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y), 0.0f, 1.0f)))).xyz + (_2868 * _2866.w)).xyz;
        }
        _3879 = _3859;
    }
    float3 _4188 = 0.0f.xxx;
    if (((View_View_CameraCut == 0.0f) && (TranslucentBasePass_TranslucentBasePass_SSRQuality > 0)) && _2533)
    {
        float _3904 = min(_557, 1000000.0f);
        float4 _3909 = mul(float4(_2488, 0.0f), View_View_TranslatedWorldToView);
        float _3910 = _3909.z;
        float _3915 = (_3910 < 0.0f) ? min(((-0.949999988079071044921875f) * _557) / _3910, _3904) : _3904;
        float4 _3924 = mul(float4(_554, 1.0f), View_View_TranslatedWorldToClip);
        float4 _3929 = mul(float4(_554 + (_2488 * _3915), 1.0f), View_View_TranslatedWorldToClip);
        float3 _3933 = _3924.xyz * (1.0f / _3924.w);
        float4 _3940 = _3924 + mul(float4(0.0f, 0.0f, _3915, 0.0f), View_View_ViewToClip);
        float3 _3944 = _3940.xyz * (1.0f / _3940.w);
        float3 _3945 = (_3929.xyz * (1.0f / _3929.w)) - _3933;
        float2 _3946 = _3933.xy;
        float2 _3947 = _3945.xy;
        float _3949 = 0.5f * length(_3947);
        float2 _3958 = 1.0f.xx - (max(abs(_3947 + (_3946 * _3949)) - _3949.xx, 0.0f.xx) / abs(_3947));
        float3 _3963 = _3945 * (min(_3958.x, _3958.y) / _3949);
        float _3979 = 0.0f;
        if (_564)
        {
            _3979 = max(0.0f, (_3933.z - _3944.z) * 4.0f);
        }
        else
        {
            _3979 = max(abs(_3963.z), (_3933.z - _3944.z) * 4.0f);
        }
        float _3994 = _3979 * 0.083333335816860198974609375f;
        float3 _3995 = float3((_3963.xy * float2(0.5f, -0.5f)) * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.xy, _3963.z) * 0.083333335816860198974609375f;
        float3 _3997 = float3(mad(_3946, float2(0.5f, -0.5f), 0.5f.xx) * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.xy, _3933.z) + (_3995 * (frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) - 0.5f));
        bool4 _3999 = bool4(false, false, false, false);
        float4 _4002 = 0.0f.xxxx;
        uint _4008 = 0u;
        float _4010 = 0.0f;
        _3999 = _414;
        _4002 = _413;
        _4008 = 0u;
        _4010 = 0.0f;
        bool4 _4000 = bool4(false, false, false, false);
        float4 _4003 = 0.0f.xxxx;
        bool _4005 = false;
        float _4007 = 0.0f;
        float _4011 = 0.0f;
        bool4 _4074 = bool4(false, false, false, false);
        float4 _4075 = 0.0f.xxxx;
        bool _4076 = false;
        bool _4004 = false;
        float _4006 = 1.0f;
        [loop]
        for (;;)
        {
            if (_4008 < 12u)
            {
                float2 _4015 = _3997.xy;
                float2 _4016 = _3995.xy;
                float _4017 = float(_4008);
                float _4018 = _4017 + 1.0f;
                float _4021 = _3997.z;
                float _4022 = _3995.z;
                float _4024 = _4017 + 2.0f;
                float _4028 = _4017 + 3.0f;
                float _4032 = _4017 + 4.0f;
                float _4037 = mad(0.666666686534881591796875f, _869, _4006);
                _4007 = mad(0.666666686534881591796875f, _869, _4037);
                float4 _4050 = float4(TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _4015 + (_4016 * _4018), _4006).x, TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _4015 + (_4016 * _4024), _4006).x, TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _4015 + (_4016 * _4028), _4037).x, TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _4015 + (_4016 * _4032), _4037).x);
                _4003 = float4(mad(_4018, _4022, _4021), mad(_4024, _4022, _4021), mad(_4028, _4022, _4021), mad(_4032, _4022, _4021)) - _4050;
                float4 _4051 = _3994.xxxx;
                float4 _4053 = abs(_4003 + _4051);
                bool4 _4054 = bool4(_4053.x < _4051.x, _4053.y < _4051.y, _4053.z < _4051.z, _4053.w < _4051.w);
                bool4 _4055 = bool4(_4050.x != 0.0f.xxxx.x, _4050.y != 0.0f.xxxx.y, _4050.z != 0.0f.xxxx.z, _4050.w != 0.0f.xxxx.w);
                bool _4058 = _4054.x && _4055.x;
                bool _4061 = _4054.y && _4055.y;
                bool _4064 = _4054.z && _4055.z;
                bool _4067 = _4054.w && _4055.w;
                _4000 = bool4(_4058, _4061, _4064, _4067);
                _4005 = (((_4004 || _4058) || _4061) || _4064) || _4067;
                [branch]
                if (_4005 || false)
                {
                    _4074 = _4000;
                    _4075 = _4003;
                    _4076 = _4005;
                    break;
                }
                _4011 = _4003.w;
                _3999 = _4000;
                _4002 = _4003;
                _4004 = _4005;
                _4006 = _4007;
                _4008 += 4u;
                _4010 = _4011;
                continue;
            }
            else
            {
                _4074 = _3999;
                _4075 = _4002;
                _4076 = _4004;
                break;
            }
        }
        float3 _4115 = 0.0f.xxx;
        [branch]
        if (_4076)
        {
            float _4089 = 0.0f;
            [flatten]
            if (_4074.z)
            {
                _4089 = _4075.y;
            }
            else
            {
                _4089 = _4075.z;
            }
            float _4097 = 0.0f;
            float _4098 = 0.0f;
            [flatten]
            if (_4074.y)
            {
                _4097 = _4075.y;
                _4098 = _4075.x;
            }
            else
            {
                _4097 = _4074.z ? _4075.z : _4075.w;
                _4098 = _4089;
            }
            float _4104 = 0.0f;
            [flatten]
            if (_4074.x)
            {
                _4104 = _4075.x;
            }
            else
            {
                _4104 = _4097;
            }
            float _4105 = _4074.x ? _4010 : _4098;
            _4115 = _3997 + (_3995 * (((_4074.x ? 0.0f : (_4074.y ? 1.0f : (_4074.z ? 2.0f : 3.0f))) + float(_4008)) + clamp(_4105 / (_4105 - _4104), 0.0f, 1.0f)));
        }
        else
        {
            _4115 = _3997 + (_3995 * float(_4008));
        }
        float3 _4187 = 0.0f.xxx;
        [branch]
        if (_4076)
        {
            float2 _4129 = (mad(mad((_4115.xy * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.zw).xy, float2(2.0f, -2.0f), float2(-1.0f, 1.0f)).xy, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz).xy - View_View_ScreenPositionScaleBias.wz) / View_View_ScreenPositionScaleBias.xy;
            float4 _4136 = mul(float4(_4129, _4115.z, 1.0f), View_View_ClipToPrevClip);
            float2 _4140 = _4136.xy / _4136.w.xx;
            float2 _4147 = clamp((abs(_4129) * 5.0f) - 4.0f.xx, 0.0f.xx, 1.0f.xx);
            float2 _4154 = clamp((abs(_4140) * 5.0f) - 4.0f.xx, 0.0f.xx, 1.0f.xx);
            float3 _4171 = -min(-TranslucentBasePass_PrevSceneColor.SampleLevel(TranslucentBasePass_PrevSceneColorSampler, clamp(mad(_4140, TranslucentBasePass_TranslucentBasePass_PrevScreenPositionScaleBias.xy, TranslucentBasePass_TranslucentBasePass_PrevScreenPositionScaleBias.zw), TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMin, TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMax), 0.0f).xyz, 0.0f.xxx);
            float4 _4172 = float4(_4171.x, _4171.y, _4171.z, _413.w);
            _4172.w = 1.0f;
            float4 _4177 = _4172 * (min(clamp(1.0f - dot(_4147, _4147), 0.0f, 1.0f), clamp(1.0f - dot(_4154, _4154), 0.0f, 1.0f)) * clamp(mad(-6.599999904632568359375f, _869, 2.0f), 0.0f, 1.0f));
            _4187 = (_3879 * (1.0f - _4177.w)) + (_4177.xyz * TranslucentBasePass_TranslucentBasePass_PrevSceneColorPreExposureInv).xyz;
        }
        else
        {
            _4187 = _3879;
        }
        _4188 = _4187;
    }
    else
    {
        _4188 = _3879;
    }
    float3 _4323 = 0.0f.xxx;
    [branch]
    if (abs(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz, 1.0f.xxx)) > 9.9999997473787516355514526367188e-05f)
    {
        float3 _4213 = _554 - TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionOrigin.xyz;
        float _4246 = 1.0f - clamp((_869 - 0.20000000298023223876953125f) * 10.0f, 0.0f, 1.0f);
        float _4248 = (((1.0f - clamp(mad(abs(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane, float4(_554, -1.0f))), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.y), 0.0f, 1.0f)) * (clamp((TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis.w - abs(dot(_4213, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis.xyz))) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, 0.0f, 1.0f) * clamp((TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis.w - abs(dot(_4213, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis.xyz))) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, 0.0f, 1.0f))) * clamp(mad(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz, _671), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2.x, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2.y), 0.0f, 1.0f)) * _4246;
        float4 _4317 = 0.0f.xxxx;
        [branch]
        if (_4248 > 0.0f)
        {
            float3 _4253 = normalize(_554 - View_View_TranslatedWorldCameraOrigin);
            float4 _4286 = mul(float4(mul(float4(_554 + (reflect(reflect(float3(_564 ? View_View_ViewForward.x : _4253.x, _564 ? View_View_ViewForward.y : _4253.y, _564 ? View_View_ViewForward.z : _4253.z), -TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz), mul(_671, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_InverseTransposeMirrorMatrix).xyz) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.z), 1.0f), View_View_TranslatedWorldToView).xyz, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ProjectionWithExtraFOV[View_View_StereoPassIndex]);
            uint _4293 = 0u;
            if (TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_bIsStereo != 0u)
            {
                _4293 = uint(View_View_StereoPassIndex);
            }
            else
            {
                _4293 = 0u;
            }
            float4 _4310 = TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionTexture.SampleLevel(View_SharedTrilinearClampedSampler, mad(clamp(_4286.xy / _4286.w.xx, -TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[_4293].xy, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[_4293].zw), 0.0f);
            float3 _4314 = _4310.xyz * _4246;
            float4 _4315 = float4(_4314.x, _4314.y, _4314.z, 0.0f.xxxx.w);
            _4315.w = _4248 * _4310.w;
            _4317 = _4315;
        }
        else
        {
            _4317 = 0.0f.xxxx;
        }
        _4323 = _4317.xyz + (_4188 * (1.0f - _4317.w));
    }
    else
    {
        _4323 = _4188;
    }
    float4 _4325 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _869) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _4326 = _4325.x;
    float2 _4335 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_4326 * _4326, exp2((-9.27999973297119140625f) * clamp(dot(_671, _577), 0.0f, 1.0f))), _4326, _4325.y)) + _4325.zw;
    bool _4362 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _4445 = 0.0f.xxxx;
    if (_4362)
    {
        float4 _4368 = float4(_102, 1.0f);
        precise float4 _125 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _126 = _4368 + _125;
        precise float4 _127 = _126 - _4368;
        precise float4 _128 = _126 - _127;
        precise float4 _129 = _4368 - _128;
        precise float4 _130 = _125 - _127;
        precise float4 _131 = _129 + _130;
        float4 _4379 = mul(_126 + (float4(_105, 0.0f) + _131), View_View_RelativeWorldToClip);
        float _4380 = _4379.w;
        float4 _4444 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _4444 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _4426 = 0.0f.xxxx;
            float _4427 = 0.0f;
            if (_4362)
            {
                float4 _4422 = TranslucentBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_4379.xy / _4380.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_4380, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _4424 = _4422.xyz * View_View_OneOverPreExposure;
                _4426 = float4(_4424.x, _4424.y, _4424.z, _4422.w);
                _4427 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _4426 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _4427 = 0.0f;
            }
            float4 _4432 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _4426, clamp((_557 - _4427) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _4435 = _4432.w;
            _4444 = float4(_4432.xyz + (in_var_TEXCOORD7.xyz * _4435), _4435 * in_var_TEXCOORD7.w);
            break;
        } while(false);
        _4445 = _4444;
    }
    else
    {
        _4445 = in_var_TEXCOORD7;
    }
    float3 _4452 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[1].xyz, Material_Material_PreshaderBuffer[0].w.xxx), 0.0f.xxx);
    float _4526 = 0.0f;
    float3 _4527 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _132 = Scene_GPUScene_GPUScenePrimitiveSceneData[_578 + 18u].xyz * 2097152.0f;
        precise float3 _133 = _132 + Scene_GPUScene_GPUScenePrimitiveSceneData[_578 + 19u].xyz;
        precise float3 _134 = _133 - _132;
        precise float3 _135 = Scene_GPUScene_GPUScenePrimitiveSceneData[_578 + 19u].xyz - _134;
        uint _4478 = _578 + 32u;
        precise float3 _136 = _102 - _133;
        precise float3 _137 = _105 - _135;
        precise float3 _138 = _136 + _137;
        float3 _4483 = abs(_138);
        float3 _4484 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_578 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_578 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_578 + 27u].w) + 1.0f.xxx;
        float _4524 = 0.0f;
        float3 _4525 = 0.0f.xxx;
        if (any(bool3(_4483.x > _4484.x, _4483.y > _4484.y, _4483.z > _4484.z)))
        {
            float3 _4520 = frac(dot(frac(frac(_102 * 1.52587890625e-05f.xxx) + frac(_105 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _4524 = 1.0f;
            _4525 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_4520.x > 0.5f.xxx.x, _4520.y > 0.5f.xxx.y, _4520.z > 0.5f.xxx.z)));
        }
        else
        {
            float _4509 = 0.0f;
            float3 _4510 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_4478].x > 0.0f)
            {
                float3 _4494 = abs(_554 - in_var_TEXCOORD9);
                float _4504 = 1.0f - clamp(abs(max(_4494.x, max(_4494.y, _4494.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_4478].x) * 20.0f, 0.0f, 1.0f);
                _4509 = float(int(sign(_4504)));
                _4510 = float3(1.0f, 0.0f, 1.0f) * _4504;
            }
            else
            {
                _4509 = 1.0f;
                _4510 = _4452;
            }
            _4524 = _4509;
            _4525 = _4510;
        }
        _4526 = _4524;
        _4527 = _4525;
    }
    else
    {
        _4526 = 1.0f;
        _4527 = _4452;
    }
    float4 _4537 = float4(((mad(_1109 * _899, max(_1118, ((((((_863 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _873) + ((_863 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _873) + ((_863 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _873), lerp(mad((_4323 * ((_901 * _4335.x) + (clamp(50.0f * _901.y, 0.0f, 1.0f) * _4335.y).xxx)) * 1.0f, max(_1118, ((((((_901 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _873) + ((_901 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _873) + ((_901 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _873), float4(_2479.x ? 0.0f.xxxx.x : _2015.x, _2479.y ? 0.0f.xxxx.y : _2015.y, _2479.z ? 0.0f.xxxx.z : _2015.z, _2479.w ? 0.0f.xxxx.w : _2015.w).xyz + float4(_2479.x ? 0.0f.xxxx.x : _2018.x, _2479.y ? 0.0f.xxxx.y : _2018.y, _2479.z ? 0.0f.xxxx.z : _2018.z, _2479.w ? 0.0f.xxxx.w : _2018.w).xyz), _899 + (_901 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _4527) * _4445.w) + _4445.xyz, _4526);
    float3 _4546 = min((_4537.xyz * View_View_PreExposure).xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_4546.x, _4546.y, _4546.z, _4537.w);
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
