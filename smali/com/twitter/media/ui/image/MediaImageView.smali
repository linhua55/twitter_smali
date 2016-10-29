.class public Lcom/twitter/media/ui/image/MediaImageView;
.super Lcom/twitter/media/ui/image/BaseMediaImageView;
.source "Twttr"

# interfaces
.implements Lcom/twitter/media/ui/image/config/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/media/ui/image/BaseMediaImageView",
        "<",
        "Lcom/twitter/media/ui/image/MediaImageView;",
        ">;",
        "Lcom/twitter/media/ui/image/config/b;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field protected j:I

.field private k:Landroid/widget/ImageView;

.field private l:Z

.field private m:F

.field private final n:Lcom/twitter/media/ui/AnimatingProgressBar;

.field private final o:Lcom/twitter/media/ui/image/config/c;

.field private p:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/twitter/media/ui/i;->mediaImageViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/media/ui/image/MediaImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    .line 75
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/media/ui/image/MediaImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/widget/ImageView;Z)V

    .line 76
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/widget/ImageView;Z)V
    .locals 7

    .prologue
    .line 80
    sget-object v6, Lcom/twitter/media/ui/image/MediaImageView;->b:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/media/ui/image/MediaImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/widget/ImageView;ZLcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 81
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/widget/ImageView;ZLcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/twitter/media/ui/image/BaseMediaImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/media/request/ImageRequester;Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 86
    if-eqz p4, :cond_0

    .line 87
    invoke-virtual {p0, p4}, Lcom/twitter/media/ui/image/MediaImageView;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    iput-object p4, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    .line 91
    sget-object v0, Lcom/twitter/media/ui/k;->MediaImageView:[I

    .line 92
    invoke-virtual {p1, p2, v0, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 93
    sget v0, Lcom/twitter/media/ui/k;->MediaImageView_fadeIn:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->l:Z

    .line 94
    sget v0, Lcom/twitter/media/ui/k;->MediaImageView_singleImageView:I

    invoke-virtual {v1, v0, p5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 96
    sget v0, Lcom/twitter/media/ui/k;->MediaImageView_scaleFactor:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->m:F

    .line 97
    sget v0, Lcom/twitter/media/ui/k;->MediaImageView_loadingProgressBar:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/MediaImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v0, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/twitter/media/ui/image/MediaImageView;->addView(Landroid/view/View;)V

    .line 101
    sget v3, Lcom/twitter/media/ui/j;->media_progress_bar:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/AnimatingProgressBar;

    iput-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->n:Lcom/twitter/media/ui/AnimatingProgressBar;

    .line 103
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->n:Lcom/twitter/media/ui/AnimatingProgressBar;

    const/16 v3, 0x2ee

    invoke-virtual {v0, v3}, Lcom/twitter/media/ui/AnimatingProgressBar;->setAnimationMSTime(I)V

    .line 105
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->n:Lcom/twitter/media/ui/AnimatingProgressBar;

    invoke-virtual {v0, v6}, Lcom/twitter/media/ui/AnimatingProgressBar;->setAllowsProgressDrops(Z)V

    .line 106
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->n:Lcom/twitter/media/ui/AnimatingProgressBar;

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Lcom/twitter/media/ui/AnimatingProgressBar;->a(I)V

    .line 111
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    if-eqz v2, :cond_2

    .line 114
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    .line 120
    :goto_1
    invoke-direct {p0}, Lcom/twitter/media/ui/image/MediaImageView;->b()Lcom/twitter/media/ui/image/config/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->o:Lcom/twitter/media/ui/image/config/c;

    .line 121
    return-void

    .line 108
    :cond_1
    iput-object v4, p0, Lcom/twitter/media/ui/image/MediaImageView;->n:Lcom/twitter/media/ui/AnimatingProgressBar;

    goto :goto_0

    .line 116
    :cond_2
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/twitter/media/ui/image/MediaImageView;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Z)V
    .locals 6

    .prologue
    .line 66
    const/4 v2, 0x0

    sget v3, Lcom/twitter/media/ui/i;->mediaImageViewStyle:I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/media/ui/image/MediaImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/widget/ImageView;Z)V

    .line 67
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/MediaImageView;->p()V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/twitter/media/ui/image/MediaImageView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/media/ui/image/MediaImageView;)Lcom/twitter/media/ui/AnimatingProgressBar;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->n:Lcom/twitter/media/ui/AnimatingProgressBar;

    return-object v0
.end method

