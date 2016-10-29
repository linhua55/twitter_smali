.class public Laaj;
.super Lzz;
.source "Twttr"


# instance fields
.field protected h:Lcom/twitter/library/av/VideoPlayerView;

.field i:Lcom/twitter/library/av/playback/AVPlayerAttachment;

.field private final j:Lcom/twitter/library/av/playback/bb;

.field private final k:Lcom/twitter/android/av/bq;

.field private final l:Lcom/twitter/library/av/playback/ao;

.field private m:Lcom/twitter/library/av/u;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILaah;Lcom/twitter/library/av/playback/bb;Lcom/twitter/android/av/bq;Lcom/twitter/library/av/playback/ao;Ljava/util/List;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I",
            "Laah;",
            "Lcom/twitter/library/av/playback/bb;",
            "Lcom/twitter/android/av/bq;",
            "Lcom/twitter/library/av/playback/ao;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/media/ui/image/MediaImageView;",
            ">;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p9

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lzz;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILaah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/util/List;)V

    .line 64
    iput-object p5, p0, Laaj;->j:Lcom/twitter/library/av/playback/bb;

    .line 65
    iput-object p6, p0, Laaj;->k:Lcom/twitter/android/av/bq;

    .line 66
    iput-object p7, p0, Laaj;->l:Lcom/twitter/library/av/playback/ao;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILaah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/util/List;)V
    .locals 10
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
    .line 49
    new-instance v5, Lcom/twitter/library/av/playback/bb;

    invoke-direct {v5}, Lcom/twitter/library/av/playback/bb;-><init>()V

    new-instance v6, Lcom/twitter/android/av/bq;

    invoke-direct {v6}, Lcom/twitter/android/av/bq;-><init>()V

    .line 50
    invoke-static {}, Lcom/twitter/library/av/playback/ao;->a()Lcom/twitter/library/av/playback/ao;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v8, p6

    move-object v9, p5

    .line 49
    invoke-direct/range {v0 .. v9}, Laaj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILaah;Lcom/twitter/library/av/playback/bb;Lcom/twitter/android/av/bq;Lcom/twitter/library/av/playback/ao;Ljava/util/List;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 51
    return-void
.end method

