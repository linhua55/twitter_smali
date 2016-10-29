.class public Lcom/twitter/android/revenue/z;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/ui/view/s;)Lcom/twitter/ui/view/s;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/twitter/ui/view/u;

    invoke-direct {v0}, Lcom/twitter/ui/view/u;-><init>()V

    iget-boolean v1, p0, Lcom/twitter/ui/view/s;->b:Z

    .line 86
    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/u;->b(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/ui/view/s;->c:Z

    .line 87
    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/u;->c(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/ui/view/s;->g:Z

    .line 88
    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/u;->g(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/ui/view/s;->i:Z

    .line 89
    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/u;->i(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/u;->j(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/twitter/ui/view/u;->a()Lcom/twitter/ui/view/s;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "ad_formats_tweet_view_dwell_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 26
    invoke-static {p2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p0, p1}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 26
    :goto_0
    return v0

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lclm;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclm;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/twitter/android/revenue/z;->b(Lclm;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/widget/renderablecontent/DisplayMode;",
            "Lclm;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, p0, :cond_1

    .line 41
    :cond_0
    invoke-static {p1, p2}, Lcom/twitter/android/revenue/z;->b(Lclm;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    .line 41
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "wtf_view"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b()F
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "ad_formats_tweet_view_visibility_threshold"

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static b(Lclm;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclm;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p1, p0}, Lcln;->a(Ljava/util/List;Lclm;)Lcln;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "small_button"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()D
    .locals 4

    .prologue
    .line 54
    const-string/jumbo v0, "ad_formats_tweet_view_dwell_threshold"

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v0, v2, v3}, Lcom/twitter/config/d;->a(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 116
    const-string/jumbo v0, "large_button"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "ad_formats_media_tweet_dwell_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 120
    const-string/jumbo v0, "small_button_bio_full_tap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "ad_formats_qualified_tweet_dwell_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0403ce

    return v0
.end method

.method public static g()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f0402c4

    return v0
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f0a06b0

    return v0
.end method

.method public static i()Lcom/twitter/library/av/model/c;
    .locals 1

    .prologue
    .line 80
    const v0, 0x3ff47ae1    # 1.91f

    invoke-static {v0}, Lcom/twitter/library/av/model/c;->a(F)Lcom/twitter/library/av/model/c;

    move-result-object v0

    return-object v0
.end method

.method public static j()Z
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, "ad_formats_promoted_account_redesign_android_4569"

    invoke-static {v0}, Lcom/twitter/config/c;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static k()Z
    .locals 2

    .prologue
    .line 99
    const-string/jumbo v0, "ad_formats_promoted_account_redesign_android_4569"

    invoke-static {v0}, Lcom/twitter/config/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string/jumbo v1, "unassigned"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "control"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "ad_formats_promoted_account_redesign_android_4569"

    invoke-static {v0}, Lcom/twitter/config/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m()Z
    .locals 1

    .prologue
    .line 124
    const-string/jumbo v0, "ad_formats_profile_wtf_redesign_android_4637"

    invoke-static {v0}, Lcom/twitter/config/c;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static n()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x2

    return v0
.end method
