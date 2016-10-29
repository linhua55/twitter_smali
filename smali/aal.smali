.class public Laal;
.super Laaj;
.source "Twttr"


# instance fields
.field private j:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILaah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I",
            "Laah;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/media/ui/image/MediaImageView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct/range {p0 .. p6}, Laaj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILaah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/util/List;)V

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laal;->j:Landroid/widget/FrameLayout;

    .line 117
    iget-object v0, p0, Laal;->j:Landroid/widget/FrameLayout;

    const v1, 0x7f130055

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 118
    iget-object v0, p0, Laal;->j:Landroid/widget/FrameLayout;

    const v1, 0x7f1200de

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Laal;->j:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 120
    return-void
.end method


# virtual methods
.method public a(Laab;Lcwb;Lzw;)V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 67
    invoke-super {p0, p1, p2, p3}, Laaj;->a(Laab;Lcwb;Lzw;)V

    .line 68
    invoke-static {}, Lcba;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Laal;->a()Landroid/view/ViewGroup;

    move-result-object v2

    .line 72
    iget-object v0, p0, Laal;->j:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    .line 73
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Laal;->a(Landroid/content/Context;)V

    .line 74
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76
    iget-object v1, p0, Laal;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 81
    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 82
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Laal;->j:Landroid/widget/FrameLayout;

    if-ne v4, v5, :cond_3

    .line 87
    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Laal;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Laal;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 81
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0, p1}, Laaj;->a(Z)V

    .line 104
    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Laal;->f()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Laal;->c:Laah;

    invoke-virtual {v1}, Laah;->a()Lcom/twitter/android/av/GalleryVideoChromeView;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/model/av/AVMedia;->d()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/av/GalleryVideoChromeView;->setShouldShowControls(Z)V

    .line 113
    :cond_0
    return-void
.end method

.method protected e()Lcom/twitter/library/av/VideoPlayerView$Mode;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/twitter/library/av/VideoPlayerView$Mode;->h:Lcom/twitter/library/av/VideoPlayerView$Mode;

    return-object v0
.end method

.method public g()Lcom/twitter/library/av/control/h;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Laal;->h:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laal;->h:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoPlayerView;->getChromeView()Lcom/twitter/library/av/control/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/twitter/library/av/VideoPlayerView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Laal;->h:Lcom/twitter/library/av/VideoPlayerView;

    return-object v0
.end method

.method public i()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Laal;->j:Landroid/widget/FrameLayout;

    return-object v0
.end method
