.class public Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;
.super Lcom/twitter/android/TimelineFragment;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/timeline/by;


# static fields
.field public static final o:Ljava/lang/String;


# instance fields
.field p:Labl;

.field q:Lcom/twitter/library/scribe/bj;

.field r:Lcom/twitter/android/timeline/bx;

.field s:Labq;

.field private final t:Ldlx;

.field private final u:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Lcom/twitter/model/livevideo/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;-><init>()V

    .line 69
    new-instance v0, Ldlx;

    invoke-direct {v0}, Ldlx;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->t:Ldlx;

    .line 72
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->u:Lrx/subjects/e;

    .line 71
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/widget/NewItemBannerView;

    .line 106
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->an()Lcom/twitter/android/ie;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/a;->a(Lcom/twitter/app/common/list/w;)Lcom/twitter/android/livevideo/landing/a;

    move-result-object v2

    .line 108
    new-instance v0, Lcom/twitter/android/livevideo/landing/di/w;

    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/livevideo/landing/di/w;-><init>(Landroid/content/Context;Lcom/twitter/android/livevideo/landing/a;Landroid/os/Bundle;Lcom/twitter/android/widget/NewItemBannerView;Lcom/twitter/android/timeline/by;)V

    .line 112
    invoke-static {}, Lcom/twitter/android/livevideo/landing/di/f;->a()Lcom/twitter/android/livevideo/landing/di/j;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Lcom/twitter/android/livevideo/landing/di/j;->a(Lcom/twitter/android/livevideo/landing/di/w;)Lcom/twitter/android/livevideo/landing/di/j;

    move-result-object v0

    .line 114
    invoke-static {}, Lcom/twitter/app/common/app/n;->w()Lcom/twitter/app/common/app/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/landing/di/j;->a(Lcom/twitter/app/common/app/n;)Lcom/twitter/android/livevideo/landing/di/j;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/twitter/android/livevideo/landing/di/j;->a()Lcom/twitter/android/livevideo/landing/di/v;

    move-result-object v0

    .line 117
    invoke-interface {v0, p0}, Lcom/twitter/android/livevideo/landing/di/v;->a(Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;)V

    .line 118
    return-void
.end method

.method private a(Lbpv;I)V
    .locals 4

    .prologue
    .line 239
    invoke-virtual {p1}, Lbpv;->H()I

    move-result v1

    .line 240
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 241
    :goto_0
    invoke-virtual {p1}, Lbpv;->z()Lcom/twitter/model/timeline/br;

    move-result-object v2

    .line 242
    iget-object v3, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v3, v1, v0, v2}, Lcom/twitter/android/timeline/bx;->a(IZLcom/twitter/model/timeline/br;)V

    .line 243
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;I)Z
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->h(I)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 248
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 249
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v3, "new_tweet_prompt"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 250
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 251
    return-void
.end method

.method private bg()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->p:Labl;

    .line 122
    invoke-virtual {v0}, Labl;->a()Lrx/o;

    move-result-object v0

    .line 123
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    .line 124
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    .line 125
    invoke-static {}, Ldcn;->d()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/livevideo/landing/t;

    invoke-direct {v1, p0}, Lcom/twitter/android/livevideo/landing/t;-><init>(Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;)V

    .line 126
    invoke-virtual {v0, v1}, Lrx/o;->a(Ldjf;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/livevideo/landing/s;

    invoke-direct {v1, p0}, Lcom/twitter/android/livevideo/landing/s;-><init>(Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;)V

    .line 132
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->u:Lrx/subjects/e;

    .line 139
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/r;)Lrx/ap;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->t:Ldlx;

    invoke-virtual {v1, v0}, Ldlx;->a(Lrx/ap;)V

    .line 141
    return-void
.end method

.method private bh()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->s:Labq;

    .line 145
    invoke-virtual {v0}, Labq;->b()Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/livevideo/landing/u;

    invoke-direct {v1, p0}, Lcom/twitter/android/livevideo/landing/u;-><init>(Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;)V

    .line 146
    invoke-virtual {v0, v1}, Lrx/o;->a(Ldjf;)Lrx/o;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lrx/o;->n()Lrx/ap;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->t:Ldlx;

    invoke-virtual {v1, v0}, Ldlx;->a(Lrx/ap;)V

    .line 156
    return-void
.end method

