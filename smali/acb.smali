.class public Lacb;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    const-string/jumbo v0, "media_async_upload_gif_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const-string/jumbo v0, "media_async_upload_max_gif_size"

    .line 17
    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;F)F

    move-result v0

    .line 18
    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 19
    const/high16 v1, 0x49800000    # 1048576.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 22
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x500000

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 27
    const-string/jumbo v0, "media_async_upload_gif_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string/jumbo v0, "media_async_upload_max_gif_size"

    .line 29
    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;F)F

    move-result v0

    .line 30
    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 31
    const v1, 0x7f0a049b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a049c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
