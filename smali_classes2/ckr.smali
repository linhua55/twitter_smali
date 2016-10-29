.class public Lckr;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(ZZZZ)I
    .locals 1

    .prologue
    .line 28
    if-eqz p0, :cond_0

    .line 29
    const/4 v0, 0x4

    .line 36
    :goto_0
    return v0

    .line 31
    :cond_0
    if-eqz p1, :cond_2

    .line 32
    if-eqz p3, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 33
    :cond_2
    if-eqz p2, :cond_4

    .line 34
    if-eqz p3, :cond_3

    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 36
    :cond_4
    if-eqz p3, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 22
    if-eq p0, v0, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
