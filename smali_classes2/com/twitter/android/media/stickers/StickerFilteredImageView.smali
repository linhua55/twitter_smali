.class public Lcom/twitter/android/media/stickers/StickerFilteredImageView;
.super Lcom/twitter/media/ui/image/FilteredImageView;
.source "Twttr"


# instance fields
.field private A:Lcom/twitter/util/math/Size;

.field private B:Lcom/twitter/util/math/Size;

.field private C:Lcom/twitter/model/media/EditableImage;

.field private D:F

.field private final a:Lcom/twitter/android/media/widget/HoverGarbageCanView;

.field private final j:Landroid/view/View;

.field private final k:F

.field private final l:I

.field private final m:Landroid/graphics/Rect;

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:D

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Lcom/twitter/android/media/stickers/StickerView;

.field private y:Lcom/twitter/android/media/stickers/a;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/media/ui/image/FilteredImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->m:Landroid/graphics/Rect;

    .line 41
    iput v1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->n:F

    .line 42
    iput v1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->o:F

    .line 43
    iput v1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->p:F

    .line 44
    iput v1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->q:F

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->r:D

    .line 46
    iput v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->s:I

    .line 47
    iput v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->t:I

    .line 54
    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    iput-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->A:Lcom/twitter/util/math/Size;

    .line 69
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->k:F

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040398

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->j:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->j:Landroid/view/View;

    const v1, 0x7f13074d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/widget/HoverGarbageCanView;

    iput-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a:Lcom/twitter/android/media/widget/HoverGarbageCanView;

    .line 73
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f026f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->l:I

    .line 75
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->addView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a:Lcom/twitter/android/media/widget/HoverGarbageCanView;

    invoke-virtual {v0}, Lcom/twitter/android/media/widget/HoverGarbageCanView;->b()V

    .line 78
    return-void
.end method

.method private static a(FFFF)D
    .locals 4

    .prologue
    .line 530
    sub-float v0, p2, p0

    float-to-double v0, v0

    sub-float v2, p3, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 533
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method private a(Landroid/view/View;FF)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 401
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 402
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 403
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 404
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 405
    return-void
.end method

.method private a(Lcom/twitter/android/media/stickers/StickerView;F)V
    .locals 3

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/twitter/android/media/stickers/StickerView;->getDisplayInfo()Lcom/twitter/android/media/stickers/m;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/m;->c()F

    move-result v1

    add-float/2addr v1, p2

    .line 381
    iget-object v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->C:Lcom/twitter/model/media/EditableImage;

    iget v2, v2, Lcom/twitter/model/media/EditableImage;->e:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/twitter/android/media/stickers/StickerView;->setRotation(F)V

    .line 382
    invoke-virtual {v0, v1}, Lcom/twitter/android/media/stickers/m;->c(F)V

    .line 383
    return-void
.end method

