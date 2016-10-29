.class public Lcom/twitter/android/MediaListFragment;
.super Lcom/twitter/android/widget/ScrollingHeaderListFragment;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/android/widget/ScrollingHeaderListFragment",
        "<TT;",
        "Lcom/twitter/android/widget/cb",
        "<TT;>;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Lcom/twitter/android/metrics/b;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Lcom/twitter/model/core/TwitterUser;

.field private g:Z

.field private h:Z

.field private i:Lcom/twitter/media/ui/image/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;-><init>()V

    .line 71
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/MediaListFragment;->c:Ljava/util/List;

    .line 72
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/MediaListFragment;->d:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/MediaListFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/MediaListFragment;->d:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/MediaListFragment;)Lcom/twitter/android/client/c;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/MediaListFragment;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    return-object v0
.end method

.method private c(I)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 270
    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/cb;

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/cb;->b(Z)V

    .line 273
    :cond_1
    return-void

    .line 271
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/twitter/android/MediaListFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/MediaListFragment;->c:Ljava/util/List;

    return-object v0
.end method

.method private e(I)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 351
    packed-switch p1, :pswitch_data_0

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aQ()Landroid/database/Cursor;

    move-result-object v2

    .line 355
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    const/16 v0, 0x17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 362
    :cond_0
    :pswitch_1
    return-wide v0

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic e(Lcom/twitter/android/MediaListFragment;)Lcom/twitter/media/ui/image/h;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/MediaListFragment;->i:Lcom/twitter/media/ui/image/h;

    return-object v0
.end method

.method private f(I)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 371
    packed-switch p1, :pswitch_data_0

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aQ()Landroid/database/Cursor;

    move-result-object v2

    .line 379
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    const/16 v0, 0x17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 382
    :cond_0
    :pswitch_1
    return-wide v0

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private u()Z
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/cb;

    invoke-virtual {v0}, Lcom/twitter/android/widget/cb;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/MediaListFragment;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected D()Z
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/twitter/library/av/aj;->a()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/MediaListFragment;->g:Z

    .line 94
    invoke-super {p0, p1, p2}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/af;)V

    .line 96
    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 154
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a()V

    .line 155
    iget-wide v0, p0, Lcom/twitter/android/MediaListFragment;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->ag_()V

    .line 158
    :cond_0
    return-void
.end method