.method static synthetic a(Laaj;Laab;Lcwb;Lzw;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Laaj;->b(Laab;Lcwb;Lzw;)V

    return-void
.end method

.method private b(Laab;Lcwb;Lzw;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Laaj;->h:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 147
    iget v0, p0, Laaj;->a:I

    invoke-interface {p3, v0}, Lzw;->c(I)V

    .line 149
    :cond_0
    iget-object v0, p0, Laaj;->h:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 150
    iget-object v0, p0, Laaj;->h:Lcom/twitter/library/av/VideoPlayerView;

    new-instance v1, Lcwx;

    iget-object v2, p0, Laaj;->h:Lcom/twitter/library/av/VideoPlayerView;

    invoke-direct {v1, v2, p2}, Lcwx;-><init>(Landroid/view/View;Lcwb;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoPlayerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p1, Laab;->e:Z

    .line 154
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Laab;Lcwb;Lzw;)V
    .locals 5

    .prologue
    .line 80
    instance-of v0, p1, Laan;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A video item is required!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 83
    :cond_0
    iput-object p1, p0, Laaj;->f:Laab;

    .line 85
    iget-object v0, p0, Laaj;->h:Lcom/twitter/library/av/VideoPlayerView;

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Laaj;->a()Landroid/view/ViewGroup;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    iget-object v2, p0, Laaj;->j:Lcom/twitter/library/av/playback/bb;

    iget-object v3, p0, Laaj;->f:Laab;

    iget-object v3, v3, Laab;->a:Lcom/twitter/model/core/Tweet;

    .line 89
    invoke-virtual {v2, v3}, Lcom/twitter/library/av/playback/bb;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/av/playback/ba;

    move-result-object v2

    .line 90
    new-instance v3, Lcom/twitter/library/av/playback/ax;

    iget-object v4, p0, Laaj;->l:Lcom/twitter/library/av/playback/ao;

    invoke-direct {v3, v4}, Lcom/twitter/library/av/playback/ax;-><init>(Lcom/twitter/library/av/playback/ao;)V

    .line 91
    invoke-virtual {v3, v2}, Lcom/twitter/library/av/playback/ax;->a(Lcom/twitter/library/av/playback/ba;)Lcom/twitter/library/av/playback/ax;

    move-result-object v2

    iget-object v3, p0, Laaj;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 92
    invoke-virtual {v2, v3}, Lcom/twitter/library/av/playback/ax;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/av/playback/ax;

    move-result-object v2

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/av/playback/ax;->a(Landroid/content/Context;)Lcom/twitter/library/av/playback/ax;

    move-result-object v2

    sget-object v3, Lbxa;->b:Lbxa;

    .line 94
    invoke-virtual {v2, v3}, Lcom/twitter/library/av/playback/ax;->a(Lbxa;)Lcom/twitter/library/av/playback/ax;

    move-result-object v2

    const/4 v3, 0x0

    .line 95
    invoke-virtual {v2, v3}, Lcom/twitter/library/av/playback/ax;->b(Z)Lcom/twitter/library/av/playback/ax;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/twitter/library/av/playback/ax;->a()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v2

    iput-object v2, p0, Laaj;->i:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 97
    iget-object v2, p0, Laaj;->k:Lcom/twitter/android/av/bq;

    iget-object v3, p0, Laaj;->i:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 98
    invoke-virtual {p0}, Laaj;->e()Lcom/twitter/library/av/VideoPlayerView$Mode;

    move-result-object v4

    .line 97
    invoke-virtual {v2, v1, v3, v4}, Lcom/twitter/android/av/bq;->a(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;)Lcom/twitter/library/av/VideoPlayerView;

    move-result-object v1

    iput-object v1, p0, Laaj;->h:Lcom/twitter/library/av/VideoPlayerView;

    .line 101
    iget-object v1, p0, Laaj;->h:Lcom/twitter/library/av/VideoPlayerView;

    const v2, 0x7f13008e

    invoke-virtual {v1, v2}, Lcom/twitter/library/av/VideoPlayerView;->setId(I)V

    .line 103
    iget-object v1, p0, Laaj;->h:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    new-instance v0, Laak;

    invoke-direct {v0, p0, p2, p3}, Laak;-><init>(Laaj;Lcwb;Lzw;)V

    iput-object v0, p0, Laaj;->m:Lcom/twitter/library/av/u;

    .line 122
    iget-object v0, p0, Laaj;->h:Lcom/twitter/library/av/VideoPlayerView;

    iget-object v1, p0, Laaj;->m:Lcom/twitter/library/av/u;

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoPlayerView;->setAVPlayerListener(Lcom/twitter/library/av/s;)V

    .line 128
    :cond_1
    iget-object v0, p0, Laaj;->i:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Laaj;->i:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->i()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 131
    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Laaj;->i:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 185
    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v1, p0, Laaj;->c:Laah;

    invoke-virtual {v1}, Laah;->a()Lcom/twitter/android/av/GalleryVideoChromeView;

    move-result-object v1

    .line 189
    if-eqz p1, :cond_3

    .line 190
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/twitter/library/av/playback/AVPlayer;->b(F)V

    .line 191
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/av/playback/AVPlayer;->z()Z

    move-result v2

    .line 192
    invoke-virtual {v0, v2}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a(Z)V

    .line 194
    if-eqz v1, :cond_0

    iget-object v2, p0, Laaj;->f:Laab;

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Laaj;->f:Laab;

    invoke-virtual {v2}, Laab;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/av/GalleryVideoChromeView;->setShouldShowControls(Z)V

    .line 196
    iget-object v2, p0, Laaj;->f:Laab;

    invoke-virtual {v2}, Laab;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/av/GalleryVideoChromeView;->setShouldPlayPauseOnTap(Z)V

    .line 197
    invoke-virtual {v1, v0}, Lcom/twitter/android/av/GalleryVideoChromeView;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    .line 198
    iget-object v0, p0, Laaj;->h:Lcom/twitter/library/av/VideoPlayerView;

    .line 199
    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoPlayerView;->setExternalChromeView(Lcom/twitter/library/av/control/h;)V

    .line 202
    :cond_2
    invoke-virtual {v1}, Lcom/twitter/android/av/GalleryVideoChromeView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/library/av/playback/AVPlayer;->b(F)V

    .line 206
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->n()J

    .line 207
    invoke-virtual {v1}, Lcom/twitter/android/av/GalleryVideoChromeView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Laaj;->i:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->j()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 161
    iget-object v1, p0, Laaj;->l:Lcom/twitter/library/av/playback/ao;

    invoke-virtual {v1, v0}, Lcom/twitter/library/av/playback/ao;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    .line 162
    iget-object v1, p0, Laaj;->l:Lcom/twitter/library/av/playback/ao;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/av/playback/ao;->b(Lcom/twitter/library/av/playback/ba;)V

    .line 163
    iput-object v2, p0, Laaj;->i:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 165
    :cond_0
    iget-object v0, p0, Laaj;->h:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p0}, Laaj;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Laaj;->h:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Laaj;->h:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0, v2}, Lcom/twitter/library/av/VideoPlayerView;->setAVPlayerListener(Lcom/twitter/library/av/s;)V

    .line 168
    iput-object v2, p0, Laaj;->m:Lcom/twitter/library/av/u;

    .line 169
    iput-object v2, p0, Laaj;->h:Lcom/twitter/library/av/VideoPlayerView;

    .line 171
    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Laaj;->i:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 176
    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Laaj;->l:Lcom/twitter/library/av/playback/ao;

    invoke-virtual {v1, v0}, Lcom/twitter/library/av/playback/ao;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    .line 178
    iget-object v1, p0, Laaj;->l:Lcom/twitter/library/av/playback/ao;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/av/playback/ao;->b(Lcom/twitter/library/av/playback/ba;)V

    .line 180
    :cond_0
    return-void
.end method

.method protected e()Lcom/twitter/library/av/VideoPlayerView$Mode;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/twitter/library/av/VideoPlayerView$Mode;->f:Lcom/twitter/library/av/VideoPlayerView$Mode;

    return-object v0
.end method

.method public f()Lcom/twitter/library/av/playback/AVPlayer;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Laaj;->i:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laaj;->i:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
