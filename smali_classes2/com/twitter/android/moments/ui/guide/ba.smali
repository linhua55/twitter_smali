.class Lcom/twitter/android/moments/ui/guide/ba;
.super Lcom/twitter/android/moments/ui/guide/v;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/moments/ui/guide/v",
        "<",
        "Lcom/twitter/android/moments/viewmodels/ap;",
        ">;",
        "Lcom/twitter/library/widget/a;"
    }
.end annotation


# instance fields
.field private final l:Lcom/twitter/android/moments/ui/fullscreen/dm;

.field private final m:Lcom/twitter/app/common/util/t;

.field private final n:Lcom/twitter/app/common/util/a;

.field private o:Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoPlayerView;

.field private p:Lcom/twitter/android/moments/ui/video/b;

.field private final q:F

.field private r:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lamc;Lcom/twitter/android/moments/ui/guide/s;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/fullscreen/dm;Lcom/twitter/android/moments/ui/guide/h;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/ae;Lahn;Lcom/twitter/android/moments/data/bo;Lcom/twitter/app/common/util/t;Lcom/twitter/android/moments/ui/guide/q;)V
    .locals 14

    .prologue
    .line 75
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p14

    invoke-direct/range {v1 .. v13}, Lcom/twitter/android/moments/ui/guide/v;-><init>(Landroid/content/Context;Lamc;Lcom/twitter/android/moments/ui/guide/s;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/guide/h;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/ae;Lahn;Lcom/twitter/android/moments/data/bo;Lcom/twitter/android/moments/ui/guide/q;)V

    .line 44
    new-instance v1, Lcom/twitter/android/moments/ui/guide/bb;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/guide/bb;-><init>(Lcom/twitter/android/moments/ui/guide/ba;)V

    iput-object v1, p0, Lcom/twitter/android/moments/ui/guide/ba;->n:Lcom/twitter/app/common/util/a;

    .line 78
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->l:Lcom/twitter/android/moments/ui/fullscreen/dm;

    .line 79
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->m:Lcom/twitter/app/common/util/t;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11000b

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/moments/ui/guide/ba;->q:F

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/guide/ba;)Lcom/twitter/android/moments/ui/video/b;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/guide/ba;)Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoPlayerView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->o:Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoPlayerView;

    return-object v0
.end method

.method private k()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    .line 196
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->g()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 196
    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-super {p0}, Lcom/twitter/android/moments/ui/guide/v;->a()V

    .line 135
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->e()V

    .line 137
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->l:Lcom/twitter/android/moments/ui/fullscreen/dm;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/dm;->a(Lcom/twitter/android/moments/ui/video/b;)V

    .line 138
    iput-object v2, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->c:Landroid/view/ViewGroup;

    const v1, 0x7f1304d5

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/FillCropFrameLayout;

    .line 143
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/FillCropFrameLayout;->removeAllViews()V

    .line 144
    invoke-virtual {v0, v2}, Lcom/twitter/android/moments/ui/FillCropFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iput-object v2, p0, Lcom/twitter/android/moments/ui/guide/ba;->o:Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoPlayerView;

    .line 146
    return-void
.end method

