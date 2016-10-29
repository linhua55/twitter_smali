.class public Lcom/twitter/android/revenue/card/bh;
.super Lcom/twitter/android/revenue/card/p;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/a;


# instance fields
.field private c:Lcom/twitter/android/revenue/card/bl;

.field private d:Lcom/twitter/android/revenue/card/bk;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lclm;)V
    .locals 4

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/twitter/android/revenue/card/p;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lclm;)V

    .line 40
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bh;->a:Lclm;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/bh;->q:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/revenue/card/bh;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 41
    invoke-static {v2, v3}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v2

    const/4 v3, 0x1

    .line 40
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/android/revenue/card/bh;->a(Landroid/content/res/Resources;Lclm;ZZ)[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/revenue/card/bh;->a([F)V

    .line 42
    return-void
.end method

.method private a(Landroid/content/res/Resources;Lclm;ZZ)[F
    .locals 1

    .prologue
    .line 144
    const-string/jumbo v0, "cover_player_stream_url"

    invoke-virtual {p2, v0}, Lclm;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_1

    const-string/jumbo v0, "player_stream_url"

    .line 145
    invoke-virtual {p2, v0}, Lclm;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    invoke-static {p1, p3}, Lcom/twitter/android/revenue/y;->a(Landroid/content/res/Resources;Z)[F

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/twitter/android/revenue/y;->b(Landroid/content/res/Resources;)[F

    move-result-object v0

    goto :goto_0
.end method

.method private s()Lcom/twitter/android/revenue/card/bl;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->c:Lcom/twitter/android/revenue/card/bl;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/twitter/android/revenue/card/bl;

    invoke-direct {v0}, Lcom/twitter/android/revenue/card/bl;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bh;->c:Lcom/twitter/android/revenue/card/bl;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->c:Lcom/twitter/android/revenue/card/bl;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/twitter/android/revenue/card/p;->a()V

    .line 111
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    invoke-interface {v0}, Lcom/twitter/android/revenue/card/bk;->f()V

    .line 112
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 7

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/twitter/android/revenue/card/p;->a(Lcom/twitter/library/card/av;)V

    .line 81
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-static {v0}, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->w:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "CardContext should not be null in onAttach!"

    invoke-static {v0, v1}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->w:Lcom/twitter/library/card/CardContext;

    invoke-static {v0}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v3

    .line 86
    if-eqz v3, :cond_1

    .line 87
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/bh;->l()Landroid/app/Activity;

    move-result-object v2

    iget-wide v4, p0, Lcom/twitter/android/revenue/card/bh;->y:J

    iget-object v6, p0, Lcom/twitter/android/revenue/card/bh;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface/range {v1 .. v6}, Lcom/twitter/android/revenue/card/bk;->a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;JLcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 89
    :cond_1
    return-void

    .line 82
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/bh;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/twitter/android/revenue/card/p;->a(Z)V

    .line 105
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    invoke-interface {v0, p1}, Lcom/twitter/android/revenue/card/bk;->b(Z)V

    .line 106
    return-void
.end method

.method public ao_()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/twitter/android/revenue/card/p;->ao_()V

    .line 94
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    invoke-interface {v0}, Lcom/twitter/android/revenue/card/bk;->b()V

    .line 95
    return-void
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    invoke-interface {v0}, Lcom/twitter/android/revenue/card/bk;->at_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    invoke-interface {v0}, Lcom/twitter/android/revenue/card/bk;->ay_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    invoke-interface {v0}, Lcom/twitter/android/revenue/card/bk;->e()V

    .line 100
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    invoke-interface {v0}, Lcom/twitter/android/revenue/card/bk;->c()Z

    move-result v0

    return v0
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    invoke-interface {v0}, Lcom/twitter/android/revenue/card/bk;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    invoke-interface {v0}, Lcom/twitter/android/revenue/card/bk;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected k()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 60
    invoke-super {p0}, Lcom/twitter/android/revenue/card/p;->k()V

    .line 62
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    invoke-interface {v0, v7}, Lcom/twitter/android/revenue/card/bk;->a(Z)V

    .line 63
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->w:Lcom/twitter/library/card/CardContext;

    invoke-static {v0}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v3

    .line 64
    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Tweet should not be null in onTweetSent!"

    invoke-static {v0, v1}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    .line 65
    if-eqz v3, :cond_0

    .line 66
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/bh;->l()Landroid/app/Activity;

    move-result-object v2

    iget-wide v4, p0, Lcom/twitter/android/revenue/card/bh;->y:J

    iget-object v6, p0, Lcom/twitter/android/revenue/card/bh;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface/range {v1 .. v6}, Lcom/twitter/android/revenue/card/bk;->a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;JLcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bh;->a:Lclm;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/bh;->q:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/revenue/card/bh;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 70
    invoke-static {v2, v3}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v2

    .line 69
    invoke-direct {p0, v0, v1, v2, v7}, Lcom/twitter/android/revenue/card/bh;->a(Landroid/content/res/Resources;Lclm;ZZ)[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/revenue/card/bh;->a([F)V

    .line 71
    return-void

    :cond_1
    move v0, v7

    .line 64
    goto :goto_0
.end method

.method public p()V
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/bh;->s()Lcom/twitter/android/revenue/card/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bh;->q:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/bh;->a:Lclm;

    iget-object v3, p0, Lcom/twitter/android/revenue/card/bh;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/revenue/card/bl;->a(Landroid/content/Context;Lclm;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/android/revenue/card/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    .line 55
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/twitter/android/revenue/card/bk;->a(Z)V

    .line 56
    return-void
.end method

.method public q()Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bh;->d:Lcom/twitter/android/revenue/card/bk;

    invoke-interface {v0}, Lcom/twitter/android/revenue/card/bk;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
