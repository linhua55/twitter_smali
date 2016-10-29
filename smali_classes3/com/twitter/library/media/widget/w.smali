.class public Lcom/twitter/library/media/widget/w;
.super Landroid/graphics/drawable/Drawable;
.source "Twttr"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/media/widget/x;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/graphics/drawable/BitmapDrawable;

.field private final d:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/util/List;Landroid/graphics/Bitmap;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/media/widget/x;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "F)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/library/media/widget/w;->a:Landroid/graphics/Paint;

    .line 31
    iput-object p2, p0, Lcom/twitter/library/media/widget/w;->b:Ljava/util/List;

    .line 32
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    .line 33
    iput p4, p0, Lcom/twitter/library/media/widget/w;->d:F

    .line 34
    return-void

    .line 32
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/x;

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    iget-object v2, v0, Lcom/twitter/library/media/widget/x;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 44
    iget-object v0, v0, Lcom/twitter/library/media/widget/x;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/twitter/library/media/widget/w;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getOpacity()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 87
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 88
    iget-object v1, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 89
    div-float/2addr v0, v1

    .line 90
    iget v1, p0, Lcom/twitter/library/media/widget/w;->d:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 92
    const/4 v2, 0x0

    .line 93
    iget v1, p0, Lcom/twitter/library/media/widget/w;->d:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    move v6, v0

    move v7, v1

    move v8, v2

    .line 107
    :goto_1
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/x;

    .line 108
    iget-object v1, v0, Lcom/twitter/library/media/widget/x;->a:Landroid/graphics/Bitmap;

    .line 109
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 110
    const/4 v2, 0x6

    new-array v3, v2, [F

    const/4 v2, 0x0

    const/high16 v4, -0x41000000    # -0.5f

    aput v4, v3, v2

    const/4 v2, 0x1

    neg-float v4, v1

    aput v4, v3, v2

    const/4 v2, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    aput v4, v3, v2

    const/4 v2, 0x3

    neg-float v4, v1

    aput v4, v3, v2

    const/4 v2, 0x4

    const/high16 v4, 0x3f000000    # 0.5f

    aput v4, v3, v2

    const/4 v2, 0x5

    aput v1, v3, v2

    .line 115
    iget-object v1, v0, Lcom/twitter/library/media/widget/x;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 116
    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 117
    aget v2, v3, v1

    mul-float/2addr v2, v6

    aput v2, v3, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 97
    :cond_0
    iget v1, p0, Lcom/twitter/library/media/widget/w;->d:F

    sub-float v0, v1, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/twitter/library/media/widget/w;->d:F

    mul-float/2addr v0, v3

    goto :goto_0

    .line 102
    :cond_1
    const/4 v2, 0x0

    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    move v6, v0

    move v7, v1

    move v8, v2

    goto :goto_1

    .line 119
    :cond_2
    if-eqz v8, :cond_3

    .line 120
    const/4 v1, 0x0

    aget v2, v3, v1

    int-to-float v4, v8

    sub-float/2addr v2, v4

    aput v2, v3, v1

    .line 121
    const/4 v1, 0x2

    aget v2, v3, v1

    int-to-float v4, v8

    sub-float/2addr v2, v4

    aput v2, v3, v1

    .line 122
    const/4 v1, 0x4

    aget v2, v3, v1

    int-to-float v4, v8

    sub-float/2addr v2, v4

    aput v2, v3, v1

    .line 124
    :cond_3
    if-eqz v7, :cond_4

    .line 125
    const/4 v1, 0x1

    aget v2, v3, v1

    int-to-float v4, v7

    sub-float/2addr v2, v4

    aput v2, v3, v1

    .line 126
    const/4 v1, 0x3

    aget v2, v3, v1

    int-to-float v4, v7

    sub-float/2addr v2, v4

    aput v2, v3, v1

    .line 127
    const/4 v1, 0x5

    aget v2, v3, v1

    int-to-float v4, v7

    sub-float/2addr v2, v4

    aput v2, v3, v1

    .line 130
    :cond_4
    iget-object v1, v0, Lcom/twitter/library/media/widget/x;->a:Landroid/graphics/Bitmap;

    .line 131
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 133
    const/4 v1, 0x6

    new-array v1, v1, [F

    const/4 v5, 0x0

    const/4 v10, 0x0

    aput v10, v1, v5

    const/4 v5, 0x1

    const/4 v10, 0x0

    aput v10, v1, v5

    const/4 v5, 0x2

    int-to-float v10, v2

    aput v10, v1, v5

    const/4 v5, 0x3

    const/4 v10, 0x0

    aput v10, v1, v5

    const/4 v5, 0x4

    int-to-float v2, v2

    aput v2, v1, v5

    const/4 v2, 0x5

    int-to-float v4, v4

    aput v4, v1, v2

    .line 139
    iget-object v0, v0, Lcom/twitter/library/media/widget/x;->c:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    goto/16 :goto_2

    .line 141
    :cond_5
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/widget/w;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 63
    return-void
.end method
