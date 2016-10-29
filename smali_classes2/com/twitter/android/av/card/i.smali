.class public Lcom/twitter/android/av/card/i;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/a;


# instance fields
.field protected final a:Lbxa;

.field protected b:Z

.field private c:Lcom/twitter/library/av/VideoPlayerView;

.field private d:Lcom/twitter/library/av/playback/ba;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/twitter/media/ui/image/MediaImageView;

.field private final g:Landroid/view/ViewGroup;

.field private final h:Lcom/twitter/library/av/playback/ao;

.field private final i:I

.field private final k:Lcom/twitter/android/av/card/k;

.field private l:Z

.field private m:Z

.field private n:Lcom/twitter/library/av/playback/AVPlayerAttachment;

.field private o:Lcom/twitter/library/scribe/TwitterScribeAssociation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/media/ui/image/MediaImageView;Landroid/view/ViewGroup;ILcom/twitter/android/av/card/k;Lbxa;)V
    .locals 8

    .prologue
    .line 54
    invoke-static {}, Lcom/twitter/library/av/playback/ao;->a()Lcom/twitter/library/av/playback/ao;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/av/card/i;-><init>(Landroid/content/Context;Lcom/twitter/media/ui/image/MediaImageView;Landroid/view/ViewGroup;ILcom/twitter/android/av/card/k;Lcom/twitter/library/av/playback/ao;Lbxa;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/media/ui/image/MediaImageView;Landroid/view/ViewGroup;ILcom/twitter/android/av/card/k;Lcom/twitter/library/av/playback/ao;Lbxa;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/twitter/android/av/card/i;->e:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/twitter/android/av/card/i;->f:Lcom/twitter/media/ui/image/MediaImageView;

    .line 63
    iput-object p3, p0, Lcom/twitter/android/av/card/i;->g:Landroid/view/ViewGroup;

    .line 64
    iput p4, p0, Lcom/twitter/android/av/card/i;->i:I

    .line 65
    iput-object p5, p0, Lcom/twitter/android/av/card/i;->k:Lcom/twitter/android/av/card/k;

    .line 66
    iput-object p6, p0, Lcom/twitter/android/av/card/i;->h:Lcom/twitter/library/av/playback/ao;

    .line 67
    iput-object p7, p0, Lcom/twitter/android/av/card/i;->a:Lbxa;

    .line 68
    invoke-static {p2}, Lcom/twitter/android/revenue/card/bp;->a(Lcom/twitter/media/ui/image/MediaImageView;)V

    .line 69
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/twitter/library/av/playback/ax;

    iget-object v1, p0, Lcom/twitter/android/av/card/i;->h:Lcom/twitter/library/av/playback/ao;

    invoke-direct {v0, v1}, Lcom/twitter/library/av/playback/ax;-><init>(Lcom/twitter/library/av/playback/ao;)V

    iget-object v1, p0, Lcom/twitter/android/av/card/i;->d:Lcom/twitter/library/av/playback/ba;

    .line 73
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/ax;->a(Lcom/twitter/library/av/playback/ba;)Lcom/twitter/library/av/playback/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/av/card/i;->o:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 74
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/ax;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/av/playback/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/av/card/i;->a:Lbxa;

    .line 75
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/ax;->a(Lbxa;)Lcom/twitter/library/av/playback/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/av/card/i;->e:Landroid/content/Context;

    .line 76
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/ax;->a(Landroid/content/Context;)Lcom/twitter/library/av/playback/ax;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v2}, Lcom/twitter/library/av/playback/ax;->b(Z)Lcom/twitter/library/av/playback/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/av/card/i;->e:Landroid/content/Context;

    .line 78
    invoke-static {v1}, Lcom/twitter/app/common/util/v;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/ax;->a(Z)Lcom/twitter/library/av/playback/ax;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ax;->a()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/i;->n:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 80
    iput-boolean v2, p0, Lcom/twitter/android/av/card/i;->l:Z

    .line 81
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->n:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/card/i;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)Lcom/twitter/library/av/VideoPlayerView;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    .line 82
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    iget v1, p0, Lcom/twitter/android/av/card/i;->i:I

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoPlayerView;->setId(I)V

    .line 83
    new-instance v0, Lcom/twitter/android/av/card/j;

    invoke-direct {v0, p0}, Lcom/twitter/android/av/card/j;-><init>(Lcom/twitter/android/av/card/i;)V

    .line 90
    iget-object v1, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v1, v0}, Lcom/twitter/library/av/VideoPlayerView;->setAVPlayerListener(Lcom/twitter/library/av/s;)V

    .line 92
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->g:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/twitter/android/av/card/i;->i:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/twitter/android/av/card/i;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Lcom/twitter/android/av/card/i;->a()Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    move-result-object v1

    .line 95
    const v2, 0x3fe38e39

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 96
    iget-object v2, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v2, p0, Lcom/twitter/android/av/card/i;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->k:Lcom/twitter/android/av/card/k;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->k:Lcom/twitter/android/av/card/k;

    invoke-interface {v0}, Lcom/twitter/android/av/card/k;->ba_()V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)Lcom/twitter/library/av/VideoPlayerView;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Lcom/twitter/library/av/VideoPlayerView;

    iget-object v1, p0, Lcom/twitter/android/av/card/i;->e:Landroid/content/Context;

    sget-object v2, Lcom/twitter/library/av/VideoPlayerView$Mode;->a:Lcom/twitter/library/av/VideoPlayerView$Mode;

    invoke-direct {v0, v1, p1, v2}, Lcom/twitter/library/av/VideoPlayerView;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    return-object v0
