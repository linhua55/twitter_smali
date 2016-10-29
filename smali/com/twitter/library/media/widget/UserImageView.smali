.class public Lcom/twitter/library/media/widget/UserImageView;
.super Lcom/twitter/media/ui/image/MediaImageView;
.source "Twttr"


# static fields
.field private static final a:[I

.field private static final k:Lcom/twitter/util/collection/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/j",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static l:I


# instance fields
.field private m:I

.field private n:I

.field private o:Z

.field private p:Lckb;

.field private q:Lcom/twitter/util/math/c;

.field private r:Landroid/graphics/drawable/GradientDrawable;

.field private s:Landroid/graphics/drawable/StateListDrawable;

.field private t:Z

.field private u:I

.field private v:[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v3

    sput-object v0, Lcom/twitter/library/media/widget/UserImageView;->a:[I

    .line 51
    new-instance v0, Lcom/twitter/util/collection/j;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/twitter/util/collection/j;-><init>(ILcom/twitter/util/collection/n;)V

    sput-object v0, Lcom/twitter/library/media/widget/UserImageView;->k:Lcom/twitter/util/collection/j;

    .line 53
    sput v3, Lcom/twitter/library/media/widget/UserImageView;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/library/media/widget/UserImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    sget v0, Lbjs;->userImageViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/library/media/widget/UserImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x3

    .line 75
    new-instance v4, Lcom/twitter/media/ui/image/RichImageView;

    invoke-direct {v4, p1}, Lcom/twitter/media/ui/image/RichImageView;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/media/ui/image/MediaImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/widget/ImageView;Z)V

    .line 55
    iput v6, p0, Lcom/twitter/library/media/widget/UserImageView;->m:I

    .line 56
    iput v6, p0, Lcom/twitter/library/media/widget/UserImageView;->n:I

    .line 62
    iput-boolean v5, p0, Lcom/twitter/library/media/widget/UserImageView;->t:Z

    .line 76
    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    sget-object v0, Lbkc;->UserImageView:[I

    invoke-virtual {p1, p2, v0, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 78
    sget v0, Lbkc;->UserImageView_userImageSize:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    const-string/jumbo v3, "0x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    :cond_0
    sget v0, Lbkc;->UserImageView_userImageSize:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/media/widget/UserImageView;->n:I

    iput v0, p0, Lcom/twitter/library/media/widget/UserImageView;->m:I

    .line 85
    :goto_0
    sget v0, Lbkc;->UserImageView_imageCornerRadius:I

    invoke-virtual {v2, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    .line 86
    sget v3, Lbkc;->UserImageView_roundingStrategy:I

    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 87
    sget v4, Lcom/twitter/media/ui/image/config/CommonRoundingStrategy;->e:I

    if-ne v3, v4, :cond_3

    sget-object v0, Lcom/twitter/media/ui/image/config/CommonRoundingStrategy;->c:Lcom/twitter/media/ui/image/config/CommonRoundingStrategy;

    .line 90
    :goto_1
    sget v3, Lbjt;->placeholder_bg:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/twitter/library/media/widget/UserImageView;->u:I

    .line 91
    sget v3, Lcom/twitter/library/media/widget/UserImageView;->l:I

    if-nez v3, :cond_1

    .line 92
    sget v3, Lbjt;->light_transparent_black:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/twitter/library/media/widget/UserImageView;->l:I

    .line 94
    :cond_1
    invoke-virtual {p0, v0}, Lcom/twitter/library/media/widget/UserImageView;->setRoundingStrategy(Lcom/twitter/media/ui/image/config/g;)V

    .line 95
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    const-string/jumbo v0, "profile"

    invoke-virtual {p0, v0}, Lcom/twitter/library/media/widget/UserImageView;->setImageType(Ljava/lang/String;)V

    .line 97
    return-void

    .line 83
    :cond_2
    sget v0, Lbkc;->UserImageView_userImageSize:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/library/media/widget/UserImageView;->n:I

    iput v0, p0, Lcom/twitter/library/media/widget/UserImageView;->m:I

    goto :goto_0

    .line 88
    :cond_3
    invoke-static {v0}, Lcom/twitter/media/ui/image/config/d;->a(F)Lcom/twitter/media/ui/image/config/g;

    move-result-object v0

    goto :goto_1
.end method

.method private a([F)Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/twitter/library/media/widget/UserImageView;->s:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/twitter/library/media/widget/UserImageView;->s:Landroid/graphics/drawable/StateListDrawable;

    move-object v1, v0

    .line 332
    :goto_0
    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 333
    :goto_1
    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/twitter/library/media/widget/UserImageView;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 338
    :goto_2
    return-object v1

    .line 326
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 327
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lcom/twitter/library/media/widget/UserImageView;->r:Landroid/graphics/drawable/GradientDrawable;

    .line 328
    iget-object v1, p0, Lcom/twitter/library/media/widget/UserImageView;->r:Landroid/graphics/drawable/GradientDrawable;

    sget v2, Lcom/twitter/library/media/widget/UserImageView;->l:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 329
    sget-object v1, Lcom/twitter/library/media/widget/UserImageView;->a:[I

    iget-object v2, p0, Lcom/twitter/library/media/widget/UserImageView;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object v1, v0

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/media/widget/UserImageView;->r:Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_2
.end method

.method private static a(Lcom/twitter/util/math/Size;[FI)Ljava/lang/String;
    .locals 5

    .prologue
    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/twitter/util/math/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v0, "_color_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    if-eqz p1, :cond_0

    .line 397
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    .line 398
    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/media/ui/image/RichImageView;)V
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/twitter/library/media/widget/UserImageView;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/media/widget/UserImageView;->s:Landroid/graphics/drawable/StateListDrawable;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/twitter/media/ui/image/RichImageView;->setOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 286
    if-eqz p1, :cond_1

    .line 287
    iget v0, p0, Lcom/twitter/library/media/widget/UserImageView;->m:I

    invoke-static {v0}, Lcom/twitter/library/media/manager/UserImageRequest;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 288
    iget v1, p0, Lcom/twitter/library/media/widget/UserImageView;->n:I

    invoke-static {v1}, Lcom/twitter/library/media/manager/UserImageRequest;->a(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 289
    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v0, :cond_0

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_1

    .line 290
    :cond_0
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 291
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 292
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/twitter/media/ui/image/MediaImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iput-boolean p2, p0, Lcom/twitter/library/media/widget/UserImageView;->o:Z

    .line 246
    iget-boolean v0, p0, Lcom/twitter/library/media/widget/UserImageView;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/media/widget/UserImageView;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/twitter/library/media/widget/UserImageView;->d()V

    .line 249
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Lcom/twitter/media/ui/image/MediaImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/library/media/widget/UserImageView;->a(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 299
    iget v0, p0, Lcom/twitter/library/media/widget/UserImageView;->m:I

    invoke-static {v0}, Lcom/twitter/library/media/manager/UserImageRequest;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    .line 300
    iget v0, p0, Lcom/twitter/library/media/widget/UserImageView;->n:I

    invoke-static {v0}, Lcom/twitter/library/media/manager/UserImageRequest;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    .line 302
    iget-object v0, p0, Lcom/twitter/library/media/widget/UserImageView;->e:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/twitter/library/media/widget/UserImageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/media/widget/UserImageView;->e:Landroid/graphics/drawable/Drawable;

    .line 304
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/widget/UserImageView;->e:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 306
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/twitter/library/media/widget/UserImageView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/library/media/widget/UserImageView;->o:Z

    if-eqz v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 359
    :cond_0
    iget v0, p0, Lcom/twitter/library/media/widget/UserImageView;->m:I

    invoke-static {v0}, Lcom/twitter/library/media/manager/UserImageRequest;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v0

    .line 360
    iget v0, p0, Lcom/twitter/library/media/widget/UserImageView;->n:I

    invoke-static {v0}, Lcom/twitter/library/media/manager/UserImageRequest;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v0

    .line 362
    iget v4, p0, Lcom/twitter/library/media/widget/UserImageView;->u:I

    .line 363
    iget-object v5, p0, Lcom/twitter/library/media/widget/UserImageView;->v:[F

    .line 364
    invoke-static {v2, v3}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v6

    .line 365
    invoke-static {v6, v5, v4}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/util/math/Size;[FI)Ljava/lang/String;

    move-result-object v7

    .line 366
    sget-object v0, Lcom/twitter/library/media/widget/UserImageView;->k:Lcom/twitter/util/collection/j;

    invoke-virtual {v0, v7}, Lcom/twitter/util/collection/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 367
    if-nez v0, :cond_1

    .line 368
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 369
    invoke-virtual {v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 371
    invoke-virtual {v8, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 374
    if-eqz v5, :cond_2

    array-length v0, v5

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 375
    :goto_1
    if-eqz v0, :cond_3

    .line 376
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 380
    :goto_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0}, Lcom/twitter/media/util/a;->a(Lcom/twitter/util/math/Size;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_1

    .line 382
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 383
    invoke-virtual {v6}, Lcom/twitter/util/math/Size;->a()I

    move-result v3

    invoke-virtual {v6}, Lcom/twitter/util/math/Size;->b()I

    move-result v4

    invoke-virtual {v8, v1, v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 384
    invoke-virtual {v8, v2}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 385
    sget-object v2, Lcom/twitter/library/media/widget/UserImageView;->k:Lcom/twitter/util/collection/j;

    invoke-virtual {v2, v7, v0}, Lcom/twitter/util/collection/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v2, v1}, Lcom/twitter/library/media/widget/UserImageView;->b(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 374
    goto :goto_1

    .line 378
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_2
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/twitter/media/ui/image/MediaImageView;->a()V

    .line 262
    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/RichImageView;

    .line 263
    invoke-virtual {v0}, Lcom/twitter/media/ui/image/RichImageView;->getCornerRadii()[F

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/media/widget/UserImageView;->v:[F

    .line 264
    iget-object v1, p0, Lcom/twitter/library/media/widget/UserImageView;->v:[F

    invoke-direct {p0, v1}, Lcom/twitter/library/media/widget/UserImageView;->a([F)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/media/widget/UserImageView;->s:Landroid/graphics/drawable/StateListDrawable;

    .line 265
    invoke-direct {p0, v0}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/media/ui/image/RichImageView;)V

    .line 266
    invoke-direct {p0}, Lcom/twitter/library/media/widget/UserImageView;->d()V

    .line 267
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 130
    iput p1, p0, Lcom/twitter/library/media/widget/UserImageView;->m:I

    .line 131
    iput p2, p0, Lcom/twitter/library/media/widget/UserImageView;->n:I

    .line 132
    invoke-direct {p0}, Lcom/twitter/library/media/widget/UserImageView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->requestLayout()V

    .line 134
    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->a()V

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/twitter/library/media/widget/UserImageView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 139
    :cond_1
    return-void
.end method

.method public a(IILcom/twitter/media/ui/image/config/g;)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 222
    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 226
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/twitter/library/media/widget/UserImageView;->setPadding(IIII)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/twitter/library/media/widget/UserImageView;->setBorderSize(I)V

    .line 233
    invoke-virtual {p0, p3}, Lcom/twitter/library/media/widget/UserImageView;->setRoundingStrategy(Lcom/twitter/media/ui/image/config/g;)V

    .line 235
    invoke-static {p0, v0, v1}, Lcom/twitter/library/util/q;->a(Lcom/twitter/library/media/widget/UserImageView;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 236
    invoke-virtual {p0, v0}, Lcom/twitter/library/media/widget/UserImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 237
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/twitter/library/media/widget/UserImageView;->t:Z

    if-eq v0, p1, :cond_0

    .line 271
    iput-boolean p1, p0, Lcom/twitter/library/media/widget/UserImageView;->t:Z

    .line 272
    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/RichImageView;

    .line 273
    invoke-direct {p0, v0}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/media/ui/image/RichImageView;)V

    .line 275
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/media/request/b;Z)Z
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use setUser or setUserImageUrl"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;)Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/model/core/TwitterUser;Z)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;Z)Z
    .locals 4

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {p0, v0, v2, v3, p2}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;JZ)Z

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;ZLcom/twitter/media/request/c;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;JZ)Z
    .locals 2

    .prologue
    .line 160
    invoke-static {p2, p3, p1}, Lcom/twitter/library/media/util/af;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p4, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;ZLcom/twitter/media/request/c;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/twitter/media/request/c;)Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;ZLcom/twitter/media/request/c;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;ZLcom/twitter/media/request/c;)Z
    .locals 2

    .prologue
    .line 174
    invoke-static {p1}, Lcom/twitter/library/media/manager/UserImageRequest;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 175
    if-eqz p3, :cond_0

    .line 176
    invoke-virtual {v0, p3}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/i;)Lcom/twitter/media/request/h;

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/twitter/library/media/widget/UserImageView;->p:Lckb;

    .line 179
    invoke-virtual {v0, v1}, Lcom/twitter/media/request/b;->a(Lckb;)Lcom/twitter/media/request/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/media/widget/UserImageView;->q:Lcom/twitter/util/math/c;

    .line 180
    invoke-virtual {v0, v1}, Lcom/twitter/media/request/b;->a(Lcom/twitter/util/math/c;)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 178
    invoke-super {p0, v0, p2}, Lcom/twitter/media/ui/image/MediaImageView;->a(Lcom/twitter/media/request/b;Z)Z

    move-result v0

    return v0
.end method

.method public b(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 240
    sget-object v0, Lcom/twitter/media/ui/image/config/CommonRoundingStrategy;->b:Lcom/twitter/media/ui/image/config/CommonRoundingStrategy;

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/library/media/widget/UserImageView;->a(IILcom/twitter/media/ui/image/config/g;)V

    .line 241
    return-void
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/twitter/media/ui/image/MediaImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 108
    invoke-direct {p0, v0}, Lcom/twitter/library/media/widget/UserImageView;->a(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 109
    return-object v0
.end method

.method protected getRoundingConfig()Lcom/twitter/media/ui/image/config/f;
    .locals 3

    .prologue
    .line 254
    iget v0, p0, Lcom/twitter/library/media/widget/UserImageView;->m:I

    invoke-static {v0}, Lcom/twitter/library/media/manager/UserImageRequest;->a(I)I

    move-result v0

    int-to-float v0, v0

    .line 255
    iget v1, p0, Lcom/twitter/library/media/widget/UserImageView;->n:I

    invoke-static {v1}, Lcom/twitter/library/media/manager/UserImageRequest;->a(I)I

    move-result v1

    int-to-float v1, v1

    .line 256
    iget v2, p0, Lcom/twitter/library/media/widget/UserImageView;->j:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/twitter/media/ui/image/config/f;->a(FFF)Lcom/twitter/media/ui/image/config/f;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/twitter/media/ui/image/MediaImageView;->onAttachedToWindow()V

    .line 102
    invoke-direct {p0}, Lcom/twitter/library/media/widget/UserImageView;->b()Z

    .line 103
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must set size before trying the measure the view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/twitter/library/media/widget/UserImageView;->b()Z

    .line 119
    invoke-direct {p0}, Lcom/twitter/library/media/widget/UserImageView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 122
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/twitter/media/ui/image/MediaImageView;->onMeasure(II)V

    .line 123
    return-void
.end method

.method public setCropRectangle(Lcom/twitter/util/math/c;)V
    .locals 1

    .prologue
    .line 199
    iput-object p1, p0, Lcom/twitter/library/media/widget/UserImageView;->q:Lcom/twitter/util/math/c;

    .line 200
    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getRequestBuilder()Lcom/twitter/media/request/b;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Lcom/twitter/media/request/b;->a(Lcom/twitter/util/math/c;)Lcom/twitter/media/request/b;

    .line 203
    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->aP_()V

    .line 205
    :cond_0
    return-void
.end method

.method public setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/twitter/library/media/widget/UserImageView;->b(Landroid/graphics/drawable/Drawable;Z)V

    .line 217
    return-void
.end method

.method public setDefaultDrawableColor(I)V
    .locals 0

    .prologue
    .line 211
    iput p1, p0, Lcom/twitter/library/media/widget/UserImageView;->u:I

    .line 212
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/media/ui/image/MediaImageView;->setPadding(IIII)V

    .line 144
    invoke-direct {p0}, Lcom/twitter/library/media/widget/UserImageView;->b()Z

    .line 145
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0, p1, p1}, Lcom/twitter/library/media/widget/UserImageView;->a(II)V

    .line 127
    return-void
.end method

.method public setTransformation(Lckb;)V
    .locals 1

    .prologue
    .line 190
    iput-object p1, p0, Lcom/twitter/library/media/widget/UserImageView;->p:Lckb;

    .line 191
    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->getRequestBuilder()Lcom/twitter/media/request/b;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Lcom/twitter/media/request/b;->a(Lckb;)Lcom/twitter/media/request/b;

    .line 194
    invoke-virtual {p0}, Lcom/twitter/library/media/widget/UserImageView;->aP_()V

    .line 196
    :cond_0
    return-void
.end method
