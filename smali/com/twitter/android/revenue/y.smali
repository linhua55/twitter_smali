.class public Lcom/twitter/android/revenue/y;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(III[F)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 84
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 85
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 86
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 87
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 88
    mul-int/lit8 v2, p1, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 89
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 92
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 93
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 94
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 95
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 96
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 97
    new-array v2, v4, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 99
    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 72
    const v0, 0x7f120073

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 73
    const v1, 0x7f0f00f2

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 74
    const v2, 0x7f120001

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 75
    const v3, 0x7f0f0114

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 76
    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v5, 0x3

    aput v3, v4, v5

    const/4 v5, 0x4

    aput v3, v4, v5

    const/4 v5, 0x5

    aput v3, v4, v5

    const/4 v5, 0x6

    aput v3, v4, v5

    const/4 v5, 0x7

    aput v3, v4, v5

    .line 77
    invoke-static {v0, v1, v2, v4}, Lcom/twitter/android/revenue/y;->a(III[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;II)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 49
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-object v0
.end method

.method public static a()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/LinearLayout;IIIIFF)V
    .locals 6

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 35
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, v0, v2

    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_0
    add-int/lit8 v0, v1, 0x1

    int-to-double v4, v0

    cmpg-double v0, v4, v2

    if-gtz v0, :cond_0

    .line 38
    invoke-static {p0, p2, p5}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v4

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move v1, v0

    goto :goto_0

    .line 40
    :cond_0
    double-to-int v0, v2

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2

    .line 41
    invoke-static {p0, p3, p5}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 43
    :goto_1
    int-to-float v1, v0

    cmpg-float v1, v1, p7

    if-gez v1, :cond_1

    .line 44
    invoke-static {p0, p4, p5}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move v0, v1

    goto :goto_1

    .line 46
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/view/View;Landroid/content/res/Resources;[F)V
    .locals 3

    .prologue
    .line 63
    const v0, 0x7f120073

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 64
    const v1, 0x7f0f00f2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 65
    const v2, 0x7f120001

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 67
    invoke-static {v0, v1, v2, p2}, Lcom/twitter/android/revenue/y;->a(III[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method

.method public static a(Lcom/twitter/android/revenue/card/CardMediaView;Lcln;ZF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    cmpl-float v0, p3, v1

    if-lez v0, :cond_0

    .line 132
    if-eqz p2, :cond_1

    .line 133
    invoke-virtual {p0, p3, v1, v1, p3}, Lcom/twitter/android/revenue/card/CardMediaView;->a(FFFF)V

    .line 138
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/CardMediaView;->getMediaImageView()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "card"

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setImageType(Ljava/lang/String;)V

    .line 140
    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {p1, v1}, Lcln;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setAspectRatio(F)V

    .line 141
    iget-object v1, p1, Lcln;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 142
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 143
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0, p3, p3, v1, v1}, Lcom/twitter/android/revenue/card/CardMediaView;->a(FFFF)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-eq v0, p1, :cond_0

    invoke-static {p0}, Lcom/twitter/util/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcln;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 122
    if-eqz p0, :cond_0

    .line 123
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcln;->a(F)F

    move-result v1

    .line 124
    const v2, 0x3ff47ae1    # 1.91f

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 126
    :cond_0
    return v0
.end method

.method public static a(F)[F
    .locals 2

    .prologue
    .line 107
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    const/4 v1, 0x2

    aput p0, v0, v1

    const/4 v1, 0x3

    aput p0, v0, v1

    const/4 v1, 0x4

    aput p0, v0, v1

    const/4 v1, 0x5

    aput p0, v0, v1

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput p0, v0, v1

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;Z)[F
    .locals 1

    .prologue
    .line 111
    const v0, 0x7f0f0114

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {p1, v0}, Lcom/twitter/android/revenue/y;->a(ZF)[F

    move-result-object v0

    return-object v0
.end method

.method public static a(ZF)[F
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 115
    if-eqz p0, :cond_0

    .line 116
    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v2, v0, v1

    aput v2, v0, v3

    aput p1, v0, v4

    aput p1, v0, v5

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v2, v0, v1

    aput v2, v0, v3

    aput v2, v0, v4

    aput v2, v0, v5

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/res/Resources;)[F
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f0f0114

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/twitter/android/revenue/y;->a(F)[F

    move-result-object v0

    return-object v0
.end method