.method private a(Lcom/twitter/android/media/stickers/m;FF)V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->C:Lcom/twitter/model/media/EditableImage;

    iget v0, v0, Lcom/twitter/model/media/EditableImage;->e:I

    .line 353
    sparse-switch v0, :sswitch_data_0

    move v1, p3

    move p3, p2

    move p2, v1

    .line 375
    :goto_0
    iget v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->D:F

    invoke-virtual {p1, p3, p2, v0}, Lcom/twitter/android/media/stickers/m;->a(FFF)V

    .line 376
    return-void

    .line 356
    :sswitch_0
    neg-float p2, p2

    .line 357
    goto :goto_0

    .line 360
    :sswitch_1
    neg-float v0, p2

    .line 361
    neg-float p2, p3

    move p3, v0

    .line 362
    goto :goto_0

    .line 365
    :sswitch_2
    neg-float p3, p3

    .line 367
    goto :goto_0

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Landroid/view/MotionEvent;Lcom/twitter/android/media/stickers/StickerView;)Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 284
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 285
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_2

    .line 286
    invoke-virtual {p0, v3}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 287
    if-eq v0, p2, :cond_3

    instance-of v7, v0, Lcom/twitter/android/media/stickers/StickerView;

    if-eqz v7, :cond_3

    .line 288
    check-cast v0, Lcom/twitter/android/media/stickers/StickerView;

    .line 289
    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 290
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 291
    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 292
    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v4, v7

    aput v7, v6, v1

    .line 293
    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerView;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v5, v7

    aput v7, v6, v2

    .line 294
    invoke-virtual {v8, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 295
    aget v7, v6, v1

    .line 296
    aget v8, v6, v2

    .line 297
    cmpl-float v9, v7, v10

    if-ltz v9, :cond_3

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_3

    cmpl-float v7, v8, v10

    if-ltz v7, :cond_3

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v8, v7

    if-gez v7, :cond_3

    .line 298
    invoke-direct {p0, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->b(Lcom/twitter/android/media/stickers/StickerView;)V

    .line 299
    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->bringChildToFront(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->bringChildToFront(Landroid/view/View;)V

    .line 301
    if-eqz p2, :cond_1

    .line 303
    invoke-virtual {p0, p2}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->removeView(Landroid/view/View;)V

    move v0, v1

    .line 305
    :goto_1
    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/twitter/android/media/stickers/StickerView;

    if-nez v1, :cond_0

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->addView(Landroid/view/View;I)V

    :cond_1
    move v1, v2

    .line 316
    :cond_2
    return v1

    .line 285
    :cond_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0
.end method

.method private b(Lcom/twitter/android/media/stickers/StickerView;)V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    if-ne v0, p1, :cond_0

    .line 422
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/stickers/StickerView;->setAlpha(F)V

    .line 413
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/stickers/StickerView;->setIsActive(Z)V

    .line 414
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerView;->invalidate()V

    .line 416
    :cond_1
    iput-object p1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    .line 417
    if-eqz p1, :cond_2

    .line 418
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/twitter/android/media/stickers/StickerView;->setIsActive(Z)V

    .line 419
    invoke-virtual {p1}, Lcom/twitter/android/media/stickers/StickerView;->invalidate()V

    .line 421
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->t()V

    goto :goto_0
.end method

.method private b(Lcom/twitter/android/media/stickers/StickerView;F)V
    .locals 3

    .prologue
    .line 386
    invoke-virtual {p1}, Lcom/twitter/android/media/stickers/StickerView;->getDisplayInfo()Lcom/twitter/android/media/stickers/m;

    move-result-object v0

    .line 388
    iget v1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->D:F

    invoke-virtual {v0, p2, v1}, Lcom/twitter/android/media/stickers/m;->a(FF)V

    .line 391
    iget-object v1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    invoke-direct {p0, v1}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->c(Lcom/twitter/android/media/stickers/StickerView;)V

    .line 392
    iget v1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->D:F

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/stickers/m;->a(F)Lcom/twitter/util/math/Size;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/twitter/android/media/stickers/StickerView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 395
    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/twitter/android/media/stickers/StickerView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 396
    invoke-virtual {p1}, Lcom/twitter/android/media/stickers/StickerView;->getStatusImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a(Landroid/view/View;FF)V

    .line 397
    invoke-virtual {p1}, Lcom/twitter/android/media/stickers/StickerView;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a(Landroid/view/View;FF)V

    .line 398
    return-void
.end method

.method private c(Lcom/twitter/android/media/stickers/StickerView;)V
    .locals 7

    .prologue
    .line 482
    invoke-virtual {p1}, Lcom/twitter/android/media/stickers/StickerView;->getDisplayInfo()Lcom/twitter/android/media/stickers/m;

    move-result-object v1

    .line 483
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->C:Lcom/twitter/model/media/EditableImage;

    iget v2, v0, Lcom/twitter/model/media/EditableImage;->e:I

    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->C:Lcom/twitter/model/media/EditableImage;

    iget-object v0, v0, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    check-cast v0, Lcom/twitter/media/model/ImageFile;

    iget-object v0, v0, Lcom/twitter/media/model/ImageFile;->e:Lcom/twitter/util/math/Size;

    .line 485
    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->g()F

    move-result v3

    iget v4, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->D:F

    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->C:Lcom/twitter/model/media/EditableImage;

    iget-object v0, v0, Lcom/twitter/model/media/EditableImage;->f:Lcom/twitter/util/math/c;

    sget-object v5, Lcom/twitter/util/math/c;->c:Lcom/twitter/util/math/c;

    .line 487
    invoke-static {v0, v5}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/math/c;

    .line 483
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/twitter/android/media/stickers/m;->a(IFFLcom/twitter/util/math/c;)Landroid/graphics/Rect;

    move-result-object v0

    .line 488
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->A:Lcom/twitter/util/math/Size;

    invoke-virtual {v3}, Lcom/twitter/util/math/Size;->a()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 489
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->A:Lcom/twitter/util/math/Size;

    invoke-virtual {v4}, Lcom/twitter/util/math/Size;->b()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 490
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    invoke-virtual {p1, v4, v5, v2, v0}, Lcom/twitter/android/media/stickers/StickerView;->layout(IIII)V

    .line 495
    invoke-virtual {v1}, Lcom/twitter/android/media/stickers/m;->c()F

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->C:Lcom/twitter/model/media/EditableImage;

    iget v1, v1, Lcom/twitter/model/media/EditableImage;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/twitter/android/media/stickers/StickerView;->setRotation(F)V

    .line 496
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->y:Lcom/twitter/android/media/stickers/a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->z:Z

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->y:Lcom/twitter/android/media/stickers/a;

    invoke-interface {v0}, Lcom/twitter/android/media/stickers/a;->a()V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->z:Z

    .line 324
    :cond_0
    return-void
.end method

.method private s()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->y:Lcom/twitter/android/media/stickers/a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->z:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->y:Lcom/twitter/android/media/stickers/a;

    invoke-interface {v0}, Lcom/twitter/android/media/stickers/a;->b()V

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->z:Z

    .line 331
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    .line 425
    iput v1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->t:I

    .line 426
    iput v1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->s:I

    .line 427
    iput v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->n:F

    .line 428
    iput v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->o:F

    .line 429
    iput v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->p:F

    .line 430
    iput v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->q:F

    .line 431
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->r:D

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->u:Z

    .line 433
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    if-eqz v0, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->s()V

    .line 435
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/stickers/StickerView;->setAlpha(F)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a:Lcom/twitter/android/media/widget/HoverGarbageCanView;

    invoke-virtual {v0}, Lcom/twitter/android/media/widget/HoverGarbageCanView;->a()V

    .line 438
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->requestLayout()V

    .line 439
    return-void
.end method

.method private u()V
    .locals 4

    .prologue
    .line 515
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->C:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->B:Lcom/twitter/util/math/Size;

    if-nez v0, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->B:Lcom/twitter/util/math/Size;

    .line 519
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 520
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 518
    invoke-static {v1, v2}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/math/Size;->c(Lcom/twitter/util/math/Size;)Lcom/twitter/util/math/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->A:Lcom/twitter/util/math/Size;

    .line 521
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->C:Lcom/twitter/model/media/EditableImage;

    iget-object v0, v0, Lcom/twitter/model/media/EditableImage;->f:Lcom/twitter/util/math/c;

    sget-object v1, Lcom/twitter/util/math/c;->c:Lcom/twitter/util/math/c;

    .line 522
    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/math/c;

    .line 523
    iget-object v1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->C:Lcom/twitter/model/media/EditableImage;

    iget v1, v1, Lcom/twitter/model/media/EditableImage;->e:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->A:Lcom/twitter/util/math/Size;

    .line 524
    invoke-virtual {v1}, Lcom/twitter/util/math/Size;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/twitter/util/math/c;->c()F

    move-result v0

    div-float v0, v1, v0

    .line 525
    :goto_1
    iput v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->D:F

    goto :goto_0

    .line 524
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->A:Lcom/twitter/util/math/Size;

    .line 525
    invoke-virtual {v1}, Lcom/twitter/util/math/Size;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/twitter/util/math/c;->d()F

    move-result v0

    div-float v0, v1, v0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->b(Lcom/twitter/android/media/stickers/StickerView;)V

    .line 335
    return-void
.end method

.method public a(Lcom/twitter/android/media/stickers/StickerView;)V
    .locals 1

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/twitter/android/media/stickers/StickerView;->setVisibility(I)V

    .line 445
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->addView(Landroid/view/View;)V

    .line 446
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->bringChildToFront(Landroid/view/View;)V

    .line 447
    return-void
.end method

.method public a(Lcom/twitter/media/request/ImageResponse;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 500
    invoke-super {p0, p1, p2}, Lcom/twitter/media/ui/image/FilteredImageView;->a(Lcom/twitter/media/request/ImageResponse;Landroid/graphics/drawable/Drawable;)V

    .line 501
    if-eqz p2, :cond_2

    .line 502
    invoke-static {p2}, Lcom/twitter/util/math/Size;->a(Landroid/graphics/drawable/Drawable;)Lcom/twitter/util/math/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->B:Lcom/twitter/util/math/Size;

    .line 503
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 504
    :goto_0
    if-ge v0, v2, :cond_1

    .line 505
    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 506
    instance-of v4, v3, Lcom/twitter/android/media/stickers/StickerView;

    if-eqz v4, :cond_0

    .line 507
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 504
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->requestLayout()V

    .line 512
    :cond_2
    return-void
.end method

.method public a(Lcom/twitter/model/media/EditableImage;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 468
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->C:Lcom/twitter/model/media/EditableImage;

    invoke-virtual {p1, v0}, Lcom/twitter/model/media/EditableImage;->a(Lcom/twitter/model/media/EditableImage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const/4 v0, 0x0

    .line 473
    :goto_0
    return v0

    .line 471
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/model/media/EditableImage;->c()Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    iput-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->C:Lcom/twitter/model/media/EditableImage;

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->B:Lcom/twitter/util/math/Size;

    .line 474
    invoke-virtual {p1}, Lcom/twitter/model/media/EditableImage;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/media/EditableImage;->f:Lcom/twitter/util/math/c;

    .line 475
    invoke-virtual {v0, v1}, Lcom/twitter/media/request/b;->a(Lcom/twitter/util/math/c;)Lcom/twitter/media/request/b;

    move-result-object v0

    iget v1, p1, Lcom/twitter/model/media/EditableImage;->e:I

    .line 476
    invoke-virtual {v0, v1}, Lcom/twitter/media/request/b;->a(I)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 477
    invoke-virtual {v0, v2}, Lcom/twitter/media/request/b;->a(Z)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 473
    invoke-virtual {p0, v0, v2}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a(Lcom/twitter/media/request/b;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->removeView(Landroid/view/View;)V

    .line 453
    :cond_0
    return-void
.end method

.method public getStickers()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/android/media/stickers/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 341
    invoke-virtual {p0, v1}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/android/media/stickers/StickerView;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0, v1}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/stickers/StickerView;

    .line 343
    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerView;->getDisplayInfo()Lcom/twitter/android/media/stickers/m;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 346
    :cond_1
    return-object v2
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    .line 457
    invoke-super/range {p0 .. p5}, Lcom/twitter/media/ui/image/FilteredImageView;->onLayout(ZIIII)V

    .line 458
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getChildCount()I

    move-result v2

    .line 459
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 460
    invoke-virtual {p0, v1}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/twitter/android/media/stickers/StickerView;

    if-eqz v3, :cond_0

    .line 462
    check-cast v0, Lcom/twitter/android/media/stickers/StickerView;

    invoke-direct {p0, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->c(Lcom/twitter/android/media/stickers/StickerView;)V

    .line 459
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 465
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/twitter/media/ui/image/FilteredImageView;->onMeasure(II)V

    .line 87
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->u()V

    .line 88
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getChildCount()I

    move-result v5

    move v3, v4

    .line 89
    :goto_0
    if-ge v3, v5, :cond_2

    .line 90
    invoke-virtual {p0, v3}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, v1, Lcom/twitter/android/media/stickers/StickerView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 92
    check-cast v0, Lcom/twitter/android/media/stickers/StickerView;

    .line 93
    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerView;->getDisplayInfo()Lcom/twitter/android/media/stickers/m;

    move-result-object v6

    .line 94
    invoke-virtual {v6}, Lcom/twitter/android/media/stickers/m;->a()F

    move-result v2

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-nez v2, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0f0459

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 96
    int-to-float v7, v2

    iget v8, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->D:F

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/twitter/android/media/stickers/m;->b(F)V

    .line 97
    int-to-float v2, v2

    iget v7, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->D:F

    div-float v7, v2, v7

    iget-object v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->C:Lcom/twitter/model/media/EditableImage;

    iget v8, v2, Lcom/twitter/model/media/EditableImage;->e:I

    iget-object v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->C:Lcom/twitter/model/media/EditableImage;

    iget-object v2, v2, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    check-cast v2, Lcom/twitter/media/model/ImageFile;

    iget-object v2, v2, Lcom/twitter/media/model/ImageFile;->e:Lcom/twitter/util/math/Size;

    .line 100
    invoke-virtual {v2}, Lcom/twitter/util/math/Size;->g()F

    move-result v9

    iget-object v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->C:Lcom/twitter/model/media/EditableImage;

    iget-object v2, v2, Lcom/twitter/model/media/EditableImage;->f:Lcom/twitter/util/math/c;

    sget-object v10, Lcom/twitter/util/math/c;->c:Lcom/twitter/util/math/c;

    .line 101
    invoke-static {v2, v10}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/util/math/c;

    .line 97
    invoke-virtual {v6, v7, v8, v9, v2}, Lcom/twitter/android/media/stickers/m;->a(FIFLcom/twitter/util/math/c;)V

    .line 102
    invoke-direct {p0, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->b(Lcom/twitter/android/media/stickers/StickerView;)V

    .line 105
    :cond_0
    iget v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->D:F

    invoke-virtual {v6, v2}, Lcom/twitter/android/media/stickers/m;->a(F)Lcom/twitter/util/math/Size;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lcom/twitter/util/math/Size;->a()I

    move-result v6

    invoke-static {p1, v4, v6}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getChildMeasureSpec(III)I

    move-result v6

    .line 108
    invoke-virtual {v2}, Lcom/twitter/util/math/Size;->b()I

    move-result v2

    invoke-static {p2, v4, v2}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getChildMeasureSpec(III)I

    move-result v2

    .line 106
    invoke-virtual {v0, v6, v2}, Lcom/twitter/android/media/stickers/StickerView;->measure(II)V

    .line 111
    check-cast v1, Lcom/twitter/android/media/stickers/StickerView;

    invoke-virtual {v1}, Lcom/twitter/android/media/stickers/StickerView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v11}, Landroid/view/View;->setScaleX(F)V

    .line 113
    invoke-virtual {v0, v11}, Landroid/view/View;->setScaleY(F)V

    .line 89
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 116
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 121
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 124
    iget-object v3, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    if-eqz v3, :cond_2

    move v3, v1

    .line 125
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 277
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->requestDisallowInterceptTouchEvent(Z)V

    move v1, v2

    .line 278
    :cond_1
    :goto_2
    return v1

    :cond_2
    move v3, v2

    .line 124
    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    .line 128
    invoke-direct {p0, p1, v8}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a(Landroid/view/MotionEvent;Lcom/twitter/android/media/stickers/StickerView;)Z

    move-result v7

    .line 129
    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    if-ne v0, v8, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->v:Z

    .line 130
    if-eqz v3, :cond_3

    if-nez v7, :cond_3

    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->w:Z

    .line 131
    invoke-virtual {p0, v1}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->requestDisallowInterceptTouchEvent(Z)V

    .line 132
    iput v5, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->n:F

    .line 133
    iput v6, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->o:F

    .line 134
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->s:I

    .line 135
    iget v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->s:I

    if-eq v0, v9, :cond_4

    if-nez v7, :cond_1

    .line 136
    :cond_4
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->s:I

    .line 137
    iget v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->s:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 138
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 139
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 140
    iput v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->n:F

    .line 141
    iput v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->o:F

    goto :goto_2

    :cond_5
    move v0, v2

    .line 129
    goto :goto_3

    .line 146
    :pswitch_2
    iput-boolean v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->v:Z

    .line 147
    iput-boolean v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->w:Z

    .line 148
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->t:I

    .line 149
    iget v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->s:I

    if-eq v0, v9, :cond_1

    iget v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->t:I

    if-eq v0, v9, :cond_1

    .line 150
    iget v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->s:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 151
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 152
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 153
    iget v3, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->t:I

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 154
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 155
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 156
    iput v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->n:F

    .line 157
    iput v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->o:F

    .line 158
    iput v4, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->p:F

    .line 159
    iput v3, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->q:F

    .line 160
    add-float/2addr v4, v2

    div-float/2addr v4, v7

    .line 161
    add-float/2addr v3, v0

    div-float/2addr v3, v7

    .line 163
    invoke-static {v4, v3, v2, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a(FFFF)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->r:D

    goto/16 :goto_2

    .line 168
    :pswitch_3
    if-eqz v3, :cond_0

    .line 172
    iget v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->t:I

    if-ne v0, v9, :cond_b

    .line 173
    iget v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->n:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 174
    iget v3, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->o:F

    sub-float v3, v6, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 175
    iget-boolean v7, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->u:Z

    if-nez v7, :cond_7

    .line 176
    iget v7, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->k:F

    cmpl-float v0, v0, v7

    if-gez v0, :cond_6

    iget v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->k:F

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_9

    :cond_6
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->u:Z

    .line 178
    :cond_7
    iget-boolean v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->u:Z

    if-eqz v0, :cond_0

    .line 179
    iput-boolean v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->v:Z

    .line 180
    iput-boolean v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->w:Z

    .line 181
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->q()V

    .line 182
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 183
    iget v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->s:I

    if-ne v0, v2, :cond_8

    .line 184
    iget v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->n:F

    sub-float v0, v5, v0

    .line 185
    iget v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->o:F

    sub-float v2, v6, v2

    .line 186
    iget-object v3, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/twitter/android/media/stickers/StickerView;->offsetLeftAndRight(I)V

    .line 187
    iget-object v3, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/twitter/android/media/stickers/StickerView;->offsetTopAndBottom(I)V

    .line 188
    iget-object v3, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    invoke-virtual {v3}, Lcom/twitter/android/media/stickers/StickerView;->getDisplayInfo()Lcom/twitter/android/media/stickers/m;

    move-result-object v3

    .line 189
    invoke-direct {p0, v3, v0, v2}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a(Lcom/twitter/android/media/stickers/m;FF)V

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 192
    iget-object v3, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->m:Landroid/graphics/Rect;

    iget v4, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->l:I

    sub-int v4, v0, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 193
    iget-object v3, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->m:Landroid/graphics/Rect;

    iget v4, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->l:I

    sub-int v4, v2, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 194
    iget-object v3, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->m:Landroid/graphics/Rect;

    iget v4, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->l:I

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 195
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->m:Landroid/graphics/Rect;

    iget v3, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->l:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 196
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a:Lcom/twitter/android/media/widget/HoverGarbageCanView;

    iget-object v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->m:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v2}, Lcom/twitter/android/media/widget/HoverGarbageCanView;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 197
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/stickers/StickerView;->setAlpha(F)V

    .line 202
    :cond_8
    :goto_5
    iput v5, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->n:F

    .line 203
    iput v6, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->o:F

    .line 204
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->invalidate()V

    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 176
    goto/16 :goto_4

    .line 199
    :cond_a
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/stickers/StickerView;->setAlpha(F)V

    goto :goto_5

    .line 207
    :cond_b
    iget v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->s:I

    if-eq v0, v9, :cond_0

    .line 208
    iput-boolean v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->v:Z

    .line 209
    iput-boolean v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->w:Z

    .line 210
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->q()V

    .line 212
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/stickers/StickerView;->setFromMemoryOnly(Z)V

    .line 213
    iget v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->s:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 214
    iget v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->t:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 215
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 216
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 217
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 218
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 219
    add-float v5, v3, v4

    div-float/2addr v5, v7

    .line 220
    add-float v6, v0, v2

    div-float/2addr v6, v7

    .line 221
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 223
    invoke-static {v5, v6, v3, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a(FFFF)D

    move-result-wide v8

    .line 226
    iget-object v5, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    iget-wide v10, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->r:D

    sub-double/2addr v10, v8

    double-to-float v6, v10

    invoke-direct {p0, v5, v6}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a(Lcom/twitter/android/media/stickers/StickerView;F)V

    .line 228
    iget v5, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->n:F

    iget v6, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->o:F

    invoke-static {v7, v5, v6}, Lcom/twitter/util/math/b;->a(Landroid/graphics/PointF;FF)F

    move-result v5

    .line 230
    iget v6, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->p:F

    iget v10, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->q:F

    invoke-static {v7, v6, v10}, Lcom/twitter/util/math/b;->a(Landroid/graphics/PointF;FF)F

    move-result v6

    .line 232
    invoke-static {v7, v3, v0}, Lcom/twitter/util/math/b;->a(Landroid/graphics/PointF;FF)F

    move-result v10

    .line 233
    invoke-static {v7, v4, v2}, Lcom/twitter/util/math/b;->a(Landroid/graphics/PointF;FF)F

    move-result v7

    .line 234
    sub-float/2addr v5, v10

    .line 235
    sub-float/2addr v6, v7

    .line 236
    add-float/2addr v5, v6

    .line 238
    iget-object v6, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    invoke-direct {p0, v6, v5}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->b(Lcom/twitter/android/media/stickers/StickerView;F)V

    .line 240
    iput v3, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->n:F

    .line 241
    iput v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->o:F

    .line 242
    iput v4, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->p:F

    .line 243
    iput v2, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->q:F

    .line 244
    iput-wide v8, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->r:D

    goto/16 :goto_2

    .line 250
    :pswitch_4
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->t()V

    goto/16 :goto_2

    .line 254
    :pswitch_5
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a:Lcom/twitter/android/media/widget/HoverGarbageCanView;

    invoke-virtual {v0}, Lcom/twitter/android/media/widget/HoverGarbageCanView;->getGarbageCanState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 255
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->b()V

    .line 262
    :cond_c
    :goto_6
    :pswitch_6
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->t()V

    .line 263
    if-eqz v3, :cond_d

    .line 264
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/stickers/StickerView;->setFromMemoryOnly(Z)V

    .line 265
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerView;->requestLayout()V

    .line 266
    iget-boolean v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->w:Z

    if-eqz v0, :cond_d

    .line 267
    invoke-direct {p0, v8}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->b(Lcom/twitter/android/media/stickers/StickerView;)V

    .line 270
    :cond_d
    invoke-virtual {p0, v2}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 256
    :cond_e
    iget-boolean v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->v:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    if-eqz v0, :cond_c

    .line 257
    iget-object v0, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->x:Lcom/twitter/android/media/stickers/StickerView;

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a(Landroid/view/MotionEvent;Lcom/twitter/android/media/stickers/StickerView;)Z

    goto :goto_6

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setStickerEditListener(Lcom/twitter/android/media/stickers/a;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->y:Lcom/twitter/android/media/stickers/a;

    .line 82
    return-void
.end method