.method protected a(Lcmf;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/twitter/android/MediaListFragment;->b(Lcmf;)V

    .line 235
    invoke-direct {p0}, Lcom/twitter/android/MediaListFragment;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaListFragment;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/twitter/android/MediaListFragment;->b:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->j()V

    .line 239
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/MediaListFragment;->g:Z

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/MediaListFragment;->b:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->j()V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 207
    invoke-virtual {p1}, Lcom/twitter/app/common/list/aj;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const v0, 0x7f040280

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->d(I)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    const v1, 0x7f0400e5

    .line 209
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aj;->f(I)Lcom/twitter/app/common/list/aj;

    .line 211
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 341
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 342
    iget-object v0, p0, Lcom/twitter/android/MediaListFragment;->b:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->j()V

    .line 343
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/twitter/android/MediaListFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a0903

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    check-cast p1, Lbsn;

    invoke-virtual {p1}, Lbsn;->H()I

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iput-boolean v2, p0, Lcom/twitter/android/MediaListFragment;->a:Z

    goto :goto_0
.end method

.method protected a(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-virtual {p0, p1}, Lcom/twitter/android/MediaListFragment;->a_(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return v1

    :cond_0
    new-instance v0, Lbsg;

    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/android/MediaListFragment;->e:J

    invoke-direct {v0, v2, v3, v4, v5}, Lbsg;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    .line 330
    invoke-direct {p0, p1}, Lcom/twitter/android/MediaListFragment;->e(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lbsg;->c(J)Lbss;

    move-result-object v0

    .line 331
    invoke-direct {p0, p1}, Lcom/twitter/android/MediaListFragment;->f(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lbss;->b(J)Lbss;

    move-result-object v2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x14

    .line 332
    :goto_1
    invoke-virtual {v2, v0}, Lbss;->c(I)Lbss;

    move-result-object v0

    const-string/jumbo v2, "scribe_event"

    .line 334
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->i()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "photo_grid"

    invoke-static {v3, v4, p1}, Lcom/twitter/android/MediaListFragment;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lbss;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v0

    .line 329
    invoke-virtual {p0, v0, v1, p1}, Lcom/twitter/android/MediaListFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 331
    goto :goto_1
.end method

.method public a(Landroid/widget/AbsListView;I)Z
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0, p2}, Lcom/twitter/android/MediaListFragment;->c(I)V

    .line 265
    invoke-virtual {p0, p2}, Lcom/twitter/android/MediaListFragment;->o(I)V

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/widget/AbsListView;IIIZ)Z
    .locals 1

    .prologue
    .line 248
    if-eqz p3, :cond_0

    if-nez p5, :cond_1

    .line 249
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a(Landroid/widget/AbsListView;IIIZ)Z

    move-result v0

    .line 258
    :goto_0
    return v0

    .line 252
    :cond_1
    if-nez p2, :cond_3

    .line 253
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->v()V

    .line 258
    :cond_2
    :goto_1
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a(Landroid/widget/AbsListView;IIIZ)Z

    move-result v0

    goto :goto_0

    .line 254
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/cb;

    invoke-virtual {v0}, Lcom/twitter/android/widget/cb;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    if-lez p2, :cond_2

    add-int v0, p2, p3

    if-lt v0, p4, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->h()V

    goto :goto_1
.end method

.method protected ag_()V
    .locals 1

    .prologue
    .line 310
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->ag_()V

    .line 311
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/MediaListFragment;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaListFragment;->a(I)Z

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/MediaListFragment;->g:Z

    .line 315
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 5

    .prologue
    .line 179
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->d()V

    .line 180
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->i()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "photo_grid:::impression"

    invoke-static {v3, v4}, Lcom/twitter/android/profiles/as;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 182
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/MediaListFragment;->f:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v1}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->j(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 183
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 163
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->e()V

    .line 164
    iget-object v0, p0, Lcom/twitter/android/MediaListFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->i()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "photo_grid:stream::tweets"

    invoke-static {v0, v1}, Lcom/twitter/android/profiles/as;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 169
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 170
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/MediaListFragment;->c:Ljava/util/List;

    .line 171
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/List;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 172
    iget-object v0, p0, Lcom/twitter/android/MediaListFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    :cond_0
    return-void
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaListFragment;->a(I)Z

    .line 278
    return-void
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->bd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/MediaListFragment;->a:Z

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/cb;

    invoke-virtual {v0}, Lcom/twitter/android/widget/cb;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaListFragment;->a(I)Z

    .line 286
    :cond_0
    return-void
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/twitter/android/MediaListFragment;->h:Z

    invoke-static {v0}, Lcom/twitter/android/profiles/as;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected l()V
    .locals 5

    .prologue
    .line 105
    new-instance v0, Lcom/twitter/android/metrics/b;

    const-string/jumbo v1, "list:photogrid"

    const-string/jumbo v2, "list:photogrid"

    sget-object v3, Laxz;->l:Laye;

    .line 106
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aX()Layj;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/metrics/b;-><init>(Ljava/lang/String;Ljava/lang/String;Laye;Layf;)V

    iput-object v0, p0, Lcom/twitter/android/MediaListFragment;->b:Lcom/twitter/android/metrics/b;

    .line 107
    iget-object v0, p0, Lcom/twitter/android/MediaListFragment;->b:Lcom/twitter/android/metrics/b;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/metrics/b;->b(J)V

    .line 108
    iget-object v0, p0, Lcom/twitter/android/MediaListFragment;->b:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->i()V

    .line 109
    return-void
.end method

.method protected m()Lcom/twitter/android/widget/cb;
    .locals 6

    .prologue
    .line 135
    new-instance v0, Lcom/twitter/android/jo;

    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v4, Lcom/twitter/android/jr;

    invoke-direct {v4, p0}, Lcom/twitter/android/jr;-><init>(Lcom/twitter/android/MediaListFragment;)V

    .line 137
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v5

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/jo;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;Lcom/twitter/android/kn;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 135
    return-object v0
.end method

.method protected o()Laro;
    .locals 4

    .prologue
    .line 222
    new-instance v0, Larq;

    invoke-direct {v0}, Larq;-><init>()V

    const/4 v1, 0x2

    .line 223
    invoke-virtual {v0, v1}, Larq;->a(I)Larq;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Larq;->b(J)Larq;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/MediaListFragment;->aa:J

    .line 225
    invoke-virtual {v0, v2, v3}, Larq;->c(J)Larq;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/MediaListFragment;->h:Z

    .line 226
    invoke-virtual {v0, v1}, Larq;->a(Z)Larq;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/settings/af;->a(Lcom/twitter/library/client/Session;)Z

    move-result v1

    invoke-virtual {v0, v1}, Larq;->b(Z)Larq;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Larq;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laro;

    .line 222
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 113
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    if-eqz p1, :cond_0

    .line 116
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/MediaListFragment;->e:J

    .line 117
    const-string/jumbo v0, "is_last"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/MediaListFragment;->a:Z

    .line 122
    :goto_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const/4 v1, 0x5

    .line 123
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-wide v2, p0, Lcom/twitter/android/MediaListFragment;->e:J

    .line 124
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 125
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v1, "photo_grid"

    .line 126
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 122
    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaListFragment;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 128
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->m()Lcom/twitter/android/widget/cb;

    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaListFragment;->a(Lcom/twitter/android/client/v;)Lcom/twitter/app/common/list/TwitterListFragment;

    .line 130
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/aa;->a(Lcvt;)V

    .line 131
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/MediaListFragment;->e:J

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/jt;

    .line 291
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->o()Laro;

    move-result-object v1

    invoke-static {v1}, Larr;->a(Laro;)Lavh;

    move-result-object v1

    .line 292
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/twitter/android/GalleryActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, v1, Lavh;->a:Landroid/net/Uri;

    .line 293
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "prj"

    iget-object v4, v1, Lavh;->b:[Ljava/lang/String;

    .line 294
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sel"

    iget-object v4, v1, Lavh;->c:Ljava/lang/String;

    .line 295
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "orderBy"

    iget-object v1, v1, Lavh;->e:Ljava/lang/String;

    .line 296
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "id"

    iget-object v3, v0, Lcom/twitter/android/jt;->a:Lcom/twitter/android/js;

    .line 298
    invoke-interface {v3}, Lcom/twitter/android/js;->d()Lcom/twitter/model/core/Tweet;

    move-result-object v3

    iget-wide v4, v3, Lcom/twitter/model/core/Tweet;->C:J

    .line 297
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "media"

    iget-object v3, v0, Lcom/twitter/android/jt;->a:Lcom/twitter/android/js;

    .line 300
    invoke-interface {v3}, Lcom/twitter/android/js;->e()Lcom/twitter/model/core/MediaEntity;

    move-result-object v3

    sget-object v4, Lcom/twitter/model/core/MediaEntity;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v3, v4}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v3

    .line 299
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "page_cache_size"

    const/4 v3, 0x1

    .line 301
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "context"

    const/16 v3, 0x9

    .line 302
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "association"

    .line 304
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 305
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, v0, Lcom/twitter/android/jt;->b:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-static {v2, v1, v0}, Lcom/twitter/android/GalleryActivity;->a(Landroid/app/Activity;Landroid/content/Intent;Lcom/twitter/media/ui/image/BaseMediaImageView;)V

    .line 306
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    const-string/jumbo v1, "is_me"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/MediaListFragment;->h:Z

    .line 84
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->l()V

    .line 85
    new-instance v0, Lcom/twitter/media/ui/image/h;

    invoke-direct {v0}, Lcom/twitter/media/ui/image/h;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/MediaListFragment;->i:Lcom/twitter/media/ui/image/h;

    .line 86
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    const-string/jumbo v1, "profile_user"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/w;->h(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Lcom/twitter/android/MediaListFragment;->f:Lcom/twitter/model/core/TwitterUser;

    .line 87
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    const-string/jumbo v0, "user_id"

    iget-wide v2, p0, Lcom/twitter/android/MediaListFragment;->e:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 189
    const-string/jumbo v0, "is_last"

    iget-boolean v1, p0, Lcom/twitter/android/MediaListFragment;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onStart()V

    .line 195
    iget-object v0, p0, Lcom/twitter/android/MediaListFragment;->i:Lcom/twitter/media/ui/image/h;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/h;->aP_()V

    .line 196
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/twitter/android/MediaListFragment;->i:Lcom/twitter/media/ui/image/h;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/h;->f()V

    .line 201
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onStop()V

    .line 202
    return-void
.end method

.method protected v_()Landroid/support/v4/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->o()Laro;

    move-result-object v0

    invoke-static {v0}, Larr;->a(Laro;)Lavh;

    move-result-object v6

    .line 216
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/MediaListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v6, Lavh;->a:Landroid/net/Uri;

    iget-object v3, v6, Lavh;->b:[Ljava/lang/String;

    iget-object v4, v6, Lavh;->c:Ljava/lang/String;

    iget-object v5, v6, Lavh;->d:[Ljava/lang/String;

    iget-object v6, v6, Lavh;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
