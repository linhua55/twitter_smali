.class public abstract Lcom/twitter/android/av/BaseVideoPlayerChromeView;
.super Landroid/widget/RelativeLayout;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/av/bv;
.implements Lcom/twitter/android/av/ca;
.implements Lcom/twitter/library/av/control/f;
.implements Lcom/twitter/library/av/control/h;


# instance fields
.field protected a:Lcom/twitter/library/av/playback/AVPlayerAttachment;

.field protected b:Lcom/twitter/library/av/control/VideoControlView;

.field protected c:Z

.field protected d:Landroid/view/View;

.field protected e:Lcom/twitter/android/av/bx;

.field protected f:Z

.field protected g:Z

.field protected h:Lcom/twitter/android/av/be;

.field protected i:Z

.field protected final j:Lcom/twitter/library/av/control/g;

.field protected final k:Lcom/twitter/android/av/bp;

.field private final l:Lcom/twitter/android/av/cb;

.field private m:Lcom/twitter/library/av/control/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 68
    new-instance v3, Lcom/twitter/library/av/control/g;

    invoke-direct {v3}, Lcom/twitter/library/av/control/g;-><init>()V

    new-instance v4, Lcom/twitter/android/av/cb;

    invoke-direct {v4}, Lcom/twitter/android/av/cb;-><init>()V

    new-instance v5, Lcom/twitter/android/av/bp;

    invoke-direct {v5, p1}, Lcom/twitter/android/av/bp;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/library/av/control/g;Lcom/twitter/android/av/cb;Lcom/twitter/android/av/bp;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/library/av/control/g;)V
    .locals 6

    .prologue
    .line 74
    new-instance v4, Lcom/twitter/android/av/cb;

    invoke-direct {v4}, Lcom/twitter/android/av/cb;-><init>()V

    new-instance v5, Lcom/twitter/android/av/bp;

    invoke-direct {v5, p1}, Lcom/twitter/android/av/bp;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/library/av/control/g;Lcom/twitter/android/av/cb;Lcom/twitter/android/av/bp;)V

    .line 76
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/library/av/control/g;Lcom/twitter/android/av/cb;Lcom/twitter/android/av/bp;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->i:Z

    .line 83
    iput-object p3, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->j:Lcom/twitter/library/av/control/g;

    .line 84
    iput-object p4, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->l:Lcom/twitter/android/av/cb;

    .line 85
    iput-object p5, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->k:Lcom/twitter/android/av/bp;

    .line 86
    invoke-virtual {p0, p1}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->setupInternalViews(Landroid/content/Context;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected A()V
    .locals 2

    .prologue
    .line 526
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->setBackgroundColor(I)V

    .line 527
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 530
    :cond_0
    return-void
.end method

.method protected B()V
    .locals 2

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->getPlaylistCompleteOverlayBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->setBackgroundColor(I)V

    .line 534
    iget-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->e:Lcom/twitter/android/av/bx;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->e:Lcom/twitter/android/av/bx;

    invoke-virtual {v0}, Lcom/twitter/android/av/bx;->c()V

    .line 541
    :cond_0
    return-void
.end method

.method protected C()Z
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method protected D()Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Landroid/content/Context;)Lcom/twitter/library/av/control/VideoControlView;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->j:Lcom/twitter/library/av/control/g;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/control/g;->a(Landroid/content/Context;)Lcom/twitter/library/av/control/VideoControlView;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public a(IJ)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 365
    if-le p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->g:Z

    .line 366
    return-void

    .line 365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/av/ar;)V
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->A()V

    .line 350
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->u()V

    .line 351
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    iget-object v1, p2, Lcom/twitter/library/av/ar;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/library/av/control/VideoControlView;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->u()V

    .line 273
    iput-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->c:Z

    .line 274
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->A()V

    .line 275
    iget-object v1, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    invoke-virtual {v1}, Lcom/twitter/library/av/control/VideoControlView;->b()V

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->e:Lcom/twitter/android/av/bx;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->e:Lcom/twitter/android/av/bx;

    invoke-virtual {v1, p1}, Lcom/twitter/android/av/bx;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->v()V

    .line 285
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 288
    const-string/jumbo v2, "video_disable_control_hiding"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->r()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;->d:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    if-eq p1, v1, :cond_3

    if-eqz v0, :cond_4

    .line 293
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->p()V

    .line 295
    :cond_4
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->setWillNotDraw(Z)V

    .line 115
    iput-object p1, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->a:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 116
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->k:Lcom/twitter/android/av/bp;

    invoke-virtual {v0, p0}, Lcom/twitter/android/av/bp;->a(Lcom/twitter/android/av/bv;)V

    .line 118
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->k()V

    .line 120
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/library/av/control/VideoControlView;->a(Lcom/twitter/library/av/playback/AVPlayer;)V

    .line 122
    iget-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->i:Z

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/library/av/control/VideoControlView;->f()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->e:Lcom/twitter/android/av/bx;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->e:Lcom/twitter/android/av/bx;

    invoke-virtual {v0, p0}, Lcom/twitter/android/av/bx;->b(Lcom/twitter/android/av/ca;)V

    .line 130
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->l:Lcom/twitter/android/av/cb;

    .line 132
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/cb;->a(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayer;)Lcom/twitter/android/av/bx;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->e:Lcom/twitter/android/av/bx;

    .line 133
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->e:Lcom/twitter/android/av/bx;

    invoke-virtual {v0, p0}, Lcom/twitter/android/av/bx;->a(Lcom/twitter/android/av/ca;)V

    .line 135
    :cond_2
    return-void

    .line 121
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/control/VideoControlView;->a(Lcom/twitter/library/av/playback/bl;)V

    .line 548
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/av/AVMedia;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->f:Z

    .line 397
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->u()V

    .line 398
    iget-object v1, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/twitter/model/av/AVMedia;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/library/av/control/VideoControlView;->b(Z)V

    .line 401
    :cond_1
    return-void

    .line 399
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 551
    return-void
