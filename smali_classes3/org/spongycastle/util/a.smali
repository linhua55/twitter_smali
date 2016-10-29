.class public final Lorg/spongycastle/util/a;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a([B)I
    .locals 3

    .prologue
    .line 310
    if-nez p0, :cond_1

    .line 312
    const/4 v0, 0x0

    .line 324
    :cond_0
    return v0

    .line 315
    :cond_1
    array-length v1, p0

    .line 316
    add-int/lit8 v0, v1, 0x1

    .line 318
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 320
    mul-int/lit16 v0, v0, 0x101

    .line 321
    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static a([C)I
    .locals 3

    .prologue
    .line 348
    if-nez p0, :cond_1

    .line 350
    const/4 v0, 0x0

    .line 362
    :cond_0
    return v0

    .line 353
    :cond_1
    array-length v1, p0

    .line 354
    add-int/lit8 v0, v1, 0x1

    .line 356
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 358
    mul-int/lit16 v0, v0, 0x101

    .line 359
    aget-char v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static a([B[B)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 89
    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 94
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_2

    .line 96
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 102
    goto :goto_0
.end method

.method public static a([C[C)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 59
    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 64
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_2

    .line 66
    aget-char v3, p0, v0

    aget-char v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 72
    goto :goto_0
.end method

.method public static b([B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 479
    if-nez p0, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 487
    :goto_0
    return-object v0

    .line 483
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 485
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
