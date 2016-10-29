.class public abstract Lcom/twitter/android/client/ax;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()V
    .locals 0

    .prologue
    .line 58
    invoke-static {}, Lcom/twitter/android/client/ax;->b()V

    .line 59
    invoke-static {}, Lcom/twitter/android/client/ax;->c()V

    .line 60
    return-void
.end method

.method public static b()V
    .locals 12

    .prologue
    const/4 v6, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-static {}, Lcom/twitter/library/card/bc;->b()Lcom/twitter/library/card/bc;

    move-result-object v2

    .line 70
    const-string/jumbo v0, "summary"

    new-instance v3, Lcom/twitter/android/card/bk;

    invoke-direct {v3}, Lcom/twitter/android/card/bk;-><init>()V

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v10

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->f:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v11

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->e:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v6

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 72
    const-string/jumbo v0, "summary_large_image"

    new-instance v3, Lcom/twitter/android/card/bm;

    invoke-direct {v3}, Lcom/twitter/android/card/bm;-><init>()V

    new-array v4, v11, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->e:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v10

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 75
    const-string/jumbo v0, "summary_large_image"

    new-instance v3, Lcom/twitter/android/card/bk;

    invoke-direct {v3}, Lcom/twitter/android/card/bk;-><init>()V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->f:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 76
    const-string/jumbo v0, "appplayer"

    new-instance v3, Lcom/twitter/android/revenue/card/bo;

    invoke-direct {v3}, Lcom/twitter/android/revenue/card/bo;-><init>()V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 77
    const-string/jumbo v0, "promo_website"

    new-instance v3, Lcom/twitter/android/revenue/card/bv;

    invoke-direct {v3}, Lcom/twitter/android/revenue/card/bv;-><init>()V

    new-array v4, v11, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->e:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v10

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 80
    const-string/jumbo v0, "promo_website"

    new-instance v3, Lcom/twitter/android/card/bk;

    invoke-direct {v3}, Lcom/twitter/android/card/bk;-><init>()V

    new-array v4, v9, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->f:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 81
    const-string/jumbo v0, "promo_image_app"

    new-instance v3, Lcom/twitter/android/revenue/card/az;

    invoke-direct {v3}, Lcom/twitter/android/revenue/card/az;-><init>()V

    new-array v4, v11, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->g:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v10

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 83
    const-string/jumbo v0, "2485840682:flock"

    new-instance v3, Lcom/twitter/android/revenue/card/af;

    invoke-direct {v3}, Lcom/twitter/android/revenue/card/af;-><init>()V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 84
    const-string/jumbo v0, "2485840682:flock_v2"

    new-instance v3, Lcom/twitter/android/revenue/card/af;

    invoke-direct {v3}, Lcom/twitter/android/revenue/card/af;-><init>()V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 85
    const-string/jumbo v0, "promo_app"

    new-instance v3, Lcom/twitter/android/revenue/card/d;

    invoke-direct {v3}, Lcom/twitter/android/revenue/card/d;-><init>()V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 86
    const-string/jumbo v0, "2586390716:buy_now"

    new-instance v3, Lcom/twitter/android/commerce/card/h;

    new-instance v4, Lcom/twitter/android/commerce/card/g;

    invoke-direct {v4}, Lcom/twitter/android/commerce/card/g;-><init>()V

    invoke-direct {v3, v4}, Lcom/twitter/android/commerce/card/h;-><init>(Lcom/twitter/android/revenue/card/i;)V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 88
    const-string/jumbo v0, "2586390716:buy_now_offers"

    new-instance v3, Lcom/twitter/android/commerce/card/i;

    new-instance v4, Lcom/twitter/android/commerce/card/l;

    invoke-direct {v4}, Lcom/twitter/android/commerce/card/l;-><init>()V

    invoke-direct {v3, v4}, Lcom/twitter/android/commerce/card/i;-><init>(Lcom/twitter/android/revenue/card/i;)V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 90
    const-string/jumbo v0, "2586390716:product_ad"

    new-instance v3, Lcom/twitter/android/commerce/card/o;

    invoke-direct {v3}, Lcom/twitter/android/commerce/card/o;-><init>()V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 91
    const-string/jumbo v0, "2586390716:authenticated_web_view"

    new-instance v3, Lcom/twitter/android/revenue/card/bc;

    new-instance v4, Lcom/twitter/android/commerce/card/d;

    invoke-direct {v4}, Lcom/twitter/android/commerce/card/d;-><init>()V

    invoke-direct {v3, v4}, Lcom/twitter/android/revenue/card/bc;-><init>(Lcom/twitter/android/revenue/card/i;)V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 93
    const-string/jumbo v0, "2586390716:message_me"

    new-instance v3, Lve;

    invoke-direct {v3}, Lve;-><init>()V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 95
    const-string/jumbo v0, "promotion"

    new-instance v3, Lcom/twitter/android/revenue/card/ao;

    invoke-direct {v3}, Lcom/twitter/android/revenue/card/ao;-><init>()V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 96
    const-string/jumbo v0, "app"

    new-instance v3, Lcom/twitter/android/revenue/card/d;

    invoke-direct {v3}, Lcom/twitter/android/revenue/card/d;-><init>()V

    new-array v4, v9, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 97
    const-string/jumbo v0, "app"

    new-instance v3, Lcom/twitter/android/revenue/card/aw;

    invoke-direct {v3}, Lcom/twitter/android/revenue/card/aw;-><init>()V

    new-array v4, v9, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->c:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 98
    const-string/jumbo v0, "audio"

    new-instance v3, Lcom/twitter/android/av/card/b;

    invoke-direct {v3}, Lcom/twitter/android/av/card/b;-><init>()V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 99
    const-string/jumbo v0, "amplify"

    new-instance v3, Lcom/twitter/android/av/card/h;

    invoke-direct {v3}, Lcom/twitter/android/av/card/h;-><init>()V

    new-array v4, v11, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->g:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v10

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 100
    const-string/jumbo v0, "player"

    new-instance v3, Lcom/twitter/android/card/ax;

    invoke-direct {v3}, Lcom/twitter/android/card/ax;-><init>()V

    new-array v4, v11, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->g:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v10

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 101
    const-string/jumbo v0, "player"

    new-instance v3, Lcom/twitter/android/card/bm;

    invoke-direct {v3}, Lcom/twitter/android/card/bm;-><init>()V

    new-array v4, v9, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->e:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 102
    const-string/jumbo v0, "player"

    new-instance v3, Lcom/twitter/android/card/bk;

    invoke-direct {v3}, Lcom/twitter/android/card/bk;-><init>()V

    new-array v4, v9, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->f:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 103
    const-string/jumbo v0, "direct_store_link_app"

    new-instance v3, Lcom/twitter/android/revenue/card/d;

    invoke-direct {v3}, Lcom/twitter/android/revenue/card/d;-><init>()V

    new-array v4, v9, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 104
    const-string/jumbo v0, "3260518932:moment"

    new-instance v3, Lcom/twitter/android/card/am;

    invoke-direct {v3}, Lcom/twitter/android/card/am;-><init>()V

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v10

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->f:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v11

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->e:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v6

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 106
    const-string/jumbo v0, "745291183405076480:live_video"

    new-instance v3, Lcom/twitter/android/card/aj;

    invoke-direct {v3}, Lcom/twitter/android/card/aj;-><init>()V

    new-array v4, v11, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v10

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 109
    sget-object v0, Lcom/twitter/android/card/PollCard$Configuration;->a:Lcom/twitter/android/card/PollCard$Configuration;

    .line 110
    iget-object v3, v0, Lcom/twitter/android/card/PollCard$Configuration;->name:Ljava/lang/String;

    new-instance v4, Lcom/twitter/android/card/bf;

    invoke-direct {v4, v0}, Lcom/twitter/android/card/bf;-><init>(Lcom/twitter/android/card/PollCard$Configuration;)V

    new-array v0, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v0, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v0, v9

    invoke-virtual {v2, v3, v4, v0}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 113
    sget-object v0, Lcom/twitter/android/card/PollCard$Configuration;->b:Lcom/twitter/android/card/PollCard$Configuration;

    .line 114
    iget-object v3, v0, Lcom/twitter/android/card/PollCard$Configuration;->name:Ljava/lang/String;

    new-instance v4, Lcom/twitter/android/card/bf;

    invoke-direct {v4, v0}, Lcom/twitter/android/card/bf;-><init>(Lcom/twitter/android/card/PollCard$Configuration;)V

    new-array v0, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v0, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v0, v9

    invoke-virtual {v2, v3, v4, v0}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 117
    sget-object v0, Lcom/twitter/android/card/PollCard$Configuration;->d:Lcom/twitter/android/card/PollCard$Configuration;

    .line 118
    iget-object v3, v0, Lcom/twitter/android/card/PollCard$Configuration;->name:Ljava/lang/String;

    new-instance v4, Lcom/twitter/android/card/bf;

    invoke-direct {v4, v0}, Lcom/twitter/android/card/bf;-><init>(Lcom/twitter/android/card/PollCard$Configuration;)V

    new-array v0, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v0, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v0, v9

    invoke-virtual {v2, v3, v4, v0}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 121
    sget-object v0, Lcom/twitter/android/card/PollCard$Configuration;->c:Lcom/twitter/android/card/PollCard$Configuration;

    .line 122
    iget-object v3, v0, Lcom/twitter/android/card/PollCard$Configuration;->name:Ljava/lang/String;

    new-instance v4, Lcom/twitter/android/card/bf;

    invoke-direct {v4, v0}, Lcom/twitter/android/card/bf;-><init>(Lcom/twitter/android/card/PollCard$Configuration;)V

    new-array v0, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v0, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v0, v9

    invoke-virtual {v2, v3, v4, v0}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 125
    const-string/jumbo v0, "2427656750:poll_choice4_rc"

    new-instance v3, Lcom/twitter/android/card/be;

    invoke-direct {v3}, Lcom/twitter/android/card/be;-><init>()V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 128
    new-array v3, v11, [Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->a:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    aput-object v0, v3, v1

    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->b:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    aput-object v0, v3, v9

    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->c:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    aput-object v0, v3, v10

    .line 133
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 134
    iget-object v6, v5, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->modelName:Ljava/lang/String;

    new-instance v7, Lcom/twitter/android/card/y;

    invoke-direct {v7, v5}, Lcom/twitter/android/card/y;-><init>(Lcom/twitter/android/card/ConsumerPollCard$Configuration;)V

    new-array v5, v11, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v8, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v8, v5, v1

    sget-object v8, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v8, v5, v9

    sget-object v8, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->h:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v8, v5, v10

    invoke-virtual {v2, v6, v7, v5}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    new-array v3, v11, [Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->d:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    aput-object v0, v3, v1

    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->e:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    aput-object v0, v3, v9

    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->f:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    aput-object v0, v3, v10

    .line 143
    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 144
    iget-object v6, v5, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->modelName:Ljava/lang/String;

    new-instance v7, Lcom/twitter/android/card/y;

    invoke-direct {v7, v5}, Lcom/twitter/android/card/y;-><init>(Lcom/twitter/android/card/ConsumerPollCard$Configuration;)V

    new-array v5, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v8, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v8, v5, v1

    sget-object v8, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v8, v5, v9

    invoke-virtual {v2, v6, v7, v5}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_1
    const-string/jumbo v0, "3691233323:periscope_broadcast"

    new-instance v3, Lcom/twitter/android/card/bk;

    invoke-direct {v3}, Lcom/twitter/android/card/bk;-><init>()V

    new-array v4, v9, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 148
    const-string/jumbo v0, "3691233323:periscope_broadcast"

    new-instance v3, Lcom/twitter/android/card/ar;

    invoke-direct {v3}, Lcom/twitter/android/card/ar;-><init>()V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 152
    const-string/jumbo v0, "promo_image_convo"

    new-instance v3, Lcom/twitter/android/revenue/card/x;

    invoke-direct {v3}, Lcom/twitter/android/revenue/card/x;-><init>()V

    new-array v4, v11, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v10

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 154
    const-string/jumbo v0, "promo_video_convo"

    new-instance v3, Lcom/twitter/android/revenue/card/x;

    invoke-direct {v3}, Lcom/twitter/android/revenue/card/x;-><init>()V

    new-array v4, v11, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v9

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v10

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 157
    const-string/jumbo v0, "4889131224:vine"

    new-instance v3, Lcom/twitter/android/card/bq;

    invoke-direct {v3}, Lcom/twitter/android/card/bq;-><init>()V

    new-array v4, v10, [Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v5, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    aput-object v1, v4, v9

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/card/aw;[Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 158
    return-void
.end method

.method private static c()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 165
    invoke-static {}, Lcom/twitter/library/card/ao;->a()Lcom/twitter/library/card/ao;

    move-result-object v0

    .line 167
    const-string/jumbo v1, "audio"

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    const-string/jumbo v3, "card_registry_native_audio_card_android_2758"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "native_audio"

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/card/ao;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "audio"

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    const-string/jumbo v3, "card_registry_native_audio_card_android_2758"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "native_audio"

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/card/ao;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "amplify"

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    const-string/jumbo v3, "card_registry_native_amplify_card_android_2798"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "native_amplify_enabled"

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/card/ao;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Ljava/lang/String;[Ljava/lang/String;)V

    .line 177
    const-string/jumbo v1, "amplify"

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    const-string/jumbo v3, "card_registry_native_amplify_card_android_2798"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "native_amplify_enabled"

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/card/ao;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Ljava/lang/String;[Ljava/lang/String;)V

    .line 181
    const-string/jumbo v1, "2586390716:buy_now"

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    const-string/jumbo v3, "card_registry_commerce_native_cards_android_2836"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "native_buy_now"

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/card/ao;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Ljava/lang/String;[Ljava/lang/String;)V

    .line 184
    const-string/jumbo v1, "2586390716:buy_now"

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    const-string/jumbo v3, "card_registry_commerce_native_cards_android_2836"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "native_buy_now"

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/card/ao;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Ljava/lang/String;[Ljava/lang/String;)V

    .line 188
    const-string/jumbo v1, "2586390716:buy_now_offers"

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    const-string/jumbo v3, "card_registry_commerce_native_cards_android_2836"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "native_offer"

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/card/ao;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Ljava/lang/String;[Ljava/lang/String;)V

    .line 191
    const-string/jumbo v1, "2586390716:buy_now_offers"

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    const-string/jumbo v3, "card_registry_commerce_native_cards_android_2836"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "native_offer"

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/card/ao;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Ljava/lang/String;[Ljava/lang/String;)V

    .line 194
    return-void
.end method
