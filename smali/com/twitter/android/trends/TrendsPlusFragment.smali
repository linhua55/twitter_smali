.class public Lcom/twitter/android/trends/TrendsPlusFragment;
.super Lcom/twitter/android/TimelineFragment;
.source "Twttr"


# static fields
.field private static final o:Ljava/lang/String;


# instance fields
.field private final p:Lcom/twitter/android/trends/k;

.field private q:Lcom/twitter/library/client/l;

.field private r:Ljava/lang/String;

.field private s:J

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Z

.field private x:Lcom/twitter/android/trends/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "trendsplus"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "search"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "trendsplus"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "results"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/trends/TrendsPlusFragment;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/twitter/android/trends/k;

    invoke-direct {v0, p0}, Lcom/twitter/android/trends/k;-><init>(Lcom/twitter/android/trends/TrendsPlusFragment;)V

    iput-object v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->p:Lcom/twitter/android/trends/k;

    return-void
.end method

.method private P()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->p:Lcom/twitter/android/trends/k;

    invoke-virtual {v0}, Lcom/twitter/android/trends/k;->a()Ljava/util/List;

    move-result-object v1

    .line 120
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/twitter/library/api/search/e;

    .line 122
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/api/search/e;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/twitter/library/api/search/e;->d(I)Lcom/twitter/library/service/o;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/search/e;

    .line 124
    invoke-static {v1}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/api/search/e;->b:Ljava/util/Collection;

    .line 125
    iget-object v1, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->ab:Lcom/twitter/library/client/bd;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 127
    :cond_0
    return-void
.end method

.method private c(J)V
    .locals 5

    .prologue
    .line 104
    iget-object v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->p:Lcom/twitter/android/trends/k;

    invoke-virtual {v0}, Lcom/twitter/android/trends/k;->b()Ljava/util/List;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/twitter/android/trends/TrendsPlusFragment;->o:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 107
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 108
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/List;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->p:Lcom/twitter/android/trends/k;

    invoke-virtual {v0}, Lcom/twitter/android/trends/k;->c()V

    .line 111
    return-void
.end method


# virtual methods
.method public N()V
    .locals 0

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->aR()V

    .line 181
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->N()V

    .line 182
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Lcom/twitter/android/TimelineFragment;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/app/common/list/aa;->b:Landroid/view/View;

    .line 224
    if-eqz v1, :cond_0

    .line 225
    new-instance v2, Lcom/twitter/android/trends/j;

    invoke-direct {v2, p0}, Lcom/twitter/android/trends/j;-><init>(Lcom/twitter/android/trends/TrendsPlusFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    :cond_0
    return-object v0
.end method

.method protected a(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/android/vw;ZZ)Lcom/twitter/android/rb;
    .locals 2

    .prologue
    .line 313
    .line 314
    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/android/vw;ZZ)Lcom/twitter/android/rb;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->p:Lcom/twitter/android/trends/k;

    invoke-virtual {v0, v1}, Lcom/twitter/android/rb;->a(Lcom/twitter/android/kn;)V

    .line 317
    return-object v0
.end method

.method protected a(JJ)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/android/TimelineFragment;->a(JJ)V

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/trends/TrendsPlusFragment;->c(J)V

    .line 100
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 295
    .line 296
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0207c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 298
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 300
    return-void
.end method

.method protected a(Lcmf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lcmf;)V

    .line 245
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    invoke-virtual {v0}, Lcom/twitter/android/vz;->g()Lcom/twitter/android/timeline/br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/timeline/br;->a()Landroid/database/Cursor;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    sget v1, Lchj;->C:I

    .line 248
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/topic/d;->a:Lcom/twitter/util/serialization/ah;

    .line 247
    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/i;

    .line 250
    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/twitter/model/topic/i;->j:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->w:Z

    .line 252
    :cond_0
    return-void

    .line 250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 239
    const v0, 0x7f0403c3

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->c(I)Lcom/twitter/app/common/list/aj;

    .line 240
    return-void
.end method

.method protected a(Lcom/twitter/library/api/PromotedEvent;J)V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->a_:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lbqt;

    iget-object v2, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->a_:Landroid/content/Context;

    .line 304
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lbqt;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/api/PromotedEvent;)V

    .line 305
    invoke-virtual {v1, p2, p3}, Lbqt;->a(J)Lbqt;

    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 306
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 4

    .prologue
    .line 152
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 153
    const/16 v0, 0x1c

    if-ne p2, v0, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 155
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    instance-of v0, p1, Lbsu;

    if-eqz v0, :cond_0

    .line 157
    check-cast p1, Lbsu;

    .line 159
    iget-boolean v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->w:Z

    .line 160
    invoke-virtual {p1}, Lbsu;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->w:Z

    .line 163
    invoke-virtual {p1}, Lbsu;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbsu;->O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->aK()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->q:Lcom/twitter/library/client/l;

    .line 169
    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->r:Ljava/lang/String;

    .line 170
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 174
    :cond_1
    return-void
.end method

.method protected d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->d()V

    .line 82
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->s:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "trendsplus"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "enter"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 83
    return-void
.end method

