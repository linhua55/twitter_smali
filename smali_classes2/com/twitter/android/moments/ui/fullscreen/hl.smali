.class public Lcom/twitter/android/moments/ui/fullscreen/hl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/moments/core/ui/widget/sectionpager/a;


# instance fields
.field final a:Lcom/twitter/app/common/util/a;

.field final b:Lcom/twitter/library/av/s;

.field private final c:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

.field private final d:Laky;

.field private final e:Lcom/twitter/android/moments/ui/fullscreen/ft;

.field private final f:Lcom/twitter/android/moments/ui/video/b;

.field private final g:Lcom/twitter/android/moments/ui/fullscreen/z;

.field private final h:Lcom/twitter/android/moments/ui/fullscreen/dm;

.field private final i:Lcom/twitter/android/moments/ui/fullscreen/cm;

.field private final j:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/twitter/android/moments/ui/fullscreen/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/twitter/app/common/util/t;

.field private final m:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/twitter/android/moments/ui/fullscreen/gd;

.field private final p:Lcom/twitter/android/moments/ui/fullscreen/fn;

.field private final q:Lahd;

.field private final r:Lcom/twitter/android/client/bo;

.field private final s:F

.field private t:Z

.field private u:Z

.field private v:Z


# direct methods
.method constructor <init>(Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;Laky;Lcom/twitter/android/moments/ui/fullscreen/ft;Lcom/twitter/android/moments/ui/video/b;Lcom/twitter/android/moments/ui/fullscreen/z;Lcom/twitter/android/moments/ui/fullscreen/dm;Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/app/common/util/t;Lcom/twitter/android/moments/ui/fullscreen/gd;Lcom/twitter/android/moments/ui/fullscreen/fn;Lahd;Lcom/twitter/android/client/bo;F)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;",
            "Laky;",
            "Lcom/twitter/android/moments/ui/fullscreen/ft;",
            "Lcom/twitter/android/moments/ui/video/b;",
            "Lcom/twitter/android/moments/ui/fullscreen/z;",
            "Lcom/twitter/android/moments/ui/fullscreen/dm;",
            "Lcom/twitter/android/moments/ui/fullscreen/cm;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;",
            "Lcom/twitter/app/common/util/t;",
            "Lcom/twitter/android/moments/ui/fullscreen/gd;",
            "Lcom/twitter/android/moments/ui/fullscreen/fn;",
            "Lahd;",
            "Lcom/twitter/android/client/bo;",
            "F)V"
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/hm;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/hm;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hl;)V

    iput-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->a:Lcom/twitter/app/common/util/a;

    .line 58
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/hn;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/hn;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hl;)V

    iput-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->b:Lcom/twitter/library/av/s;

    .line 139
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/ho;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/ho;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hl;)V

    iput-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->n:Lcom/twitter/util/y;

    .line 169
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->c:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    .line 170
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->d:Laky;

    .line 171
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->e:Lcom/twitter/android/moments/ui/fullscreen/ft;

    .line 172
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->f:Lcom/twitter/android/moments/ui/video/b;

    .line 173
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->g:Lcom/twitter/android/moments/ui/fullscreen/z;

    .line 174
    iput-object p6, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->h:Lcom/twitter/android/moments/ui/fullscreen/dm;

    .line 175
    iput-object p7, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->i:Lcom/twitter/android/moments/ui/fullscreen/cm;

    .line 176
    iput-object p8, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->j:Lcom/twitter/util/x;

    .line 177
    iput-object p10, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->l:Lcom/twitter/app/common/util/t;

    .line 178
    iput-object p11, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->o:Lcom/twitter/android/moments/ui/fullscreen/gd;

    .line 179
    iput-object p12, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->p:Lcom/twitter/android/moments/ui/fullscreen/fn;

    .line 180
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->q:Lahd;

    .line 181
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->r:Lcom/twitter/android/client/bo;

    .line 182
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->e()Lcom/twitter/util/y;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->m:Lcom/twitter/util/y;

    .line 183
    iput-object p9, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->k:Lcom/twitter/android/moments/ui/fullscreen/bs;

    .line 184
    move/from16 v0, p15

    iput v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->s:F

    .line 186
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->d:Laky;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->b:Lcom/twitter/library/av/s;

    invoke-virtual {v1, v2}, Laky;->a(Lcom/twitter/library/av/s;)V

    .line 187
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->d:Laky;

    invoke-virtual {p4}, Lcom/twitter/android/moments/ui/video/b;->g()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v2

    invoke-virtual {v1, v2}, Laky;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    .line 188
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->f:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/video/b;->b()V

    .line 189
    invoke-virtual {p11}, Lcom/twitter/android/moments/ui/fullscreen/gd;->g()V

    .line 191
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->a:Lcom/twitter/app/common/util/a;

    invoke-interface {p10, v1}, Lcom/twitter/app/common/util/t;->a(Lcom/twitter/app/common/util/a;)V

    .line 192
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/library/av/playback/bm;->o(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_0

    .line 194
    iget-object v2, v1, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    iget v2, v2, Lcom/twitter/model/card/property/Vector2F;->x:F

    float-to-int v2, v2

    iget-object v1, v1, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    iget v1, v1, Lcom/twitter/model/card/property/Vector2F;->y:F

    float-to-int v1, v1

    invoke-direct {p0, v2, v1}, Lcom/twitter/android/moments/ui/fullscreen/hl;->a(II)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->d:Laky;

    invoke-virtual {v1}, Laky;->k()Lrx/o;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/hp;

    invoke-direct {v2, p0}, Lcom/twitter/android/moments/ui/fullscreen/hp;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hl;)V

    invoke-virtual {v1, v2}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    .line 204
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->c:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    iget-object v1, v1, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->b:Lcom/twitter/model/moments/k;

    iget-boolean v1, v1, Lcom/twitter/model/moments/k;->h:Z

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->d:Laky;

    invoke-virtual {v1}, Laky;->k()Lrx/o;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/hq;

    invoke-direct {v2, p0}, Lcom/twitter/android/moments/ui/fullscreen/hq;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hl;)V

    invoke-virtual {v1, v2}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->c:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->l()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->c:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->k()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->r:Lcom/twitter/android/client/bo;

    .line 213
    invoke-virtual {v1}, Lcom/twitter/android/client/bo;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {p2}, Laky;->i()V

    .line 215
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/hr;

    invoke-direct {v1, p0, p2}, Lcom/twitter/android/moments/ui/fullscreen/hr;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hl;Laky;)V

    invoke-virtual {p2, v1}, Laky;->a(Landroid/view/View$OnClickListener;)V

    .line 223
    :cond_2
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/android/moments/ui/fullscreen/ez;Lcom/twitter/android/moments/ui/fullscreen/gn;)Laky;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 313
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 314
    iget-object v1, p1, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->b:Lcom/twitter/model/moments/k;

    iget-boolean v1, v1, Lcom/twitter/model/moments/k;->h:Z

    if-eqz v1, :cond_0

    .line 315
    new-instance v1, Lcom/twitter/library/av/VideoPlayerView;

    sget-object v2, Lcom/twitter/library/av/VideoPlayerView$Mode;->e:Lcom/twitter/library/av/VideoPlayerView$Mode;

    invoke-direct {v1, p0, p2, p3, v2}, Lcom/twitter/library/av/VideoPlayerView;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/az;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    .line 319
    invoke-interface {p4}, Lcom/twitter/android/moments/ui/fullscreen/gn;->b()Lrx/o;

    move-result-object v2

    .line 318
    invoke-static {v0, v1, v2}, Laky;->a(Landroid/view/LayoutInflater;Lcom/twitter/library/av/VideoPlayerView;Lrx/o;)Laky;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 322
    :cond_0
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoPlayerView;

    sget-object v2, Lcom/twitter/library/av/VideoPlayerView$Mode;->e:Lcom/twitter/library/av/VideoPlayerView$Mode;

    invoke-direct {v1, p0, p2, p3, v2}, Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoPlayerView;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/az;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    .line 324
    invoke-static {v0, v1}, Laky;->a(Landroid/view/LayoutInflater;Lcom/twitter/library/av/VideoPlayerView;)Laky;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/dm;Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/app/common/util/t;Lcom/twitter/android/moments/ui/fullscreen/gd;Lcom/twitter/android/moments/ui/fullscreen/fn;Lahd;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lcom/twitter/android/moments/ui/fullscreen/hl;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/dm;",
            "Lcom/twitter/android/moments/ui/fullscreen/cm;",
            "Lcom/twitter/app/common/util/t;",
            "Lcom/twitter/android/moments/ui/fullscreen/gd;",
            "Lcom/twitter/android/moments/ui/fullscreen/fn;",
            "Lahd;",
            "Lcom/twitter/android/moments/ui/fullscreen/gn;",
            ")",
            "Lcom/twitter/android/moments/ui/fullscreen/hl;"
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v3

    .line 283
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/twitter/android/moments/ui/fullscreen/dm;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/moments/ui/video/b;

    move-result-object v13

    .line 285
    invoke-virtual {v13}, Lcom/twitter/android/moments/ui/video/b;->g()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v3

    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/ez;

    invoke-direct {v4}, Lcom/twitter/android/moments/ui/fullscreen/ez;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    invoke-static {v0, v1, v3, v4, v2}, Lcom/twitter/android/moments/ui/fullscreen/hl;->a(Landroid/content/Context;Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/android/moments/ui/fullscreen/ez;Lcom/twitter/android/moments/ui/fullscreen/gn;)Laky;

    move-result-object v14

    .line 287
    new-instance v3, Lcom/twitter/android/moments/ui/fullscreen/z;

    .line 288
    invoke-virtual {v14}, Laky;->f()Landroid/view/ViewGroup;

    move-result-object v4

    .line 289
    invoke-virtual {v14}, Laky;->c()Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v14}, Laky;->e()Landroid/widget/TextView;

    move-result-object v6

    .line 290
    invoke-virtual {v14}, Laky;->d()Landroid/view/View;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 291
    invoke-virtual {v14}, Laky;->b()Landroid/widget/ProgressBar;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->h()Lcom/twitter/model/moments/MomentPageDisplayMode;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->j()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p3

    invoke-direct/range {v3 .. v12}, Lcom/twitter/android/moments/ui/fullscreen/z;-><init>(Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/content/res/Resources;Landroid/widget/ProgressBar;Lcom/twitter/model/moments/MomentPageDisplayMode;Ljava/lang/String;Lcom/twitter/android/moments/ui/fullscreen/bs;)V

    .line 294
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/client/bo;->a(Landroid/app/Activity;)Lcom/twitter/android/client/bo;

    move-result-object v18

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f11000a

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 297
    new-instance v7, Lcom/twitter/android/moments/ui/fullscreen/ft;

    invoke-virtual {v14}, Laky;->f()Landroid/view/ViewGroup;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v7, v5, v4, v6}, Lcom/twitter/android/moments/ui/fullscreen/ft;-><init>(Landroid/view/View;FI)V

    .line 299
    invoke-static/range {p0 .. p0}, Lcom/twitter/util/ui/r;->a(Landroid/content/Context;)Lcom/twitter/util/math/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/util/math/Size;->g()F

    move-result v19

    .line 300
    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/hl;

    move-object/from16 v5, p1

    move-object v6, v14

    move-object v8, v13

    move-object v9, v3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    invoke-direct/range {v4 .. v19}, Lcom/twitter/android/moments/ui/fullscreen/hl;-><init>(Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;Laky;Lcom/twitter/android/moments/ui/fullscreen/ft;Lcom/twitter/android/moments/ui/video/b;Lcom/twitter/android/moments/ui/fullscreen/z;Lcom/twitter/android/moments/ui/fullscreen/dm;Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/app/common/util/t;Lcom/twitter/android/moments/ui/fullscreen/gd;Lcom/twitter/android/moments/ui/fullscreen/fn;Lahd;Lcom/twitter/android/client/bo;F)V

    return-object v4