.method private b()Lcom/twitter/media/ui/image/config/c;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/twitter/media/ui/image/i;

    invoke-direct {v0, p0}, Lcom/twitter/media/ui/image/i;-><init>(Lcom/twitter/media/ui/image/MediaImageView;)V

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->p:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 343
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 361
    :goto_0
    iget-object v1, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 362
    return-void

    .line 345
    :cond_0
    sget-object v0, Lcom/twitter/media/ui/image/j;->a:[I

    iget-object v1, p0, Lcom/twitter/media/ui/image/MediaImageView;->d:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v1}, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 356
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 347
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 351
    :pswitch_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected a(Lcom/twitter/media/request/b;)Lcom/twitter/media/request/a;
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Lcom/twitter/media/request/b;)Lcom/twitter/media/request/a;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/media/ui/image/MediaImageView;->n:Lcom/twitter/media/ui/AnimatingProgressBar;

    if-eqz v1, :cond_0

    .line 165
    new-instance v1, Lcom/twitter/media/ui/image/k;

    invoke-direct {v1, p0}, Lcom/twitter/media/ui/image/k;-><init>(Lcom/twitter/media/ui/image/MediaImageView;)V

    invoke-virtual {v0, v1}, Lcom/twitter/media/request/a;->a(Lcom/twitter/util/y;)V

    .line 167
    :cond_0
    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 225
    instance-of v1, v0, Lcom/twitter/media/ui/image/config/e;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Lcom/twitter/media/ui/image/config/e;

    invoke-virtual {p0}, Lcom/twitter/media/ui/image/MediaImageView;->getRoundingConfig()Lcom/twitter/media/ui/image/config/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/media/ui/image/config/e;->setRoundingConfig(Lcom/twitter/media/ui/image/config/f;)V

    .line 228
    :cond_0
    return-void
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 257
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    .line 258
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/media/ui/image/MediaImageView;->f:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 265
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 267
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 269
    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 274
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    .line 275
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/twitter/media/ui/image/MediaImageView;->c()V

    .line 281
    iget-boolean v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->l:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    :goto_0
    return-void

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/twitter/util/d;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/twitter/util/d;->a(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getImageConfigurator()Lcom/twitter/media/ui/image/config/c;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->o:Lcom/twitter/media/ui/image/config/c;

    return-object v0
.end method

.method public getImageSize()Lcom/twitter/util/math/Size;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/util/math/Size;->a(Landroid/view/View;Z)Lcom/twitter/util/math/Size;

    move-result-object v0

    iget v1, p0, Lcom/twitter/media/ui/image/MediaImageView;->m:F

    invoke-virtual {v0, v1}, Lcom/twitter/util/math/Size;->a(F)Lcom/twitter/util/math/Size;

    move-result-object v0

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/ImageView;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImageViewAnimator()Landroid/view/ViewPropertyAnimator;
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected getRoundingConfig()Lcom/twitter/media/ui/image/config/f;
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/MediaImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    iget v2, p0, Lcom/twitter/media/ui/image/MediaImageView;->j:I

    int-to-float v2, v2

    invoke-static {v1, v0, v2}, Lcom/twitter/media/ui/image/config/f;->a(FFF)Lcom/twitter/media/ui/image/config/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/media/ui/image/config/f;->a:Lcom/twitter/media/ui/image/config/f;

    goto :goto_0
.end method

.method public getStatusImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/ImageView;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->n:Lcom/twitter/media/ui/AnimatingProgressBar;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->n:Lcom/twitter/media/ui/AnimatingProgressBar;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/AnimatingProgressBar;->setProgress(I)V

    .line 297
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->n:Lcom/twitter/media/ui/AnimatingProgressBar;

    invoke-virtual {v0}, Lcom/twitter/media/ui/AnimatingProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 298
    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 301
    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->n:Lcom/twitter/media/ui/AnimatingProgressBar;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->n:Lcom/twitter/media/ui/AnimatingProgressBar;

    invoke-virtual {v0}, Lcom/twitter/media/ui/AnimatingProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 307
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 309
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->onFinishInflate()V

    .line 173
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/MediaImageView;->p()V

    .line 174
    return-void
.end method

.method protected p()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 178
    sget v0, Lcom/twitter/media/ui/j;->image:I

    invoke-virtual {p0, v0}, Lcom/twitter/media/ui/image/MediaImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 179
    if-nez v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/MediaImageView;->q()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    .line 181
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/twitter/media/ui/image/MediaImageView;->addView(Landroid/view/View;)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/MediaImageView;->l()V

    .line 190
    return-void

    .line 183
    :cond_1
    iput-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method protected q()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 371
    new-instance v0, Lcom/twitter/media/ui/image/FixedSizeImageView;

    invoke-virtual {p0}, Lcom/twitter/media/ui/image/MediaImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/media/ui/image/FixedSizeImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setBorderSize(I)V
    .locals 0

    .prologue
    .line 211
    iput p1, p0, Lcom/twitter/media/ui/image/MediaImageView;->j:I

    .line 212
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/MediaImageView;->a()V

    .line 213
    return-void
.end method

.method public setFadeIn(Z)V
    .locals 0

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/twitter/media/ui/image/MediaImageView;->l:Z

    .line 242
    return-void
.end method

.method public setRoundingStrategy(Lcom/twitter/media/ui/image/config/g;)V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 217
    instance-of v1, v0, Lcom/twitter/media/ui/image/config/e;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Lcom/twitter/media/ui/image/config/e;

    invoke-interface {v0, p1}, Lcom/twitter/media/ui/image/config/e;->setRoundingStrategy(Lcom/twitter/media/ui/image/config/g;)V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/MediaImageView;->a()V

    .line 221
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    .prologue
    .line 245
    iput p1, p0, Lcom/twitter/media/ui/image/MediaImageView;->m:F

    .line 246
    return-void
.end method

.method public setTransformationMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    .prologue
    .line 335
    iput-object p1, p0, Lcom/twitter/media/ui/image/MediaImageView;->p:Landroid/graphics/Matrix;

    .line 336
    invoke-direct {p0}, Lcom/twitter/media/ui/image/MediaImageView;->c()V

    .line 337
    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/media/ui/image/MediaImageView;->p:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 338
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/media/ui/image/MediaImageView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
