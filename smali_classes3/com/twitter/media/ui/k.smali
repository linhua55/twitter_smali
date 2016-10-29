.class public final Lcom/twitter/media/ui/k;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final AspectRatioFrameLayout:[I

.field public static final AspectRatioFrameLayout_aspect_ratio:I = 0x0

.field public static final AspectRatioFrameLayout_max_aspect_ratio:I = 0x2

.field public static final AspectRatioFrameLayout_max_height:I = 0x4

.field public static final AspectRatioFrameLayout_max_width:I = 0x3

.field public static final AspectRatioFrameLayout_min_aspect_ratio:I = 0x1

.field public static final AspectRatioFrameLayout_scaleMode:I = 0x5

.field public static final BackgroundImageView:[I

.field public static final BackgroundImageView_crossfadeDuration:I = 0x1

.field public static final BackgroundImageView_filterColor:I = 0x3

.field public static final BackgroundImageView_filterMaxOpacity:I = 0x2

.field public static final BackgroundImageView_overlayDrawable:I = 0x0

.field public static final BaseMediaImageView:[I

.field public static final BaseMediaImageView_defaultDrawable:I = 0x0

.field public static final BaseMediaImageView_errorDrawable:I = 0x1

.field public static final BaseMediaImageView_imageType:I = 0x2

.field public static final BaseMediaImageView_scaleType:I = 0x4

.field public static final BaseMediaImageView_updateOnResize:I = 0x3

.field public static final FixedSizeImageView:[I

.field public static final FixedSizeImageView_fixedSize:I = 0x0

.field public static final MediaImageView:[I

.field public static final MediaImageView_fadeIn:I = 0x0

.field public static final MediaImageView_loadingProgressBar:I = 0x3

.field public static final MediaImageView_scaleFactor:I = 0x2

.field public static final MediaImageView_singleImageView:I = 0x1

.field public static final RichImageView:[I

.field public static final RichImageView_cornerRadius:I = 0x0

.field public static final RichImageView_cornerRadiusBottomLeft:I = 0x4

.field public static final RichImageView_cornerRadiusBottomRight:I = 0x5

.field public static final RichImageView_cornerRadiusTopLeft:I = 0x2

.field public static final RichImageView_cornerRadiusTopRight:I = 0x3

.field public static final RichImageView_overlayDrawable:I = 0x1

.field public static final SVGImageView:[I

.field public static final SVGImageView_svg:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/media/ui/k;->AspectRatioFrameLayout:[I

    .line 110
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/twitter/media/ui/k;->BackgroundImageView:[I

    .line 115
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/twitter/media/ui/k;->BaseMediaImageView:[I

    .line 121
    new-array v0, v3, [I

    const v1, 0x7f010229

    aput v1, v0, v2

    sput-object v0, Lcom/twitter/media/ui/k;->FixedSizeImageView:[I

    .line 123
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/twitter/media/ui/k;->MediaImageView:[I

    .line 128
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/twitter/media/ui/k;->RichImageView:[I

    .line 135
    new-array v0, v3, [I

    const v1, 0x7f01031b

    aput v1, v0, v2

    sput-object v0, Lcom/twitter/media/ui/k;->SVGImageView:[I

    return-void

    .line 103
    nop

    :array_0
    .array-data 4
        0x7f01017e
        0x7f01017f
        0x7f010180
        0x7f010181
        0x7f010182
        0x7f010183
    .end array-data

    .line 110
    :array_1
    .array-data 4
        0x7f010057
        0x7f010186
        0x7f010187
        0x7f010188
    .end array-data

    .line 115
    :array_2
    .array-data 4
        0x7f010019
        0x7f010195
        0x7f010196
        0x7f010197
        0x7f010198
    .end array-data

    .line 123
    :array_3
    .array-data 4
        0x7f01002d
        0x7f010293
        0x7f010294
        0x7f010295
    .end array-data

    .line 128
    :array_4
    .array-data 4
        0x7f010017
        0x7f010057
        0x7f01030b
        0x7f01030c
        0x7f01030d
        0x7f01030e
    .end array-data
.end method