.end method

.method private a(II)V
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->c:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    iget-object v0, v0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->b:Lcom/twitter/model/moments/k;

    iget v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->s:F

    invoke-static {v0, v1}, Lcom/twitter/model/moments/k;->a(Lcom/twitter/model/moments/k;F)Lcom/twitter/model/moments/g;

    move-result-object v0

    .line 406
    if-nez v0, :cond_0

    .line 407
    invoke-static {p1, p2}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v1

    .line 408
    const/4 v0, 0x0

    .line 413
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->d:Laky;

    invoke-virtual {v2, v1, v0}, Laky;->a(Lcom/twitter/util/math/Size;Landroid/graphics/Rect;)V

    .line 414
    return-void

    .line 410
    :cond_0
    iget-object v1, v0, Lcom/twitter/model/moments/g;->f:Lcom/twitter/util/math/Size;

    .line 411
    invoke-virtual {v0}, Lcom/twitter/model/moments/g;->a()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/hl;II)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/hl;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/hl;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->u:Z

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/hl;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/hl;)Lcom/twitter/android/moments/ui/video/b;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->f:Lcom/twitter/android/moments/ui/video/b;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/hl;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/fullscreen/hl;)Lcom/twitter/android/moments/ui/fullscreen/gd;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->o:Lcom/twitter/android/moments/ui/fullscreen/gd;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/moments/ui/fullscreen/hl;)Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->c:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/moments/ui/fullscreen/hl;)Lcom/twitter/android/moments/ui/fullscreen/bs;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->k:Lcom/twitter/android/moments/ui/fullscreen/bs;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/moments/ui/fullscreen/hl;)Laky;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->d:Laky;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->r:Lcom/twitter/android/client/bo;

    invoke-virtual {v0}, Lcom/twitter/android/client/bo;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->f:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->c()V

    .line 400
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/twitter/android/moments/ui/fullscreen/hl;)Lcom/twitter/android/moments/ui/fullscreen/fn;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->p:Lcom/twitter/android/moments/ui/fullscreen/fn;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->d:Laky;

    invoke-virtual {v0}, Laky;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 367
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->e:Lcom/twitter/android/moments/ui/fullscreen/ft;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ft;->a(F)V

    .line 375
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->f:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->f()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    .line 376
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v2, v1

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/j;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->a(F)V

    .line 379
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->b(F)V

    .line 381
    iget-boolean v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->v:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->k:Lcom/twitter/android/moments/ui/fullscreen/bs;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->c:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->j()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->d:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    .line 383
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->a()Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    move-result-object v2

    .line 382
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 387
    :goto_0
    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->f:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->g()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->i()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 392
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->f()V

    .line 394
    :cond_1
    return-void

    .line 386
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->t:Z

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->k:Lcom/twitter/android/moments/ui/fullscreen/bs;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->c:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->j()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->c:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    .line 337
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->a()Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    move-result-object v2

    .line 336
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->f:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->g()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->i()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 340
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->f:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->f()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->i:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/fullscreen/cm;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->d(Z)V

    .line 341
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->f()V

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->u:Z

    .line 343
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->j:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->m:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 344
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->i:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cm;->c()Lcom/twitter/util/x;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->n:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 345
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->u:Z

    .line 350
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->f:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->f()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/av/playback/AVPlayer;->a(J)V

    .line 351
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->f:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->e()V

    .line 352
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->f:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->g()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->j()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 353
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->j:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->m:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 354
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->i:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cm;->c()Lcom/twitter/util/x;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->n:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 355
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->l:Lcom/twitter/app/common/util/t;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->a:Lcom/twitter/app/common/util/a;

    invoke-interface {v0, v1}, Lcom/twitter/app/common/util/t;->b(Lcom/twitter/app/common/util/a;)V

    .line 360
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->h:Lcom/twitter/android/moments/ui/fullscreen/dm;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->f:Lcom/twitter/android/moments/ui/video/b;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->l:Lcom/twitter/app/common/util/t;

    .line 361
    invoke-interface {v0}, Lcom/twitter/app/common/util/t;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 360
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/moments/ui/fullscreen/dm;->a(Lcom/twitter/android/moments/ui/video/b;Z)V

    .line 362
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->g:Lcom/twitter/android/moments/ui/fullscreen/z;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/z;->g()V

    .line 363
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Lcom/twitter/util/y;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/hs;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->d:Laky;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->e:Lcom/twitter/android/moments/ui/fullscreen/ft;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/hl;->q:Lahd;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/hs;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hl;Laln;Lcom/twitter/android/moments/ui/fullscreen/ft;Lahd;)V

    return-object v0
.end method