.method public a(Lcom/twitter/android/moments/viewmodels/ap;)V
    .locals 7

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/guide/ba;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V

    .line 86
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->c:Landroid/view/ViewGroup;

    const v1, 0x7f1304d5

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/AutoplayableVideoFillCropFrameLayout;

    .line 88
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/ba;->l:Lcom/twitter/android/moments/ui/fullscreen/dm;

    .line 89
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/ap;->h()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/dm;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/moments/ui/video/b;

    move-result-object v2

    .line 90
    invoke-virtual {v0, p0}, Lcom/twitter/android/moments/ui/AutoplayableVideoFillCropFrameLayout;->setAutoplayableItem(Lcom/twitter/library/widget/a;)V

    .line 91
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/video/b;->g()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/AutoplayableVideoFillCropFrameLayout;->setAVPlayerAttachment(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    .line 92
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoPlayerView;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/guide/ba;->a:Landroid/content/Context;

    .line 93
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/video/b;->g()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v4

    new-instance v5, Lcom/twitter/android/moments/ui/fullscreen/ez;

    invoke-direct {v5}, Lcom/twitter/android/moments/ui/fullscreen/ez;-><init>()V

    sget-object v6, Lcom/twitter/library/av/VideoPlayerView$Mode;->e:Lcom/twitter/library/av/VideoPlayerView$Mode;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoPlayerView;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/az;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    iput-object v1, p0, Lcom/twitter/android/moments/ui/guide/ba;->o:Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoPlayerView;

    .line 95
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/AutoplayableVideoFillCropFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0207a8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/AutoplayableVideoFillCropFrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    new-instance v1, Lcom/twitter/android/moments/ui/guide/bc;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/guide/bc;-><init>(Lcom/twitter/android/moments/ui/guide/ba;Lcom/twitter/android/moments/viewmodels/ap;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/AutoplayableVideoFillCropFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/ba;->o:Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoPlayerView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/AutoplayableVideoFillCropFrameLayout;->addView(Landroid/view/View;)V

    .line 104
    iget-object v1, p1, Lcom/twitter/android/moments/viewmodels/ap;->b:Lcom/twitter/model/moments/k;

    invoke-static {v1}, Lcom/twitter/model/moments/k;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/g;

    move-result-object v3

    .line 105
    iget v1, p0, Lcom/twitter/android/moments/ui/guide/ba;->q:F

    invoke-static {p1, v1}, Lcom/twitter/android/moments/data/x;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;F)Lcom/twitter/util/math/Size;

    move-result-object v4

    .line 106
    if-eqz v4, :cond_0

    .line 107
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/twitter/model/moments/g;->a()Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v4, v1}, Lcom/twitter/android/moments/ui/AutoplayableVideoFillCropFrameLayout;->a(Lcom/twitter/util/math/Size;Landroid/graphics/Rect;)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/ba;->o:Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoPlayerView;

    new-instance v5, Lcom/twitter/android/moments/ui/guide/bd;

    invoke-direct {v5, p0, v4, v0, v3}, Lcom/twitter/android/moments/ui/guide/bd;-><init>(Lcom/twitter/android/moments/ui/guide/ba;Lcom/twitter/util/math/Size;Lcom/twitter/android/moments/ui/AutoplayableVideoFillCropFrameLayout;Lcom/twitter/model/moments/g;)V

    invoke-virtual {v1, v5}, Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoPlayerView;->setAVPlayerListener(Lcom/twitter/library/av/s;)V

    .line 122
    iput-object v2, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    .line 123
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->r:Z

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/video/b;->a()V

    .line 125
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/video/b;->c()V

    .line 129
    :goto_1
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/video/b;->f()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->d(Z)V

    .line 130
    return-void

    .line 107
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/video/b;->b()V

    goto :goto_1
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/ba;->j()V

    .line 181
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/ba;->k()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/ba;->f()V

    .line 174
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/ba;->k()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->m:Lcom/twitter/app/common/util/t;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/ba;->n:Lcom/twitter/app/common/util/a;

    invoke-interface {v0, v1}, Lcom/twitter/app/common/util/t;->a(Lcom/twitter/app/common/util/a;)V

    .line 150
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->a()V

    .line 152
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->d()V

    .line 154
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->r:Z

    .line 155
    return-void
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->b()V

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/ba;->k()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->o:Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoPlayerView;

    return-object v0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->p:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->e()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->m:Lcom/twitter/app/common/util/t;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/ba;->n:Lcom/twitter/app/common/util/a;

    invoke-interface {v0, v1}, Lcom/twitter/app/common/util/t;->b(Lcom/twitter/app/common/util/a;)V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/ba;->r:Z

    .line 163
    return-void
.end method
