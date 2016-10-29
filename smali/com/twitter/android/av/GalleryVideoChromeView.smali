.class public Lcom/twitter/android/av/GalleryVideoChromeView;
.super Lcom/twitter/android/av/FullscreenVideoPlayerChromeView;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/twitter/android/av/FullscreenVideoPlayerChromeView;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/av/FullscreenVideoPlayerChromeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/android/av/av;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/av/FullscreenVideoPlayerChromeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/android/av/av;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/library/av/control/g;Lcom/twitter/android/av/av;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/av/FullscreenVideoPlayerChromeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/library/av/control/g;Lcom/twitter/android/av/av;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected H()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/twitter/android/av/FullscreenVideoPlayerChromeView;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    .line 59
    iget-object v0, p0, Lcom/twitter/android/av/GalleryVideoChromeView;->k:Lcom/twitter/android/av/bp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/bp;->a(Lcom/twitter/android/av/bv;)V

    .line 60
    invoke-virtual {p0}, Lcom/twitter/android/av/GalleryVideoChromeView;->I()V

    .line 61
    return-void
.end method

.method public a(Lcom/twitter/model/av/AVMedia;)V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/twitter/android/av/FullscreenVideoPlayerChromeView;->a(Lcom/twitter/model/av/AVMedia;)V

    .line 102
    iget-boolean v0, p0, Lcom/twitter/android/av/GalleryVideoChromeView;->i:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/twitter/android/av/GalleryVideoChromeView;->p()V

    .line 105
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/twitter/android/av/FullscreenVideoPlayerChromeView;->b()V

    .line 72
    invoke-virtual {p0}, Lcom/twitter/android/av/GalleryVideoChromeView;->p()V

    .line 73
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/twitter/android/av/GalleryVideoChromeView;->u()V

    .line 111
    invoke-virtual {p0}, Lcom/twitter/android/av/GalleryVideoChromeView;->p()V

    .line 112
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/twitter/android/av/GalleryVideoChromeView;->a:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    if-eqz v1, :cond_0

    .line 90
    iget-boolean v1, p0, Lcom/twitter/android/av/GalleryVideoChromeView;->t:Z

    if-eqz v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/twitter/android/av/GalleryVideoChromeView;->a:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->o()V

    .line 92
    const/4 v0, 0x1

    .line 96
    :cond_0
    return v0
.end method

.method public getPlaylistCompleteOverlayBackgroundColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method protected n()Lcom/twitter/android/av/be;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setupInternalViews(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/twitter/android/av/FullscreenVideoPlayerChromeView;->setupInternalViews(Landroid/content/Context;)V

    .line 66
    iget-object v0, p0, Lcom/twitter/android/av/GalleryVideoChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/control/VideoControlView;->setVisibility(I)V

    .line 67
    return-void
.end method
