.class public Lcom/twitter/android/card/bq;
.super Lcom/twitter/library/card/aw;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/twitter/library/card/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, p2, :cond_0

    .line 30
    new-instance v0, Lcom/twitter/android/card/bo;

    invoke-direct {v0, p1, p2}, Lcom/twitter/android/card/bo;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 35
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string/jumbo v0, "vine_card_attribution_4810"

    invoke-static {v0}, Lcom/twitter/config/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    new-instance v0, Lcom/twitter/android/card/br;

    invoke-direct {v0, p1, p2}, Lcom/twitter/android/card/br;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/twitter/android/av/card/l;

    invoke-direct {v0, p1, p2}, Lcom/twitter/android/av/card/l;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "player_url"

    invoke-static {v0, p2}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/twitter/library/util/an;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
