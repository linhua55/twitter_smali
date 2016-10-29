.class public Lcom/twitter/android/revenue/card/bn;
.super Lcom/twitter/android/revenue/card/ax;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/av/card/k;
.implements Lcom/twitter/library/widget/a;


# instance fields
.field protected r:Lcom/twitter/android/av/card/i;

.field private s:Lclm;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;I[F[F)V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/twitter/android/revenue/card/ax;-><init>(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;I[F[F)V

    .line 35
    return-void
.end method

.method private l()V
    .locals 8

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/bn;->j()Landroid/view/View;

    move-result-object v5

    .line 86
    if-eqz v5, :cond_0

    .line 87
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bn;->i:Landroid/content/Context;

    const-string/jumbo v1, "player_stream_url"

    iget-object v2, p0, Lcom/twitter/android/revenue/card/bn;->s:Lclm;

    .line 88
    invoke-static {v1, v2}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/revenue/card/bn;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/twitter/android/revenue/card/bn;->p:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 89
    invoke-static {v3}, Lcom/twitter/android/card/l;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/revenue/card/bn;->d_:Lcom/twitter/android/card/i;

    iget-object v6, p0, Lcom/twitter/android/revenue/card/bn;->o:Lcom/twitter/library/card/CardContext;

    iget-object v7, p0, Lcom/twitter/android/revenue/card/bn;->s:Lclm;

    .line 90
    invoke-static {v7}, Lcom/twitter/android/av/revenue/VideoAppCardData;->a(Lclm;)Lcom/twitter/android/av/revenue/VideoAppCardData;

    move-result-object v7

    .line 87
    invoke-static/range {v0 .. v7}, Lcom/twitter/android/revenue/card/bp;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/twitter/android/card/i;Landroid/view/View;Lcom/twitter/library/card/CardContext;Lcom/twitter/android/av/revenue/VideoAppCardData;)V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/twitter/android/revenue/card/ax;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    .line 40
    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/bn;->c(Landroid/content/Context;)Lcom/twitter/android/av/card/i;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bn;->r:Lcom/twitter/android/av/card/i;

    .line 42
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bn;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/twitter/android/revenue/card/ax;->a()V

    .line 68
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bn;->r:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->e()V

    .line 69
    return-void
.end method

.method public a(JLclm;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/revenue/card/ax;->a(JLclm;)V

    .line 80
    iput-object p3, p0, Lcom/twitter/android/revenue/card/bn;->s:Lclm;

    .line 81
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/bn;->l()V

    .line 82
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/twitter/android/revenue/card/ax;->a(Lcom/twitter/library/card/av;)V

    .line 53
    iget-object v0, p1, Lcom/twitter/library/card/av;->c:Lclm;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bn;->s:Lclm;

    .line 55
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bn;->r:Lcom/twitter/android/av/card/i;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bn;->o:Lcom/twitter/library/card/CardContext;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/bn;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/card/i;->a(Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 56
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/bn;->l()V

    .line 57
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/bn;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/twitter/android/revenue/card/ax;->a(Z)V

    .line 113
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bn;->r:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->k()V

    .line 114
    return-void
.end method

.method public ao_()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/twitter/android/revenue/card/ax;->ao_()V

    .line 107
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bn;->r:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->j()V

    .line 108
    return-void
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bn;->r:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->at_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bn;->r:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->ay_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/twitter/android/revenue/card/ax;->b()V

    .line 74
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bn;->r:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->l()V

    .line 75
    return-void
.end method

.method public ba_()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/bn;->l()V

    .line 102
    return-void
.end method

.method c(Landroid/content/Context;)Lcom/twitter/android/av/card/i;
    .locals 7

    .prologue
    .line 46
    new-instance v0, Lcom/twitter/android/av/card/i;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/bn;->d:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v3, p0, Lcom/twitter/android/revenue/card/bn;->c:Landroid/view/ViewGroup;

    const v4, 0x7f1304d5

    sget-object v6, Lbxa;->c:Lbxa;

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/av/card/i;-><init>(Landroid/content/Context;Lcom/twitter/media/ui/image/MediaImageView;Landroid/view/ViewGroup;ILcom/twitter/android/av/card/k;Lbxa;)V

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bn;->r:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->c()Z

    move-result v0

    return v0
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bn;->r:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bn;->r:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method j()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bn;->r:Lcom/twitter/android/av/card/i;

    invoke-virtual {v0}, Lcom/twitter/android/av/card/i;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "player_image"

    return-object v0
.end method
