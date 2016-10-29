.class public Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;
.super Landroid/widget/FrameLayout;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/library/av/control/h;


# instance fields
.field protected a:Lcom/twitter/android/av/AutoPlayBadgeView;

.field b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

.field c:Landroid/view/View;

.field d:Z

.field private final e:Lcom/twitter/library/av/control/c;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-static {}, Lcom/twitter/library/av/control/d;->b()Lcom/twitter/library/av/control/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->e:Lcom/twitter/library/av/control/c;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-static {}, Lcom/twitter/library/av/control/d;->b()Lcom/twitter/library/av/control/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->e:Lcom/twitter/library/av/control/c;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-static {}, Lcom/twitter/library/av/control/d;->b()Lcom/twitter/library/av/control/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->e:Lcom/twitter/library/av/control/c;

    .line 57
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->c:Landroid/view/View;

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/twitter/util/d;->b(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    .line 299
    :cond_0
    return-void
.end method

.method private q()V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->c:Landroid/view/View;

    const/16 v1, 0x12c

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/util/d;->a(Landroid/view/View;ILandroid/view/animation/Interpolator;I)Landroid/view/ViewPropertyAnimator;

    .line 308
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->o()V

    .line 152
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/av/ar;)V
    .locals 0

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->o()V

    .line 229
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;->d:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    if-ne p1, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->n()V

    .line 147
    :cond_1
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->removeAllViews()V

    .line 78
    iput-object p1, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 80
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 82
    const v0, 0x7f04003d

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    const v0, 0x7f13018e

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/AutoPlayBadgeView;

    iput-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    .line 85
    const v0, 0x7f04003e

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    const v0, 0x7f13018d

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->c:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    invoke-virtual {p1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/AutoPlayBadgeView;->setAVDataSource(Lcom/twitter/library/av/playback/AVDataSource;)V

    .line 92
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->f:Z

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/av/AutoPlayBadgeView;->a(Lcom/twitter/library/av/playback/bl;)V

    .line 243
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->e:Lcom/twitter/library/av/control/c;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/control/c;->a(Lcom/twitter/library/av/playback/bl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->p()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/av/AVMedia;)V
    .locals 1

    .prologue
    .line 131
    invoke-static {p1}, Lcom/twitter/model/av/b;->a(Lcom/twitter/model/av/AVMedia;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->d:Z

    .line 133
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/av/AutoPlayBadgeView;->setAvMedia(Lcom/twitter/model/av/AVMedia;)V

    .line 136
    :cond_0
    return-void
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
    .line 249
    return-void
.end method

.method public a_(Z)V
    .locals 0

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->o()V

    .line 177
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->n()V

    .line 157
    return-void
.end method

.method public b_(Z)V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->m()V

    .line 164
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->k()V

    .line 169
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->o()V

    .line 187
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 72
    return-object p0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->k()V

    .line 198
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_0
    return-void
.end method

.method k()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 205
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    .line 206
    :goto_0
    if-nez v0, :cond_1

    .line 215
    :goto_1
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->n()V

    goto :goto_1

    .line 210
    :cond_2
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->v()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->m()V

    goto :goto_1

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->o()V

    goto :goto_1
.end method

.method public l()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method protected m()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    invoke-virtual {v0}, Lcom/twitter/android/av/AutoPlayBadgeView;->a()V

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->q()V

    .line 266
    return-void
.end method

.method protected n()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->f:Z

    .line 274
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    invoke-virtual {v0}, Lcom/twitter/android/av/AutoPlayBadgeView;->b()V

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->q()V

    .line 278
    return-void
.end method

.method protected o()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->f:Z

    .line 286
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    invoke-virtual {v0}, Lcom/twitter/android/av/AutoPlayBadgeView;->c()V

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->q()V

    .line 290
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 121
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->k()V

    .line 122
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->p()V

    .line 256
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 97
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    invoke-virtual {v0}, Lcom/twitter/android/av/AutoPlayBadgeView;->getRight()I

    move-result v0

    .line 99
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 100
    iget-object v1, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    invoke-virtual {v1}, Lcom/twitter/android/av/AutoPlayBadgeView;->getRight()I

    move-result v1

    .line 101
    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 102
    iget-object v2, p0, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    const-string/jumbo v3, "right"

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v1, v4, v6

    .line 103
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 104
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 105
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto :goto_0
.end method