.method private bi()V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Lcom/twitter/android/livevideo/landing/v;

    invoke-direct {v0, p0}, Lcom/twitter/android/livevideo/landing/v;-><init>(Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->a(Lcom/twitter/app/common/list/ah;)Lcom/twitter/app/common/list/TwitterListFragment;

    .line 175
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->b()V

    .line 176
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->aA()Lcom/twitter/app/common/inject/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/inject/o;->a(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    .line 177
    return-void
.end method


# virtual methods
.method public P()V
    .locals 1

    .prologue
    .line 267
    const-string/jumbo v0, "show"

    invoke-direct {p0, v0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->b(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public Q()V
    .locals 1

    .prologue
    .line 272
    const-string/jumbo v0, "dismiss"

    invoke-direct {p0, v0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->b(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method protected T()Lcom/twitter/android/vs;
    .locals 7

    .prologue
    .line 83
    new-instance v0, Lcom/twitter/android/vt;

    invoke-direct {v0}, Lcom/twitter/android/vt;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    iget v3, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->K:I

    iget-object v4, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->L:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 84
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v5

    iget-object v6, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->q:Lcom/twitter/library/scribe/bj;

    .line 83
    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/vt;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/client/bk;Lcom/twitter/library/scribe/bj;)Lcom/twitter/android/vs;

    move-result-object v0

    return-object v0
.end method

.method protected U()Laap;
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->L:Lcom/twitter/library/scribe/TwitterScribeItem;

    iget-object v3, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->q:Lcom/twitter/library/scribe/bj;

    invoke-static {v0, v1, v2, v3}, Laaq;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/ScribeItem;Lcom/twitter/library/scribe/bj;)Laap;

    move-result-object v0

    return-object v0
.end method

.method protected V()Lcom/twitter/android/sn;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Lcom/twitter/android/livevideo/landing/x;

    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->q:Lcom/twitter/library/scribe/bj;

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/android/livevideo/landing/x;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/bj;)V

    return-object v0
.end method

.method protected a(I)V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->a(I)V

    .line 262
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v0, p1}, Lcom/twitter/android/timeline/bx;->a(I)V

    .line 263
    return-void
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 77
    const v0, 0x7f04017c

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->c(I)Lcom/twitter/app/common/list/aj;

    .line 78
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 232
    instance-of v0, p1, Lbpv;

    if-eqz v0, :cond_0

    .line 233
    check-cast p1, Lbpv;

    invoke-direct {p0, p1, p3}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->a(Lbpv;I)V

    .line 235
    :cond_0
    return-void
.end method

.method public ad_()V
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->u()V

    .line 278
    const-string/jumbo v0, "click"

    invoke-direct {p0, v0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->b(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public an()Lcom/twitter/android/ie;
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/ie;->a(Landroid/os/Bundle;)Lcom/twitter/android/ie;

    move-result-object v0

    return-object v0
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->g()V

    .line 256
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->e()V

    .line 257
    return-void
.end method

.method protected f(I)Lcom/twitter/library/service/x;
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->c(I)Laru;

    move-result-object v0

    invoke-virtual {v0}, Laru;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lars;

    .line 189
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->p:Labl;

    invoke-virtual {v1, v0}, Labl;->a(Lars;)Lcom/twitter/library/service/x;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/twitter/android/timeline/bm;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->an()Lcom/twitter/android/ie;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 195
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->p:Labl;

    invoke-virtual {v0}, Labl;->c()V

    .line 196
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->f()V

    .line 201
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->aA()Lcom/twitter/app/common/inject/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/inject/o;->b(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    .line 202
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->s:Labq;

    invoke-virtual {v0}, Labq;->c()V

    .line 203
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->t:Ldlx;

    invoke-virtual {v0}, Ldlx;->R_()V

    .line 204
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->p:Labl;

    invoke-virtual {v0}, Labl;->b()V

    .line 205
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->onDestroyView()V

    .line 206
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p2}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->a(Landroid/os/Bundle;)V

    .line 97
    invoke-super {p0, p1, p2}, Lcom/twitter/android/TimelineFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->bg()V

    .line 99
    invoke-direct {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->bh()V

    .line 100
    invoke-direct {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->bi()V

    .line 101
    return-void
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->an()Lcom/twitter/android/ie;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->an()Lcom/twitter/android/ie;

    move-result-object v0

    return-object v0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->r()V

    .line 182
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->i()V

    .line 183
    return-void
.end method

.method public u()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/livevideo/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->u:Lrx/subjects/e;

    return-object v0
.end method

.method public v()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->h(I)Z

    .line 221
    return-void
.end method
