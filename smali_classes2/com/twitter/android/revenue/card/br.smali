.class public Lcom/twitter/android/revenue/card/br;
.super Lcom/twitter/android/revenue/card/p;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/av/card/k;
.implements Lcom/twitter/library/widget/a;


# instance fields
.field protected c:Lcom/twitter/android/av/card/i;

.field private d:Lcom/twitter/media/ui/image/MediaImageView;

.field private e:Lcom/twitter/android/revenue/card/CardMediaView;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lclm;)V
    .locals 7

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/twitter/android/revenue/card/p;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lclm;)V

    .line 45
    new-instance v0, Lcom/twitter/android/av/card/i;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/br;->d:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v3, p0, Lcom/twitter/android/revenue/card/br;->b:Landroid/view/ViewGroup;

    const v4, 0x7f1304d5

    sget-object v6, Lbxa;->c:Lbxa;

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/av/card/i;-><init>(Landroid/content/Context;Lcom/twitter/media/ui/image/MediaImageView;Landroid/view/ViewGroup;ILcom/twitter/android/av/card/k;Lbxa;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/br;->c:Lcom/twitter/android/av/card/i;

    .line 47
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/br;->q:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/br;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 48
    invoke-static {v1, v2}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v1

    .line 47
    invoke-static {v0, v1}, Lcom/twitter/android/revenue/y;->a(Landroid/content/res/Resources;Z)[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/revenue/card/br;->a([F)V

    .line 49
    return-void
.end method

.method private s()V
    .locals 8

    .prologue
    .line 97
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->w:Lcom/twitter/library/card/CardContext;

    invoke-static {v0}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 98
    iget-object v2, p0, Lcom/twitter/android/revenue/card/br;->a:Lclm;

    iget-wide v4, p0, Lcom/twitter/android/revenue/card/br;->y:J

    iget-boolean v1, p0, Lcom/twitter/android/revenue/card/br;->f:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 99
    :goto_0
    invoke-static {v2, v4, v5, v0, v1}, Lcom/twitter/android/av/revenue/VideoConversationCardData;->a(Lclm;JLcom/twitter/model/core/Tweet;Z)Lcom/twitter/android/av/revenue/VideoConversationCardData;

    move-result-object v7

    .line 100
    const-string/jumbo v0, "player_stream_url"

    iget-object v1, p0, Lcom/twitter/android/revenue/card/br;->a:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->q:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/br;->b:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/twitter/android/revenue/card/br;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 102
    invoke-static {v3}, Lcom/twitter/android/card/l;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/revenue/card/br;->r:Lcom/twitter/android/card/i;

    iget-object v5, p0, Lcom/twitter/android/revenue/card/br;->e:Lcom/twitter/android/revenue/card/CardMediaView;

    iget-object v6, p0, Lcom/twitter/android/revenue/card/br;->w:Lcom/twitter/library/card/CardContext;

    .line 101
    invoke-static/range {v0 .. v7}, Lcom/twitter/android/revenue/card/bp;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/twitter/android/card/i;Landroid/view/View;Lcom/twitter/library/card/CardContext;Lcom/twitter/android/av/revenue/VideoConversationCardData;)V

    .line 104
    return-void

    .line 98
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/twitter/android/revenue/card/p;->a()V

    .line 77
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->d:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->d:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v1, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-eq v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->c:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->e()V

    .line 83
    :cond_1
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/twitter/android/revenue/card/p;->a(Lcom/twitter/library/card/av;)V

    .line 68
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v1, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->c:Lcom/twitter/android/av/card/i;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/br;->w:Lcom/twitter/library/card/CardContext;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/br;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/card/i;->a(Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 70
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/br;->s()V

    .line 72
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/br;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/twitter/android/revenue/card/p;->a(Z)V

    .line 115
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->c:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->k()V

    .line 116
    return-void
.end method

.method public ao_()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/twitter/android/revenue/card/p;->ao_()V

    .line 109
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->c:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->j()V

    .line 110
    return-void
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->c:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->at_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->c:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->ay_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->d:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->d:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->c:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->l()V

    .line 124
    return-void
.end method

.method public ba_()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/br;->s()V

    .line 129
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->c:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->c()Z

    move-result v0

    return v0
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->c:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->c:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method k()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/twitter/android/revenue/card/p;->k()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/revenue/card/br;->f:Z

    .line 94
    return-void
.end method

.method public p()V
    .locals 3

    .prologue
    .line 53
    const-string/jumbo v0, "player_image"

    iget-object v1, p0, Lcom/twitter/android/revenue/card/br;->a:Lclm;

    invoke-static {v0, v1}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    new-instance v0, Lcom/twitter/android/revenue/card/CardMediaView;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/br;->q:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/twitter/android/revenue/card/CardMediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/br;->e:Lcom/twitter/android/revenue/card/CardMediaView;

    .line 56
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->e:Lcom/twitter/android/revenue/card/CardMediaView;

    const v2, 0x7f1304d5

    invoke-virtual {v0, v2}, Lcom/twitter/android/revenue/card/CardMediaView;->setId(I)V

    .line 57
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->e:Lcom/twitter/android/revenue/card/CardMediaView;

    const v2, 0x7f130210

    invoke-virtual {v0, v2}, Lcom/twitter/android/revenue/card/CardMediaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/br;->d:Lcom/twitter/media/ui/image/MediaImageView;

    .line 58
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->d:Lcom/twitter/media/ui/image/MediaImageView;

    const-string/jumbo v2, "card"

    invoke-virtual {v0, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setImageType(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->d:Lcom/twitter/media/ui/image/MediaImageView;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-virtual {v1, v2}, Lcln;->a(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setAspectRatio(F)V

    .line 60
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->d:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, v1, Lcln;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 61
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->d:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 63
    :cond_0
    return-void
.end method

.method public q()Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/android/revenue/card/br;->e:Lcom/twitter/android/revenue/card/CardMediaView;

    return-object v0
.end method