.method protected e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->ax()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->s:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "trendsplus"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "exit"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 90
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/trends/TrendsPlusFragment;->c(J)V

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->P()V

    .line 93
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->e()V

    .line 94
    return-void
.end method

.method protected f(I)Lcom/twitter/library/service/x;
    .locals 4

    .prologue
    .line 276
    iget v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->K:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 278
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    .line 279
    :goto_0
    new-instance v1, Lbsu;

    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lbsu;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Z)V

    .line 281
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 282
    const-string/jumbo v0, "Not triggered by a user action."

    invoke-virtual {v1, v0}, Lbsu;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1}, Lcom/twitter/android/trends/TrendsPlusFragment;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string/jumbo v2, "scribe_event"

    invoke-virtual {v1, v2, v0}, Lbsu;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/x;

    .line 287
    iput p1, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->v:I

    move-object v0, v1

    .line 290
    :goto_1
    return-object v0

    .line 278
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    :cond_2
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->f(I)Lcom/twitter/library/service/x;

    move-result-object v0

    goto :goto_1
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->p:Lcom/twitter/android/trends/k;

    invoke-virtual {v0}, Lcom/twitter/android/trends/k;->d()V

    .line 269
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/trends/TrendsPlusFragment;->c(J)V

    .line 270
    invoke-direct {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->P()V

    .line 271
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->g()V

    .line 272
    return-void
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method protected l()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->v:I

    if-ne v0, v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v3

    .line 137
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->t:Z

    if-eqz v0, :cond_2

    .line 138
    iput-boolean v3, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->t:Z

    move v3, v2

    .line 139
    goto :goto_0

    .line 142
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->w:Z

    if-eqz v0, :cond_4

    const-wide/32 v0, 0xdbba0

    .line 145
    :goto_1
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->q:Lcom/twitter/library/client/l;

    iget-object v7, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->r:Ljava/lang/String;

    const-wide/16 v8, 0x0

    .line 146
    invoke-virtual {v6, v7, v8, v9}, Lcom/twitter/library/client/l;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v0, v6

    cmp-long v0, v4, v0

    if-lez v0, :cond_5

    move v1, v2

    .line 147
    :goto_2
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    invoke-virtual {v0}, Lcom/twitter/android/vz;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->u:Z

    if-eqz v0, :cond_0

    :cond_3
    move v3, v2

    goto :goto_0

    .line 142
    :cond_4
    const-wide/32 v0, 0x493e0

    goto :goto_1

    :cond_5
    move v1, v3

    .line 146
    goto :goto_2
.end method

.method public synthetic o()Lcom/twitter/android/timeline/bm;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->v()Lcom/twitter/android/timeline/cl;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 190
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->u:Z

    .line 191
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->B:Z

    .line 195
    :goto_1
    iget-object v4, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->p:Lcom/twitter/android/trends/k;

    invoke-virtual {v4, p1}, Lcom/twitter/android/trends/k;->a(Landroid/os/Bundle;)V

    .line 198
    if-eqz p1, :cond_4

    const-string/jumbo v4, "state_is_degraded"

    if-nez v0, :cond_3

    .line 199
    :goto_2
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    :goto_3
    iput-boolean v1, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->w:Z

    .line 201
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->v()Lcom/twitter/android/timeline/cl;

    move-result-object v0

    const-string/jumbo v1, "timeline_tag"

    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/cl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_5

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "refresh_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->r:Ljava/lang/String;

    .line 208
    :goto_4
    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->s:J

    .line 209
    new-instance v0, Lcom/twitter/library/client/l;

    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->s:J

    const-string/jumbo v4, "trendsplus"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->q:Lcom/twitter/library/client/l;

    .line 210
    new-instance v0, Lcom/twitter/android/trends/l;

    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/trends/l;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->x:Lcom/twitter/android/trends/l;

    .line 211
    return-void

    :cond_1
    move v0, v2

    .line 190
    goto :goto_0

    :cond_2
    move v0, v2

    .line 193
    goto :goto_1

    :cond_3
    move v1, v2

    .line 198
    goto :goto_2

    .line 199
    :cond_4
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_3

    .line 205
    :cond_5
    const-string/jumbo v0, "refresh_time"

    iput-object v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->r:Ljava/lang/String;

    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 215
    const-string/jumbo v0, "state_is_degraded"

    iget-boolean v1, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->w:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    iget-object v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->p:Lcom/twitter/android/trends/k;

    invoke-virtual {v0, p1}, Lcom/twitter/android/trends/k;->b(Landroid/os/Bundle;)V

    .line 217
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 218
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->onStop()V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->u:Z

    .line 264
    return-void
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->v()Lcom/twitter/android/timeline/cl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->v()Lcom/twitter/android/timeline/cl;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/trends/TrendsPlusFragment;->t:Z

    .line 115
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->aK()V

    .line 116
    return-void
.end method

.method public v()Lcom/twitter/android/timeline/cl;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendsPlusFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/timeline/cl;->a(Landroid/os/Bundle;)Lcom/twitter/android/timeline/cl;

    move-result-object v0

    return-object v0
.end method
