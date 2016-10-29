.class public Lcom/twitter/android/av/video/b;
.super Lcom/twitter/android/av/video/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ActivityWith",
        "ListenerRegistry:Landroid/app/Activity;",
        ":",
        "Lcom/twitter/library/client/s;",
        ">",
        "Lcom/twitter/android/av/video/h",
        "<TActivityWith",
        "ListenerRegistry;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/library/av/VideoPlayerView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/twitter/library/av/playback/AVPlayerAttachment;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Lcom/twitter/library/av/playback/ba;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final k:Z

.field private final l:Lcom/twitter/android/av/bq;

.field private final m:Lcom/twitter/library/av/playback/ao;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/av/bj;Lcom/twitter/android/av/bq;Lcom/twitter/library/av/playback/ao;Lcom/twitter/android/av/af;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TActivityWith",
            "ListenerRegistry;",
            "Landroid/view/ViewGroup;",
            "Lcom/twitter/android/av/bj;",
            "Lcom/twitter/android/av/bq;",
            "Lcom/twitter/library/av/playback/ao;",
            "Lcom/twitter/android/av/af;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p7

    move-object v4, p8

    move-object v5, p3

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/av/video/h;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/android/av/bj;Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object p4, p0, Lcom/twitter/android/av/video/b;->l:Lcom/twitter/android/av/bq;

    .line 79
    iput-object p5, p0, Lcom/twitter/android/av/video/b;->m:Lcom/twitter/library/av/playback/ao;

    .line 80
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->g:Lcom/twitter/library/av/playback/AVDataSource;

    .line 81
    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVDataSource;->j()Lcom/twitter/library/av/playback/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/df;->a()Lbvk;

    move-result-object v0

    invoke-interface {v0}, Lbvk;->b()J

    move-result-wide v0

    .line 80
    invoke-virtual {p6, v0, v1}, Lcom/twitter/android/av/af;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/av/video/b;->k:Z

    .line 82
    invoke-virtual {p6}, Lcom/twitter/android/av/af;->a()V

    .line 83
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/twitter/android/av/video/b;->l()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TActivityWith",
            "ListenerRegistry;",
            "Landroid/view/ViewGroup;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v3, Lcom/twitter/android/av/bj;

    invoke-direct {v3}, Lcom/twitter/android/av/bj;-><init>()V

    new-instance v4, Lcom/twitter/android/av/bq;

    invoke-direct {v4}, Lcom/twitter/android/av/bq;-><init>()V

    .line 52
    invoke-static {}, Lcom/twitter/library/av/playback/ao;->a()Lcom/twitter/library/av/playback/ao;

    move-result-object v5

    new-instance v6, Lcom/twitter/android/av/af;

    invoke-direct {v6}, Lcom/twitter/android/av/af;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 51
    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/av/video/b;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/av/bj;Lcom/twitter/android/av/bq;Lcom/twitter/library/av/playback/ao;Lcom/twitter/android/av/af;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->e:Lcom/twitter/library/av/control/h;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->e:Lcom/twitter/library/av/control/h;

    iget-object v1, p0, Lcom/twitter/android/av/video/b;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-interface {v0, v1}, Lcom/twitter/library/av/control/h;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    iget-object v1, p0, Lcom/twitter/android/av/video/b;->e:Lcom/twitter/library/av/control/h;

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoPlayerView;->setExternalChromeView(Lcom/twitter/library/av/control/h;)V

    .line 134
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/twitter/android/av/video/b;->f()V

    .line 140
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->m:Lcom/twitter/library/av/playback/ao;

    iget-object v1, p0, Lcom/twitter/android/av/video/b;->c:Lcom/twitter/library/av/playback/ba;

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/ao;->b(Lcom/twitter/library/av/playback/ba;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/av/video/b;->m()Landroid/app/Activity;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_1

    .line 146
    check-cast v0, Lcom/twitter/library/client/s;

    invoke-interface {v0, p0}, Lcom/twitter/library/client/s;->b(Lcom/twitter/library/client/q;)V

    .line 148
    :cond_1
    return-void
.end method

.method public a(Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/twitter/android/av/video/b;->m()Landroid/app/Activity;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 90
    check-cast v0, Lcom/twitter/library/client/s;

    invoke-interface {v0, p0}, Lcom/twitter/library/client/s;->a(Lcom/twitter/library/client/q;)V

    .line 92
    new-instance v0, Lcom/twitter/library/av/playback/bb;

    invoke-direct {v0}, Lcom/twitter/library/av/playback/bb;-><init>()V

    iget-object v2, p0, Lcom/twitter/android/av/video/b;->g:Lcom/twitter/library/av/playback/AVDataSource;

    invoke-virtual {v0, v2}, Lcom/twitter/library/av/playback/bb;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/video/b;->c:Lcom/twitter/library/av/playback/ba;

    .line 93
    new-instance v0, Lcom/twitter/library/av/playback/ax;

    iget-object v2, p0, Lcom/twitter/android/av/video/b;->m:Lcom/twitter/library/av/playback/ao;

    invoke-direct {v0, v2}, Lcom/twitter/library/av/playback/ax;-><init>(Lcom/twitter/library/av/playback/ao;)V

    iget-object v2, p0, Lcom/twitter/android/av/video/b;->c:Lcom/twitter/library/av/playback/ba;

    .line 94
    invoke-virtual {v0, v2}, Lcom/twitter/library/av/playback/ax;->a(Lcom/twitter/library/av/playback/ba;)Lcom/twitter/library/av/playback/ax;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p1}, Lcom/twitter/library/av/playback/ax;->a(Lbxa;)Lcom/twitter/library/av/playback/ax;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/av/video/b;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 96
    invoke-virtual {v0, v2}, Lcom/twitter/library/av/playback/ax;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/av/playback/ax;

    move-result-object v0

    .line 97
    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/av/playback/ax;->a(Landroid/content/Context;)Lcom/twitter/library/av/playback/ax;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v3}, Lcom/twitter/library/av/playback/ax;->b(Z)Lcom/twitter/library/av/playback/ax;

    move-result-object v0

    .line 99
    invoke-static {v1}, Lcom/twitter/app/common/util/v;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/av/playback/ax;->a(Z)Lcom/twitter/library/av/playback/ax;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ax;->a()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/video/b;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 101
    iput-boolean v3, p0, Lcom/twitter/android/av/video/b;->d:Z

    .line 103
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->l:Lcom/twitter/android/av/bq;

    iget-object v2, p0, Lcom/twitter/android/av/video/b;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0, v1, v2, p2}, Lcom/twitter/android/av/bq;->a(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;)Lcom/twitter/library/av/VideoPlayerView;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    .line 105
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->g:Lcom/twitter/library/av/playback/AVDataSource;

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVDataSource;->c()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/media/util/ab;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twitter/library/av/VideoPlayerView$Mode;->g:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eq v0, p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    new-instance v1, Lcom/twitter/library/av/am;

    iget-object v2, p0, Lcom/twitter/android/av/video/b;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 108
    invoke-virtual {v2}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/av/am;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Landroid/view/View;)V

    .line 107
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoPlayerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {p0}, Lcom/twitter/android/av/video/b;->l()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/VideoPlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_0
    new-instance v0, Lcom/twitter/android/av/video/c;

    invoke-direct {v0, p0}, Lcom/twitter/android/av/video/c;-><init>(Lcom/twitter/android/av/video/b;)V

    .line 118
    iget-object v1, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v1, v0}, Lcom/twitter/library/av/VideoPlayerView;->setAVPlayerListener(Lcom/twitter/library/av/s;)V

    .line 119
    invoke-direct {p0}, Lcom/twitter/android/av/video/b;->n()V

    .line 120
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :cond_1
    return-void
