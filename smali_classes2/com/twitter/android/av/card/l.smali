.class public Lcom/twitter/android/av/card/l;
.super Lcom/twitter/android/card/ab;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/library/widget/a;


# instance fields
.field a:Z

.field final b:Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;

.field private c:Z

.field private final d:Lcom/twitter/android/av/bj;

.field private final e:Lcom/twitter/android/av/bq;

.field private final f:Lcom/twitter/library/av/playback/ao;

.field private final g:Lcom/twitter/android/av/af;

.field private final h:Lcom/twitter/android/av/video/j;

.field private i:Lcom/twitter/android/av/video/h;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
    .locals 10

    .prologue
    .line 47
    new-instance v3, Lcom/twitter/android/card/k;

    invoke-direct {v3, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/twitter/android/card/e;

    invoke-direct {v4, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    new-instance v5, Lcom/twitter/android/av/bj;

    invoke-direct {v5}, Lcom/twitter/android/av/bj;-><init>()V

    .line 51
    invoke-static {}, Lcom/twitter/library/av/playback/ao;->a()Lcom/twitter/library/av/playback/ao;

    move-result-object v6

    new-instance v7, Lcom/twitter/android/av/bq;

    invoke-direct {v7}, Lcom/twitter/android/av/bq;-><init>()V

    new-instance v8, Lcom/twitter/android/av/af;

    invoke-direct {v8}, Lcom/twitter/android/av/af;-><init>()V

    new-instance v9, Lcom/twitter/android/av/video/j;

    invoke-direct {v9}, Lcom/twitter/android/av/video/j;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 47
    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/av/card/l;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/av/bj;Lcom/twitter/library/av/playback/ao;Lcom/twitter/android/av/bq;Lcom/twitter/android/av/af;Lcom/twitter/android/av/video/j;)V

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/av/bj;Lcom/twitter/library/av/playback/ao;Lcom/twitter/android/av/bq;Lcom/twitter/android/av/af;Lcom/twitter/android/av/video/j;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/card/ab;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 67
    iput-object p5, p0, Lcom/twitter/android/av/card/l;->d:Lcom/twitter/android/av/bj;

    .line 68
    iput-object p6, p0, Lcom/twitter/android/av/card/l;->f:Lcom/twitter/library/av/playback/ao;

    .line 69
    iput-object p7, p0, Lcom/twitter/android/av/card/l;->e:Lcom/twitter/android/av/bq;

    .line 70
    iput-object p8, p0, Lcom/twitter/android/av/card/l;->g:Lcom/twitter/android/av/af;

    .line 71
    invoke-virtual {p0, p1}, Lcom/twitter/android/av/card/l;->a(Landroid/content/Context;)Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/l;->b:Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;

    .line 72
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->b:Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;

    invoke-virtual {v0, p0}, Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object p9, p0, Lcom/twitter/android/av/card/l;->h:Lcom/twitter/android/av/video/j;

    .line 75
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;

    invoke-direct {v0, p1}, Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/twitter/android/card/ab;->a()V

    .line 110
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->a()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    .line 114
    :cond_0
    return-void
.end method

.method public a(JLcom/twitter/library/card/CardContext;)V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/card/ab;->a(JLcom/twitter/library/card/CardContext;)V

    .line 80
    invoke-static {p3}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 81
    iget-object v1, p0, Lcom/twitter/android/av/card/l;->g:Lcom/twitter/android/av/af;

    invoke-virtual {v1, v0}, Lcom/twitter/android/av/af;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/av/card/l;->c:Z

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 10

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Lcom/twitter/library/card/av;)V

    .line 87
    invoke-virtual {p0}, Lcom/twitter/android/av/card/l;->l()Landroid/app/Activity;

    move-result-object v1

    .line 89
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/card/l;->w:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->w:Lcom/twitter/library/card/CardContext;

    invoke-static {v0}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 91
    new-instance v8, Lcom/twitter/library/av/playback/TweetAVDataSource;

    invoke-direct {v8, v0}, Lcom/twitter/library/av/playback/TweetAVDataSource;-><init>(Lcom/twitter/model/core/Tweet;)V

    .line 92
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->h:Lcom/twitter/android/av/video/j;

    iget-object v2, p0, Lcom/twitter/android/av/card/l;->b:Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;

    iget-object v3, p0, Lcom/twitter/android/av/card/l;->d:Lcom/twitter/android/av/bj;

    iget-object v4, p0, Lcom/twitter/android/av/card/l;->e:Lcom/twitter/android/av/bq;

    iget-object v5, p0, Lcom/twitter/android/av/card/l;->f:Lcom/twitter/library/av/playback/ao;

    iget-object v6, p0, Lcom/twitter/android/av/card/l;->g:Lcom/twitter/android/av/af;

    iget-object v7, p0, Lcom/twitter/android/av/card/l;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/twitter/android/av/video/j;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/av/bj;Lcom/twitter/android/av/bq;Lcom/twitter/library/av/playback/ao;Lcom/twitter/android/av/af;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)Lcom/twitter/android/av/video/h;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    .line 95
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    sget-object v1, Lbxa;->c:Lbxa;

    sget-object v2, Lcom/twitter/library/av/VideoPlayerView$Mode;->a:Lcom/twitter/library/av/VideoPlayerView$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/video/h;->a(Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    .line 96
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->g:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v1, p0, Lcom/twitter/android/av/card/l;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, v1, :cond_1

    .line 97
    invoke-static {}, Lcom/twitter/android/revenue/z;->i()Lcom/twitter/library/av/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/model/c;->a()F

    move-result v0

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/av/card/l;->b:Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;

    invoke-virtual {v1, v0}, Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;->setAspectRatio(F)V

    .line 100
    iget-boolean v0, p0, Lcom/twitter/android/av/card/l;->a:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->b()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/av/card/l;->a:Z

    .line 105
    :cond_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {v8}, Lcom/twitter/library/av/playback/TweetAVDataSource;->n()F

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/av/card/l;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Z)V

    .line 127
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0, p1}, Lcom/twitter/android/av/video/h;->a(Z)V

    .line 130
    :cond_0
    return-void
.end method

.method public ao_()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/twitter/android/card/ab;->ao_()V

    .line 119
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->e()V

    .line 122
    :cond_0
    return-void
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->at_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->ay_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->b()V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/av/card/l;->a:Z

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->b(Z)V

    .line 135
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->g:Lcom/twitter/android/av/af;

    invoke-virtual {v0}, Lcom/twitter/android/av/af;->a()V

    .line 136
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/twitter/android/av/card/l;->c:Z

    return v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->b:Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;

    return-object v0
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/twitter/android/av/card/l;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/twitter/android/av/card/l;->i:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0, p1}, Lcom/twitter/android/av/video/h;->onClick(Landroid/view/View;)V

    .line 157
    :cond_0
    return-void
.end method
