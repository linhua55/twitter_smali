.class public Lcom/twitter/library/media/widget/b;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    .line 25
    invoke-static {p2, v0}, Lcug;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 26
    invoke-static {p2}, Lcom/twitter/library/media/widget/b;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lcom/twitter/library/media/widget/PromotedSlideshowMediaView;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/media/widget/PromotedSlideshowMediaView;-><init>(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V

    .line 29
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    invoke-direct {v0, p1, v1, v1}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;-><init>(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method private static a(Lcom/twitter/model/core/Tweet;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    const-string/jumbo v3, "2"

    invoke-virtual {v0, v3}, Lcss;->a(Ljava/lang/String;)Z

    move-result v3

    .line 50
    const-string/jumbo v0, "android_revenue_adaptive_media_parent_3515"

    invoke-static {v0}, Lcom/twitter/config/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string/jumbo v4, "unassigned"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 53
    :goto_0
    const-string/jumbo v4, "android_revenue_adaptive_media_3484"

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v6, "slideshow"

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 56
    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 52
    goto :goto_0
.end method

.method private b(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    sget-object v1, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    invoke-static {p2, v1}, Lcug;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 36
    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Lcss;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    new-instance v0, Lcom/twitter/library/media/widget/AnimatablePromotedAdaptiveMediaView;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/media/widget/AnimatablePromotedAdaptiveMediaView;-><init>(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V

    .line 44
    :goto_0
    return-object v0

    .line 38
    :cond_0
    if-le v1, v0, :cond_1

    invoke-static {p2}, Lcom/twitter/library/media/widget/b;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Lcom/twitter/library/media/widget/PromotedSlideshowMediaView;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/media/widget/PromotedSlideshowMediaView;-><init>(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V

    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Lcom/twitter/library/media/widget/PromotedAdaptiveTweetMediaView;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/media/widget/PromotedAdaptiveTweetMediaView;-><init>(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V

    goto :goto_0

    .line 44
    :cond_2
    new-instance v1, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->X()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-direct {v1, p1, v0}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;-><init>(Landroid/content/Context;Z)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/twitter/library/media/widget/b;->b(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/media/widget/b;->a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    move-result-object v0

    goto :goto_0
.end method
