.class public Ltv/periscope/android/exoplayer/player/v;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 13
    if-nez p0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tkeyValueMetadata must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(D)I
    .locals 2

    .prologue
    .line 134
    const-wide v0, 0x4046800000000000L    # 45.0

    add-double/2addr v0, p0

    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 142
    invoke-static {p0}, Ltv/periscope/android/util/w;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/view/TextureView;DIIZ)I
    .locals 3

    .prologue
    .line 48
    invoke-static {p1, p2}, Ltv/periscope/android/exoplayer/player/v;->a(D)I

    move-result v0

    .line 49
    invoke-static/range {p0 .. p5}, Ltv/periscope/android/exoplayer/player/v;->b(Landroid/view/TextureView;DIIZ)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 50
    return v0
.end method

.method public static a(Landroid/view/TextureView;DIIZII)Landroid/graphics/Matrix;
    .locals 13

    .prologue
    .line 61
    .line 63
    move/from16 v0, p4

    int-to-float v1, v0

    move/from16 v0, p3

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 65
    invoke-static {p1, p2}, Ltv/periscope/android/exoplayer/player/v;->a(D)I

    move-result v7

    .line 66
    and-int/lit8 v2, v7, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 67
    move/from16 v0, p3

    int-to-float v1, v0

    move/from16 v0, p4

    int-to-float v2, v0

    div-float/2addr v1, v2

    move/from16 v2, p6

    move/from16 v3, p7

    .line 77
    :goto_0
    const/4 v4, 0x0

    .line 80
    move/from16 v0, p7

    int-to-float v5, v0

    move/from16 v0, p6

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 81
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 82
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    const/4 v5, 0x1

    move v6, v5

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v1, v5

    if-gez v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    if-eq v6, v5, :cond_0

    if-eqz p5, :cond_6

    .line 85
    :cond_0
    move/from16 v0, p6

    int-to-float v5, v0

    mul-float/2addr v5, v1

    move/from16 v0, p7

    int-to-float v6, v0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 90
    move/from16 v0, p7

    int-to-float v5, v0

    div-float v1, v5, v1

    float-to-int v1, v1

    move v5, v1

    move v1, v4

    move/from16 v4, p7

    .line 110
    :goto_3
    int-to-float v6, v5

    int-to-float v3, v3

    div-float v3, v6, v3

    .line 111
    int-to-float v6, v4

    int-to-float v2, v2

    div-float v2, v6, v2

    .line 113
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 114
    int-to-float v9, v7

    const/high16 v10, 0x42b40000    # 90.0f

    mul-float/2addr v9, v10

    div-int/lit8 v10, p6, 0x2

    int-to-float v10, v10

    div-int/lit8 v11, p7, 0x2

    int-to-float v11, v11

    invoke-virtual {v6, v9, v10, v11}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 116
    and-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_1

    .line 117
    sub-int v7, p7, p6

    div-int/lit8 v7, v7, 0x2

    .line 118
    sub-int v9, p6, p7

    div-int/lit8 v9, v9, 0x2

    .line 120
    int-to-float v7, v7

    int-to-float v9, v9

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 122
    :cond_1
    invoke-virtual {v6, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 123
    sub-int v2, p6, v5

    div-int/lit8 v2, v2, 0x2

    .line 124
    sub-int v3, p7, v4

    div-int/lit8 v3, v3, 0x2

    .line 125
    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 127
    if-eqz v1, :cond_2

    .line 128
    const/4 v1, 0x0

    invoke-static {v8}, Ltv/periscope/android/exoplayer/player/v;->a(Landroid/content/Context;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 130
    :cond_2
    return-object v6

    .line 82
    :cond_3
    const/4 v5, 0x0

    move v6, v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 95
    :cond_5
    move/from16 v0, p6

    int-to-float v5, v0

    mul-float/2addr v1, v5

    float-to-int v1, v1

    move/from16 v5, p6

    move v12, v1

    move v1, v4

    move v4, v12

    goto :goto_3

    .line 99
    :cond_6
    move/from16 v0, p7

    int-to-float v5, v0

    int-to-float v6, v3

    mul-float/2addr v6, v1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    .line 100
    const/4 v4, 0x1

    .line 103
    move/from16 v0, p6

    int-to-float v5, v0

    mul-float/2addr v1, v5

    float-to-int v1, v1

    move/from16 v5, p6

    move v12, v1

    move v1, v4

    move v4, v12

    goto :goto_3

    .line 106
    :cond_7
    move/from16 v0, p7

    int-to-float v5, v0

    div-float v1, v5, v1

    float-to-int v1, v1

    move v5, v1

    move v1, v4

    move/from16 v4, p7

    goto :goto_3

    :cond_8
    move/from16 v2, p7

    move/from16 v3, p6

    goto/16 :goto_0
.end method

.method public static b(Landroid/view/TextureView;DIIZ)Landroid/graphics/Matrix;
    .locals 9

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v7

    .line 56
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v8

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 55
    invoke-static/range {v1 .. v8}, Ltv/periscope/android/exoplayer/player/v;->a(Landroid/view/TextureView;DIIZII)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method