.end method

.method protected a()Lcom/twitter/media/ui/image/AspectRatioFrameLayout;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    iget-object v1, p0, Lcom/twitter/android/av/card/i;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 2

    .prologue
    .line 126
    iput-object p2, p0, Lcom/twitter/android/av/card/i;->o:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 127
    invoke-static {p1}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 128
    new-instance v1, Lcom/twitter/library/av/playback/bb;

    invoke-direct {v1}, Lcom/twitter/library/av/playback/bb;-><init>()V

    invoke-virtual {v1, v0}, Lcom/twitter/library/av/playback/bb;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/i;->d:Lcom/twitter/library/av/playback/ba;

    .line 130
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->h:Lcom/twitter/library/av/playback/ao;

    iget-object v1, p0, Lcom/twitter/android/av/card/i;->d:Lcom/twitter/library/av/playback/ba;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/library/av/playback/AVDataSource;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/ao;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/av/card/i;->m:Z

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/av/card/i;->m()V

    goto :goto_0
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoPlayerView;->o()Lcom/twitter/library/av/playback/ba;

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
    .line 194
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoPlayerView;->n()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/twitter/android/av/card/i;->m:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->f:Lcom/twitter/media/ui/image/MediaImageView;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/twitter/android/av/card/i;->f()V

    .line 153
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->h:Lcom/twitter/library/av/playback/ao;

    iget-object v1, p0, Lcom/twitter/android/av/card/i;->d:Lcom/twitter/library/av/playback/ba;

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/ao;->b(Lcom/twitter/library/av/playback/ba;)V

    .line 155
    :cond_0
    return-void
.end method

.method f()V
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/twitter/android/av/card/i;->l:Z

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->h:Lcom/twitter/library/av/playback/ao;

    iget-object v1, p0, Lcom/twitter/android/av/card/i;->n:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/ao;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    .line 161
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/av/card/i;->l:Z

    .line 162
    return-void
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoPlayerView;->q()Lcom/twitter/library/av/playback/ba;

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
    .line 212
    iget-boolean v0, p0, Lcom/twitter/android/av/card/i;->m:Z

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/av/card/i;->m:Z

    .line 214
    invoke-direct {p0}, Lcom/twitter/android/av/card/i;->m()V

    .line 215
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoPlayerView;->m()V

    .line 216
    invoke-virtual {p0}, Lcom/twitter/android/av/card/i;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/av/card/i;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->n:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->n:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->i()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 167
    iget-boolean v0, p0, Lcom/twitter/android/av/card/i;->b:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->n:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a(Z)V

    .line 171
    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->n:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->n:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/av/card/i;->b:Z

    .line 176
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->n:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->j()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 178
    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/twitter/android/av/card/i;->c:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoPlayerView;->m()V

    .line 184
    :cond_0
    return-void
.end method
