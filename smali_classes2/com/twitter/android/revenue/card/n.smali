.class public Lcom/twitter/android/revenue/card/n;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/revenue/card/bk;


# instance fields
.field private a:Lcom/twitter/android/revenue/card/CardMediaView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lclm;F)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-direct {v0, p1}, Lcom/twitter/android/revenue/card/CardMediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/n;->a:Lcom/twitter/android/revenue/card/CardMediaView;

    .line 24
    invoke-direct {p0, p2}, Lcom/twitter/android/revenue/card/n;->a(Lclm;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/twitter/android/revenue/card/n;->a:Lcom/twitter/android/revenue/card/CardMediaView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, p3}, Lcom/twitter/android/revenue/card/n;->a(Lcom/twitter/android/revenue/card/CardMediaView;Lcln;ZF)V

    .line 26
    return-void
.end method

.method private a(Lclm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "cover_player_image"

    invoke-virtual {p1, v0}, Lclm;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string/jumbo v0, "cover_player_image"

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "cover_promo_image"

    goto :goto_0
.end method

.method private a(Lcom/twitter/android/revenue/card/CardMediaView;Lcln;ZF)V
    .locals 0

    .prologue
    .line 37
    if-eqz p2, :cond_0

    .line 38
    invoke-static {p1, p2, p3, p4}, Lcom/twitter/android/revenue/y;->a(Lcom/twitter/android/revenue/card/CardMediaView;Lcln;ZF)V

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/revenue/card/n;->a:Lcom/twitter/android/revenue/card/CardMediaView;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;JLcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    return-object v0
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/revenue/card/n;->a:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/CardMediaView;->getMediaImageView()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 96
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/twitter/android/revenue/card/n;->a:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/CardMediaView;->getMediaImageView()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 101
    return-void
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/twitter/library/widget/a;->j:Lcom/twitter/library/widget/a;

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
