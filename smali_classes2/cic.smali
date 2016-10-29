.class public Lcic;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()Lcom/twitter/model/timeline/bu;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/twitter/model/timeline/bw;

    invoke-direct {v0}, Lcom/twitter/model/timeline/bw;-><init>()V

    .line 19
    invoke-static {}, Lcic;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/bw;->b(Z)Lcom/twitter/model/timeline/bw;

    move-result-object v0

    .line 20
    invoke-static {}, Lcic;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/bw;->c(Z)Lcom/twitter/model/timeline/bw;

    move-result-object v0

    .line 21
    invoke-static {}, Lcic;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/bw;->d(Z)Lcom/twitter/model/timeline/bw;

    move-result-object v0

    .line 22
    invoke-static {}, Lcic;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/bw;->e(Z)Lcom/twitter/model/timeline/bw;

    move-result-object v0

    .line 23
    invoke-static {}, Lcey;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/bw;->f(Z)Lcom/twitter/model/timeline/bw;

    move-result-object v0

    .line 24
    invoke-static {}, Lcey;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/bw;->g(Z)Lcom/twitter/model/timeline/bw;

    move-result-object v0

    .line 25
    invoke-static {}, Lcic;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/bw;->h(Z)Lcom/twitter/model/timeline/bw;

    move-result-object v0

    .line 26
    invoke-static {}, Lcic;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/bw;->i(Z)Lcom/twitter/model/timeline/bw;

    move-result-object v0

    .line 27
    invoke-static {}, Lcic;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/bw;->a(Z)Lcom/twitter/model/timeline/bw;

    move-result-object v0

    .line 28
    invoke-static {}, Lcic;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/bw;->j(Z)Lcom/twitter/model/timeline/bw;

    move-result-object v0

    .line 29
    invoke-static {}, Lcic;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/bw;->k(Z)Lcom/twitter/model/timeline/bw;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/twitter/model/timeline/bw;->a()Lcom/twitter/model/timeline/bu;

    move-result-object v0

    .line 18
    return-object v0
.end method

.method public static b()Z
    .locals 4

    .prologue
    .line 66
    const-string/jumbo v0, "ad_formats_ad_slots_android_4189"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "ad_slots"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c()Z
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "recap_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static d()Z
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "wtf_tweet_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static e()Z
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "timeline_user_messaging_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static f()Z
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "wtf_follow_module_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static g()Z
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "wtf_profile_card_carousel_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static h()Z
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "ad_formats_carousel_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static i()Z
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "timeline_module_footers_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static j()Z
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "ad_formats_no_screen_name_ads_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
