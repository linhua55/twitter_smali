.class public Lcom/twitter/android/revenue/card/bl;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method a(Landroid/content/Context;Lclm;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/android/revenue/card/bk;
    .locals 6

    .prologue
    .line 17
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, p3, :cond_0

    .line 18
    new-instance v0, Lcom/twitter/android/revenue/card/n;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/bl;->a(Landroid/content/Context;)F

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/twitter/android/revenue/card/n;-><init>(Landroid/content/Context;Lclm;F)V

    .line 27
    :goto_0
    return-object v0

    .line 19
    :cond_0
    const-string/jumbo v0, "player_stream_url"

    invoke-virtual {p2, v0}, Lclm;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    const-string/jumbo v0, "cover_player_stream_url"

    invoke-virtual {p2, v0}, Lclm;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    new-instance v0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;

    new-instance v1, Lcom/twitter/android/av/video/j;

    invoke-direct {v1}, Lcom/twitter/android/av/video/j;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo;-><init>(Landroid/content/Context;Lclm;Lcom/twitter/android/av/video/j;)V

    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Lcom/twitter/android/revenue/card/bj;

    new-instance v3, Lcom/twitter/android/av/video/j;

    invoke-direct {v3}, Lcom/twitter/android/av/video/j;-><init>()V

    .line 24
    invoke-virtual {p0, p1, p3}, Lcom/twitter/android/revenue/card/bl;->a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v4

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/bl;->a(Landroid/content/Context;)F

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/revenue/card/bj;-><init>(Landroid/content/Context;Lclm;Lcom/twitter/android/av/video/j;ZF)V

    goto :goto_0

    .line 27
    :cond_2
    new-instance v0, Lcom/twitter/android/revenue/card/bi;

    .line 28
    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/bl;->a(Landroid/content/Context;)F

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/twitter/android/revenue/card/bi;-><init>(Landroid/content/Context;Lclm;Lcom/twitter/library/widget/renderablecontent/DisplayMode;F)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z
    .locals 1

    .prologue
    .line 36
    invoke-static {p1, p2}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v0

    return v0
.end method