.end method

.method public a(Lcom/twitter/library/av/control/h;)V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/twitter/android/av/video/h;->a(Lcom/twitter/library/av/control/h;)V

    .line 160
    invoke-direct {p0}, Lcom/twitter/android/av/video/b;->n()V

    .line 161
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->j()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 204
    :cond_0
    return-void
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

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
    .line 177
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoPlayerView;->n()Lcom/twitter/library/av/playback/ba;

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
    .line 152
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoPlayerView;->m()V

    .line 155
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/twitter/android/av/video/b;->k:Z

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->i()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 197
    :cond_0
    return-void
.end method

.method f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-boolean v0, p0, Lcom/twitter/android/av/video/b;->d:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->m:Lcom/twitter/library/av/playback/ao;

    iget-object v1, p0, Lcom/twitter/android/av/video/b;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/ao;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    .line 212
    iput-object v2, p0, Lcom/twitter/android/av/video/b;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 214
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/av/video/b;->d:Z

    .line 215
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 216
    iput-object v2, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    .line 217
    return-void
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoPlayerView;->q()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->a:Lcom/twitter/library/av/VideoPlayerView;

    invoke-virtual {v0}, Lcom/twitter/library/av/VideoPlayerView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/av/video/h;->j()V

    goto :goto_0
.end method

.method public k()Lcom/twitter/library/av/playback/AVPlayerAttachment;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/twitter/android/av/video/b;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    return-object v0
.end method
