.class public Lcom/facebook/drawee/drawable/k;
.super Landroid/graphics/drawable/Drawable;
.source "Twttr"

# interfaces
.implements Lcom/facebook/drawee/drawable/i;


# instance fields
.field final a:[F

.field final b:Landroid/graphics/Paint;

.field c:Z

.field d:F

.field e:I

.field final f:Landroid/graphics/Path;

.field private g:I

.field private final h:Landroid/graphics/RectF;

.field private i:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->a:[F

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/Paint;

    .line 30
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/k;->c:Z

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/drawable/k;->d:F

    .line 32
    iput v2, p0, Lcom/facebook/drawee/drawable/k;->e:I

    .line 33
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->f:Landroid/graphics/Path;

    .line 34
    iput v2, p0, Lcom/facebook/drawee/drawable/k;->g:I

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/RectF;

    .line 36
    const/16 v0, 0xff

    iput v0, p0, Lcom/facebook/drawee/drawable/k;->i:I

    .line 44
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/drawable/k;->a(I)V

    .line 45
    return-void
.end method

.method public static a(Landroid/graphics/drawable/ColorDrawable;)Lcom/facebook/drawee/drawable/k;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/facebook/drawee/drawable/k;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/drawee/drawable/k;-><init>(I)V

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 224
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 225
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 226
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/drawee/drawable/k;->d:F

    div-float/2addr v1, v5

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->d:F

    div-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 227
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->c:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v5

    .line 229
    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/drawee/drawable/k;->d:F

    neg-float v1, v1

    div-float/2addr v1, v5

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->d:F

    neg-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 234
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/k;->a:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "radius should be non negative"

    invoke-static {v0, v1}, Lbk;->a(ZLjava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->a:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 137
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/k;->a()V

    .line 138
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->invalidateSelf()V

    .line 139
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->g:I

    if-eq v0, p1, :cond_0

    .line 147
    iput p1, p0, Lcom/facebook/drawee/drawable/k;->g:I

    .line 148
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->invalidateSelf()V

    .line 150
    :cond_0
    return-void
.end method

.method public a(IF)V
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->e:I

    if-eq v0, p1, :cond_0

    .line 168
    iput p1, p0, Lcom/facebook/drawee/drawable/k;->e:I

    .line 169
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->invalidateSelf()V

    .line 172
    :cond_0
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->d:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 173
    iput p2, p0, Lcom/facebook/drawee/drawable/k;->d:F

    .line 174
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/k;->a()V

    .line 175
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->invalidateSelf()V

    .line 177
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/k;->c:Z

    .line 106
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/k;->a()V

    .line 107
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->invalidateSelf()V

    .line 108
    return-void
.end method

.method public a([F)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 118
    if-nez p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->a:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 124
    :goto_0
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/k;->a()V

    .line 125
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->invalidateSelf()V

    .line 126
    return-void

    .line 121
    :cond_0
    array-length v0, p1

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v2, "radii should have exactly 8 values"

    invoke-static {v0, v2}, Lbk;->a(ZLjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->a:[F

    invoke-static {p1, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 121
    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/facebook/drawee/drawable/k;->g:I

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->i:I

    invoke-static {v1, v2}, Lcom/facebook/drawee/drawable/d;->a(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 90
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/facebook/drawee/drawable/k;->e:I

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->i:I

    invoke-static {v1, v2}, Lcom/facebook/drawee/drawable/d;->a(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/facebook/drawee/drawable/k;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 96
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->i:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->g:I

    iget v1, p0, Lcom/facebook/drawee/drawable/k;->i:I

    invoke-static {v0, v1}, Lcom/facebook/drawee/drawable/d;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/drawee/drawable/d;->a(I)I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 82
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/k;->a()V

    .line 83
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->i:I

    if-eq p1, v0, :cond_0

    .line 187
    iput p1, p0, Lcom/facebook/drawee/drawable/k;->i:I

    .line 188
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->invalidateSelf()V

    .line 190
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method
