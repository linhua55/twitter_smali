.class public final Lhk;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_ambientEnabled:I = 0x10

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_liteMode:I = 0x6

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x7

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x8

.field public static final MapAttrs_uiScrollGestures:I = 0x9

.field public static final MapAttrs_uiTiltGestures:I = 0xa

.field public static final MapAttrs_uiZoomControls:I = 0xb

.field public static final MapAttrs_uiZoomGestures:I = 0xc

.field public static final MapAttrs_useViewLifecycle:I = 0xd

.field public static final MapAttrs_zOrderOnTop:I = 0xe

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 208
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lhk;->AdsAttrs:[I

    .line 212
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lhk;->LoadingImageView:[I

    .line 216
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lhk;->MapAttrs:[I

    .line 234
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lhk;->SignInButton:[I

    return-void

    .line 208
    :array_0
    .array-data 4
        0x7f010100
        0x7f010101
        0x7f010102
    .end array-data

    .line 212
    :array_1
    .array-data 4
        0x7f01027e
        0x7f01027f
        0x7f010280
    .end array-data

    .line 216
    :array_2
    .array-data 4
        0x7f010281
        0x7f010282
        0x7f010283
        0x7f010284
        0x7f010285
        0x7f010286
        0x7f010287
        0x7f010288
        0x7f010289
        0x7f01028a
        0x7f01028b
        0x7f01028c
        0x7f01028d
        0x7f01028e
        0x7f01028f
        0x7f010290
        0x7f010291
    .end array-data

    .line 234
    :array_3
    .array-data 4
        0x7f01033e
        0x7f01033f
        0x7f010340
    .end array-data
.end method