.end method

.method public a(ZJ)V
    .locals 2

    .prologue
    .line 335
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->c:Z

    if-eqz v0, :cond_1

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->c:Z

    .line 337
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->A()V

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->m:Lcom/twitter/library/av/control/f;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->m:Lcom/twitter/library/av/control/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/twitter/library/av/control/f;->a(ZJ)V

    .line 345
    :cond_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->v()V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1, p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->a(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method protected a(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .locals 1

    .prologue
    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->f:Z

    .line 314
    iput-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->c:Z

    .line 315
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->u()V

    .line 316
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/control/VideoControlView;->a(Z)V

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->p()V

    .line 320
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->B()V

    .line 321
    return-void
.end method

.method protected b(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 213
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040048

    const/4 v2, 0x0

    .line 214
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 213
    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public b_(Z)V
    .locals 0

    .prologue
    .line 520
    if-eqz p1, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->p()V

    .line 523
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->t()V

    .line 465
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->u()V

    .line 460
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->f:Z

    .line 406
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->getAVPlayer()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->t()V

    .line 410
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 439
    iget-boolean v1, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz v1, :cond_1

    .line 440
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/library/av/control/VideoControlView;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 441
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->p()V

    .line 445
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 447
    :cond_1
    return v0

    .line 442
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->o()V

    goto :goto_0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method protected getAVPlayer()Lcom/twitter/library/av/playback/AVPlayer;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->a:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 100
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getControls()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    return-object v0
.end method

.method public getPlaylistCompleteOverlayBackgroundColor()I
    .locals 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 105
    return-object p0
.end method

.method getViewMoreButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->d:Landroid/view/View;

    return-object v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->p()V

    .line 265
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->A()V

    .line 326
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->u()V

    .line 327
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->o()V

    .line 328
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->addView(Landroid/view/View;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/library/av/control/VideoControlView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->addView(Landroid/view/View;)V

    .line 150
    :cond_1
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->requestLayout()V

    .line 428
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/library/av/control/VideoControlView;->a()V

    .line 431
    :cond_0
    return-void
.end method

.method protected m()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->D()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/control/VideoControlView;->setIsFullScreenToggleAllowed(Z)V

    .line 187
    :cond_0
    return-void
.end method

.method protected n()Lcom/twitter/android/av/be;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/twitter/android/av/be;

    invoke-direct {v0}, Lcom/twitter/android/av/be;-><init>()V

    return-object v0
.end method

.method protected o()V
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/library/av/control/VideoControlView;->f()V

    .line 234
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->e:Lcom/twitter/android/av/bx;

    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/bx;->a(Landroid/content/Context;)V

    .line 373
    :cond_0
    return-void
.end method

.method protected p()V
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/library/av/control/VideoControlView;->g()V

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->c:Z

    if-nez v0, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->v()V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->k:Lcom/twitter/android/av/bp;

    invoke-virtual {v0}, Lcom/twitter/android/av/bp;->a()V

    goto :goto_0
.end method

.method public q()V
    .locals 0

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->o()V

    .line 260
    return-void
.end method

.method protected r()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setControlsListener(Lcom/twitter/library/av/control/f;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->m:Lcom/twitter/library/av/control/f;

    .line 392
    return-void
.end method

.method public setIsFullscreen(Z)V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/control/VideoControlView;->c(Z)V

    .line 580
    :cond_0
    return-void
.end method

.method public setShouldShowControls(Z)V
    .locals 2

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->i:Z

    .line 383
    if-eqz p1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/control/VideoControlView;->setVisibility(I)V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/control/VideoControlView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupInternalViews(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->a(Landroid/content/Context;)Lcom/twitter/library/av/control/VideoControlView;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    .line 161
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b:Lcom/twitter/library/av/control/VideoControlView;

    invoke-virtual {v0, p0}, Lcom/twitter/library/av/control/VideoControlView;->setListener(Lcom/twitter/library/av/control/f;)V

    .line 163
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->m()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->d:Landroid/view/View;

    if-nez v0, :cond_1

    .line 168
    invoke-virtual {p0, p1}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->d:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->h:Lcom/twitter/android/av/be;

    if-nez v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->n()Lcom/twitter/android/av/be;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->h:Lcom/twitter/android/av/be;

    .line 178
    :cond_2
    return-void
.end method

.method public t()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->h:Lcom/twitter/android/av/be;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->h:Lcom/twitter/android/av/be;

    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/twitter/android/av/be;->a(Landroid/view/ViewGroup;Landroid/content/Context;)Z

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->o()V

    .line 472
    return-void
.end method

.method public u()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->h:Lcom/twitter/android/av/be;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->h:Lcom/twitter/android/av/be;

    invoke-virtual {v0, p0}, Lcom/twitter/android/av/be;->a(Landroid/view/ViewGroup;)Z

    .line 478
    :cond_0
    return-void
.end method

.method protected v()V
    .locals 4

    .prologue
    .line 481
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->k:Lcom/twitter/android/av/bp;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/av/bp;->a(J)V

    .line 482
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->v()V

    .line 488
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->m:Lcom/twitter/library/av/control/f;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->m:Lcom/twitter/library/av/control/f;

    invoke-interface {v0}, Lcom/twitter/library/av/control/f;->w()V

    .line 491
    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->m:Lcom/twitter/library/av/control/f;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->m:Lcom/twitter/library/av/control/f;

    invoke-interface {v0}, Lcom/twitter/library/av/control/f;->x()V

    .line 498
    :cond_0
    return-void
.end method

.method public y()V
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->v()V

    .line 504
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->m:Lcom/twitter/library/av/control/f;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->m:Lcom/twitter/library/av/control/f;

    invoke-interface {v0}, Lcom/twitter/library/av/control/f;->y()V

    .line 507
    :cond_0
    return-void
.end method

.method public z()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->k:Lcom/twitter/android/av/bp;

    invoke-virtual {v0}, Lcom/twitter/android/av/bp;->a()V

    .line 513
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->m:Lcom/twitter/library/av/control/f;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/twitter/android/av/BaseVideoPlayerChromeView;->m:Lcom/twitter/library/av/control/f;

    invoke-interface {v0}, Lcom/twitter/library/av/control/f;->z()V

    .line 516
    :cond_0
    return-void
.end method
