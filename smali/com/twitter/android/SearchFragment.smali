.class public abstract Lcom/twitter/android/SearchFragment;
.super Lcom/twitter/android/TweetListFragment;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Lcvt",
        "<TT;>;>",
        "Lcom/twitter/android/TweetListFragment",
        "<TT;TA;>;"
    }
.end annotation


# static fields
.field protected static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected A:Ljava/lang/String;

.field protected B:Ljava/lang/String;

.field protected C:Ljava/lang/String;

.field protected D:Ljava/lang/String;

.field protected E:Ljava/lang/String;

.field protected F:Lcom/twitter/android/oq;

.field protected G:Lccf;

.field private final a:Landroid/os/Handler;

.field private final ac:Ljava/lang/Runnable;

.field private ad:I

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Landroid/content/SharedPreferences;

.field private ai:Lcom/twitter/android/op;

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:J

.field protected s:J

.field protected t:Ljava/lang/String;

.field protected u:Ljava/lang/String;

.field protected v:Ljava/lang/String;

.field protected w:Ljava/lang/String;

.field protected x:Ljava/lang/String;

.field protected y:Ljava/lang/String;

.field protected z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 94
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/twitter/android/SearchFragment;->b:Landroid/util/SparseArray;

    .line 105
    sget-object v0, Lcom/twitter/android/SearchFragment;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/twitter/android/SearchFragment;->b:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7530

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/twitter/android/SearchFragment;->b:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/twitter/android/SearchFragment;->b:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-wide/32 v2, 0x1d4c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/twitter/android/TweetListFragment;-><init>()V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/SearchFragment;->q:I

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/SearchFragment;->a:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/twitter/android/oo;

    invoke-direct {v0, p0}, Lcom/twitter/android/oo;-><init>(Lcom/twitter/android/SearchFragment;)V

    iput-object v0, p0, Lcom/twitter/android/SearchFragment;->ac:Ljava/lang/Runnable;

    return-void
.end method

.method private X()V
    .locals 4

    .prologue
    .line 459
    new-instance v0, Lcom/twitter/library/api/search/e;

    .line 460
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/library/api/search/e;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v1, 0x1

    .line 461
    invoke-virtual {v0, v1}, Lcom/twitter/library/api/search/e;->d(I)Lcom/twitter/library/service/o;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/search/e;

    .line 462
    iget-wide v2, p0, Lcom/twitter/android/SearchFragment;->s:J

    iput-wide v2, v0, Lcom/twitter/library/api/search/e;->a:J

    .line 463
    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->ab:Lcom/twitter/library/client/bd;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 464
    return-void
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    packed-switch p0, :pswitch_data_0

    .line 558
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 532
    :pswitch_1
    const-string/jumbo v0, "everything"

    goto :goto_0

    .line 535
    :pswitch_2
    const-string/jumbo v0, "people"

    goto :goto_0

    .line 538
    :pswitch_3
    const-string/jumbo v0, "photos"

    goto :goto_0

    .line 542
    :pswitch_4
    const-string/jumbo v0, "video"

    goto :goto_0

    .line 546
    :pswitch_5
    const-string/jumbo v0, "periscope"

    goto :goto_0

    .line 549
    :pswitch_6
    const-string/jumbo v0, "news"

    goto :goto_0

    .line 552
    :pswitch_7
    const-string/jumbo v0, "eventsummary"

    goto :goto_0

    .line 555
    :pswitch_8
    const-string/jumbo v0, "geo"

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->u:Ljava/lang/String;

    return-object v0
.end method

.method protected D()Z
    .locals 1

    .prologue
    .line 493
    invoke-static {}, Lcom/twitter/library/av/aj;->a()Z

    move-result v0

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->v:Ljava/lang/String;

    return-object v0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/twitter/android/SearchFragment;->k:Z

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->E:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->y:Ljava/lang/String;

    .line 525
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->u:Ljava/lang/String;

    goto :goto_0
.end method

.method public O()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/twitter/android/SearchFragment;->c:Z

    return v0
.end method

.method public P()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/twitter/android/SearchFragment;->d:Z

    return v0
.end method

.method protected Q()I
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/twitter/android/SearchFragment;->ae:Z

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x6

    .line 576
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/twitter/android/SearchFragment;->ad:I

    goto :goto_0
.end method

.method public S()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/twitter/android/SearchFragment;->af:Z

    return v0
.end method

.method public T()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/twitter/android/SearchFragment;->ag:Z

    return v0
.end method

.method protected abstract U()Ljava/lang/String;
.end method

.method protected abstract V_()V
.end method

.method protected abstract W()V
.end method

.method public a(J)I
    .locals 3

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/SearchFragment;->b(J)I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/af;)V

    .line 251
    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 285
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->a()V

    .line 286
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->ag_()V

    .line 287
    return-void
.end method

.method protected abstract a(Landroid/content/Context;)V
.end method

.method protected a(Lcom/twitter/android/op;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/twitter/android/SearchFragment;->ai:Lcom/twitter/android/op;

    .line 623
    return-void
.end method

.method public a(Lcom/twitter/android/oq;)V
    .locals 1

    .prologue
    .line 589
    iput-object p1, p0, Lcom/twitter/android/SearchFragment;->F:Lcom/twitter/android/oq;

    .line 590
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/twitter/android/SearchFragment;->n:I

    if-lez v0, :cond_0

    .line 591
    iget v0, p0, Lcom/twitter/android/SearchFragment;->n:I

    invoke-interface {p1, v0}, Lcom/twitter/android/oq;->a(I)V

    .line 593
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 6

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 308
    invoke-virtual {p1}, Lcom/twitter/app/common/list/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040127

    :goto_0
    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->d(I)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    new-instance v1, Lcom/twitter/app/common/list/an;

    const/4 v2, 0x1

    const-wide/32 v4, -0x80000000

    .line 310
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/twitter/app/common/list/an;-><init>(ZLjava/util/Set;)V

    .line 309
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aj;->a(Lcom/twitter/app/common/list/an;)Lcom/twitter/app/common/list/aj;

    .line 311
    return-void

    .line 308
    :cond_0
    const v0, 0x7f040120

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/api/search/d;)V
    .locals 1

    .prologue
    .line 596
    invoke-static {p1}, Lcom/twitter/android/events/b;->a(Lcom/twitter/library/api/search/d;)V

    .line 597
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/library/api/search/d;->b(Ljava/lang/String;)Lcom/twitter/library/api/search/d;

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/library/api/search/d;->c(Ljava/lang/String;)Lcom/twitter/library/api/search/d;

    .line 603
    :cond_1
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 362
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TweetListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 363
    instance-of v0, p1, Lcom/twitter/library/api/search/d;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 364
    check-cast v0, Lcom/twitter/library/api/search/d;

    .line 365
    if-ne p2, v1, :cond_1

    .line 366
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    iget v2, p0, Lcom/twitter/android/SearchFragment;->o:I

    invoke-virtual {v0}, Lcom/twitter/library/api/search/d;->h()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/twitter/android/SearchFragment;->o:I

    .line 368
    invoke-virtual {v0}, Lcom/twitter/library/api/search/d;->s()I

    move-result v2

    .line 369
    if-lez v2, :cond_0

    .line 370
    if-ne v2, v1, :cond_3

    invoke-virtual {v0}, Lcom/twitter/library/api/search/d;->C()Lcom/twitter/model/topic/TwitterTopic;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 371
    :goto_0
    iget v3, p0, Lcom/twitter/android/SearchFragment;->n:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/twitter/android/SearchFragment;->n:I

    .line 372
    iget-object v2, p0, Lcom/twitter/android/SearchFragment;->F:Lcom/twitter/android/oq;

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->F:Lcom/twitter/android/oq;

    iget v2, p0, Lcom/twitter/android/SearchFragment;->n:I

    invoke-interface {v1, v2}, Lcom/twitter/android/oq;->a(I)V

    .line 377
    :cond_0
    iget v1, p0, Lcom/twitter/android/SearchFragment;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/twitter/android/SearchFragment;->p:I

    .line 379
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->u()V

    .line 380
    invoke-virtual {v0}, Lcom/twitter/library/api/search/d;->B()Lcom/twitter/model/topic/TwitterTopic;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchFragment;->a(Lcom/twitter/model/topic/TwitterTopic;)V

    .line 383
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/library/api/search/d;->t()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/SearchFragment;->r:J

    .line 384
    invoke-virtual {v0}, Lcom/twitter/library/api/search/d;->A()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchFragment;->E:Ljava/lang/String;

    .line 386
    :cond_2
    return-void

    .line 370
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/model/topic/TwitterTopic;)V
    .locals 3

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->aV()Lcyj;

    move-result-object v1

    .line 390
    invoke-virtual {v1}, Lcyj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 391
    const-class v0, Lcom/twitter/model/topic/g;

    invoke-virtual {p1, v0}, Lcom/twitter/model/topic/TwitterTopic;->a(Ljava/lang/Class;)Lcom/twitter/model/topic/d;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/g;

    .line 392
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/twitter/model/topic/g;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 393
    iget-object v0, v0, Lcom/twitter/model/topic/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcyj;->b(Ljava/lang/CharSequence;)Z

    .line 396
    :cond_0
    return-void
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract a(I)Z
.end method

.method public a(Landroid/widget/AbsListView;IIIZ)Z
    .locals 1

    .prologue
    .line 471
    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 472
    if-nez p2, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->v()V

    .line 479
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/TweetListFragment;->a(Landroid/widget/AbsListView;IIIZ)Z

    move-result v0

    return v0

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->h()I

    move-result v0

    if-lez v0, :cond_0

    if-lez p2, :cond_0

    add-int v0, p2, p3

    if-lt v0, p4, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->h()V

    goto :goto_0
.end method

.method protected abstract b(J)I
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->d()V

    .line 292
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->V_()V

    .line 293
    iget-boolean v0, p0, Lcom/twitter/android/SearchFragment;->j:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->ag_()V

    .line 296
    :cond_0
    return-void
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/twitter/android/SearchFragment;->n:I

    if-lez v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->l()V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchFragment;->a(I)Z

    goto :goto_0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->aG()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/SearchFragment;->h:Z

    if-nez v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->h()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 487
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchFragment;->a(I)Z

    .line 489
    :cond_0
    return-void
.end method

.method protected l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 445
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->F:Lcom/twitter/android/oq;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->F:Lcom/twitter/android/oq;

    invoke-interface {v0}, Lcom/twitter/android/oq;->a()V

    .line 448
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/twitter/android/SearchFragment;->l:I

    .line 449
    invoke-direct {p0}, Lcom/twitter/android/SearchFragment;->X()V

    .line 450
    iput v1, p0, Lcom/twitter/android/SearchFragment;->p:I

    .line 451
    iput v1, p0, Lcom/twitter/android/SearchFragment;->n:I

    .line 452
    iput v1, p0, Lcom/twitter/android/SearchFragment;->o:I

    .line 453
    return-void
.end method

.method public m()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 434
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 435
    iget v0, p0, Lcom/twitter/android/SearchFragment;->o:I

    if-lez v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->l()V

    .line 437
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->B:Ljava/lang/String;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 438
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->U()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "new_tweet_prompt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "click"

    aput-object v2, v0, v1

    .line 437
    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchFragment;->a(Ljava/lang/String;)V

    .line 440
    :cond_0
    return-void
.end method

.method public abstract o()I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 324
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 326
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->t()Lcom/twitter/android/or;

    move-result-object v0

    .line 329
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    iput-object v1, p0, Lcom/twitter/android/SearchFragment;->u:Ljava/lang/String;

    .line 332
    const-string/jumbo v2, "query_name"

    invoke-virtual {v0, v2}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    iput-object v2, p0, Lcom/twitter/android/SearchFragment;->t:Ljava/lang/String;

    .line 339
    :goto_0
    const-string/jumbo v1, "q_type"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/android/or;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/SearchFragment;->ad:I

    .line 340
    invoke-virtual {v0}, Lcom/twitter/android/or;->b()I

    move-result v1

    iput v1, p0, Lcom/twitter/android/SearchFragment;->m:I

    .line 342
    invoke-virtual {v0}, Lcom/twitter/android/or;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/SearchFragment;->e:Z

    .line 343
    const-string/jumbo v1, "realtime"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/android/or;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/SearchFragment;->f:Z

    .line 344
    const-string/jumbo v1, "follows"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/android/or;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/SearchFragment;->d:Z

    .line 345
    const-string/jumbo v1, "near"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/android/or;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchFragment;->c:Z

    .line 346
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->ai:Lcom/twitter/android/op;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->ai:Lcom/twitter/android/op;

    invoke-interface {v0}, Lcom/twitter/android/op;->a()V

    .line 349
    :cond_0
    return-void

    .line 336
    :cond_1
    iput-object v1, p0, Lcom/twitter/android/SearchFragment;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 173
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 175
    if-eqz p1, :cond_2

    .line 176
    const-string/jumbo v2, "search_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/SearchFragment;->s:J

    .line 177
    const-string/jumbo v2, "is_last"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/twitter/android/SearchFragment;->h:Z

    .line 178
    const-string/jumbo v2, "q_source"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/SearchFragment;->v:Ljava/lang/String;

    .line 179
    const-string/jumbo v2, "query_rewrite_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/SearchFragment;->w:Ljava/lang/String;

    .line 180
    const-string/jumbo v2, "data_lookup_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/SearchFragment;->x:Ljava/lang/String;

    .line 181
    const-string/jumbo v2, "polled_organic_count"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/SearchFragment;->n:I

    .line 182
    const-string/jumbo v2, "polled_total_count"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/SearchFragment;->o:I

    .line 183
    const-string/jumbo v2, "poll_count"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/SearchFragment;->p:I

    .line 184
    const-string/jumbo v2, "should_poll"

    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/twitter/android/SearchFragment;->i:Z

    .line 185
    const-string/jumbo v2, "should_refresh"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/twitter/android/SearchFragment;->j:Z

    .line 186
    const-string/jumbo v2, "follows"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/twitter/android/SearchFragment;->d:Z

    .line 187
    const-string/jumbo v2, "near"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/twitter/android/SearchFragment;->c:Z

    .line 188
    const-string/jumbo v2, "terminal"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/twitter/android/SearchFragment;->af:Z

    .line 189
    const-string/jumbo v2, "search_button"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/twitter/android/SearchFragment;->ag:Z

    .line 190
    const-string/jumbo v2, "seed_hashtag"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/SearchFragment;->y:Ljava/lang/String;

    .line 191
    const-string/jumbo v2, "query_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/SearchFragment;->t:Ljava/lang/String;

    .line 192
    const-string/jumbo v2, "timeline_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/SearchFragment;->z:Ljava/lang/String;

    .line 193
    const-string/jumbo v2, "experiments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/SearchFragment;->A:Ljava/lang/String;

    .line 194
    const-string/jumbo v2, "scribe_page"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/SearchFragment;->B:Ljava/lang/String;

    .line 195
    const-string/jumbo v2, "event_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/SearchFragment;->D:Ljava/lang/String;

    .line 196
    const-string/jumbo v2, "event_type"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SearchFragment;->q:I

    .line 197
    const-string/jumbo v0, "notification_setting_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchFragment;->C:Ljava/lang/String;

    .line 198
    const-string/jumbo v0, "is_saved"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchFragment;->ae:Z

    .line 199
    const-string/jumbo v0, "request_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchFragment;->E:Ljava/lang/String;

    .line 237
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchFragment;->g:Z

    .line 238
    iget v0, p0, Lcom/twitter/android/SearchFragment;->l:I

    if-nez v0, :cond_1

    .line 239
    const/4 v0, 0x3

    iput v0, p0, Lcom/twitter/android/SearchFragment;->l:I

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 243
    const-string/jumbo v2, "search"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/SearchFragment;->ah:Landroid/content/SharedPreferences;

    .line 244
    invoke-static {v0}, Lccf;->a(Landroid/content/Context;)Lccf;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchFragment;->G:Lccf;

    .line 245
    return-void

    .line 201
    :cond_2
    iput-boolean v1, p0, Lcom/twitter/android/SearchFragment;->h:Z

    .line 202
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->t()Lcom/twitter/android/or;

    move-result-object v2

    .line 203
    const-string/jumbo v3, "fetch_type"

    invoke-virtual {v2, v3}, Lcom/twitter/android/or;->b(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/twitter/android/SearchFragment;->l:I

    .line 204
    invoke-virtual {v2}, Lcom/twitter/android/or;->d()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/android/SearchFragment;->s:J

    .line 205
    const-string/jumbo v3, "q_source"

    invoke-virtual {v2, v3}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/SearchFragment;->v:Ljava/lang/String;

    .line 206
    const-string/jumbo v3, "query_rewrite_id"

    invoke-virtual {v2, v3}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/SearchFragment;->w:Ljava/lang/String;

    .line 207
    const-string/jumbo v3, "data_lookup_id"

    invoke-virtual {v2, v3}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/SearchFragment;->x:Ljava/lang/String;

    .line 208
    const-string/jumbo v3, "terminal"

    invoke-virtual {v2, v3, v1}, Lcom/twitter/android/or;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/twitter/android/SearchFragment;->af:Z

    .line 209
    const-string/jumbo v3, "search_button"

    invoke-virtual {v2, v3, v1}, Lcom/twitter/android/or;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/twitter/android/SearchFragment;->ag:Z

    .line 210
    const-string/jumbo v3, "should_poll"

    invoke-virtual {v2, v3, v6}, Lcom/twitter/android/or;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/twitter/android/SearchFragment;->i:Z

    .line 211
    const-string/jumbo v3, "should_refresh"

    invoke-virtual {v2, v3, v1}, Lcom/twitter/android/or;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/twitter/android/SearchFragment;->j:Z

    .line 212
    const-string/jumbo v3, "seed_hashtag"

    invoke-virtual {v2, v3}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/SearchFragment;->y:Ljava/lang/String;

    .line 213
    const-string/jumbo v3, "query_name"

    invoke-virtual {v2, v3}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/SearchFragment;->t:Ljava/lang/String;

    .line 214
    const-string/jumbo v3, "timeline_type"

    invoke-virtual {v2, v3}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/SearchFragment;->z:Ljava/lang/String;

    .line 215
    const-string/jumbo v3, "experiments"

    invoke-virtual {v2, v3}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/SearchFragment;->A:Ljava/lang/String;

    .line 216
    const-string/jumbo v3, "scribe_page"

    invoke-virtual {v2, v3}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/SearchFragment;->B:Ljava/lang/String;

    .line 217
    const-string/jumbo v3, "follows"

    invoke-virtual {v2, v3, v1}, Lcom/twitter/android/or;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/twitter/android/SearchFragment;->d:Z

    .line 218
    const-string/jumbo v3, "near"

    invoke-virtual {v2, v3, v1}, Lcom/twitter/android/or;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/twitter/android/SearchFragment;->c:Z

    .line 219
    const-string/jumbo v3, "event_id"

    invoke-virtual {v2, v3}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/SearchFragment;->D:Ljava/lang/String;

    .line 220
    const-string/jumbo v3, "event_type"

    invoke-virtual {v2, v3, v0}, Lcom/twitter/android/or;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/twitter/android/SearchFragment;->q:I

    .line 221
    const-string/jumbo v3, "notification_setting_key"

    invoke-virtual {v2, v3}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/SearchFragment;->C:Ljava/lang/String;

    .line 222
    iget-object v2, p0, Lcom/twitter/android/SearchFragment;->B:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    const-string/jumbo v2, "search"

    iput-object v2, p0, Lcom/twitter/android/SearchFragment;->B:Ljava/lang/String;

    .line 225
    :cond_3
    iget-object v2, p0, Lcom/twitter/android/SearchFragment;->v:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/SearchFragment;->C:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/twitter/android/SearchFragment;->C:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_1
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 228
    :pswitch_0
    const-string/jumbo v0, "evpa"

    iput-object v0, p0, Lcom/twitter/android/SearchFragment;->v:Ljava/lang/String;

    goto/16 :goto_0

    .line 226
    :pswitch_1
    const-string/jumbo v3, "event_parrot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x390582db
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 257
    const-string/jumbo v0, "should_poll"

    iget-boolean v1, p0, Lcom/twitter/android/SearchFragment;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    const-string/jumbo v0, "should_refresh"

    iget-boolean v1, p0, Lcom/twitter/android/SearchFragment;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    const-string/jumbo v0, "follows"

    iget-boolean v1, p0, Lcom/twitter/android/SearchFragment;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    const-string/jumbo v0, "near"

    iget-boolean v1, p0, Lcom/twitter/android/SearchFragment;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    const-string/jumbo v0, "terminal"

    iget-boolean v1, p0, Lcom/twitter/android/SearchFragment;->af:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    const-string/jumbo v0, "search_button"

    iget-boolean v1, p0, Lcom/twitter/android/SearchFragment;->ag:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    const-string/jumbo v0, "is_last"

    iget-boolean v1, p0, Lcom/twitter/android/SearchFragment;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    const-string/jumbo v0, "is_saved"

    iget-boolean v1, p0, Lcom/twitter/android/SearchFragment;->ae:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    const-string/jumbo v0, "polled_organic_count"

    iget v1, p0, Lcom/twitter/android/SearchFragment;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    const-string/jumbo v0, "polled_total_count"

    iget v1, p0, Lcom/twitter/android/SearchFragment;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    const-string/jumbo v0, "poll_count"

    iget v1, p0, Lcom/twitter/android/SearchFragment;->p:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string/jumbo v0, "event_type"

    iget v1, p0, Lcom/twitter/android/SearchFragment;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    const-string/jumbo v0, "search_id"

    iget-wide v2, p0, Lcom/twitter/android/SearchFragment;->s:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 270
    const-string/jumbo v0, "q_source"

    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v0, "query_rewrite_id"

    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v0, "data_lookup_id"

    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v0, "query_name"

    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v0, "seed_hashtag"

    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v0, "timeline_type"

    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v0, "experiments"

    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v0, "scribe_page"

    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v0, "notification_setting_key"

    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->C:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v0, "event_id"

    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->D:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v0, "request_url"

    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->E:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/SearchFragment;->ac:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->W()V

    .line 302
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onStop()V

    .line 303
    return-void
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->t()Lcom/twitter/android/or;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->t()Lcom/twitter/android/or;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/twitter/android/or;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/or;->a(Landroid/os/Bundle;)Lcom/twitter/android/or;

    move-result-object v0

    return-object v0
.end method

.method protected u()V
    .locals 4

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/twitter/android/SearchFragment;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/SearchFragment;->x()Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-wide v0, p0, Lcom/twitter/android/SearchFragment;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/twitter/android/SearchFragment;->r:J

    .line 405
    :goto_1
    iget-object v2, p0, Lcom/twitter/android/SearchFragment;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/twitter/android/SearchFragment;->ac:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    iget-object v2, p0, Lcom/twitter/android/SearchFragment;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/twitter/android/SearchFragment;->ac:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 403
    :cond_2
    sget-object v0, Lcom/twitter/android/SearchFragment;->b:Landroid/util/SparseArray;

    iget v1, p0, Lcom/twitter/android/SearchFragment;->p:I

    const-wide/32 v2, 0x493e0

    .line 404
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1
.end method

.method protected v()V
    .locals 4

    .prologue
    .line 413
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->ah:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 414
    const-string/jumbo v1, "refresh_time"

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 416
    return-void
.end method

.method protected w()Z
    .locals 6

    .prologue
    .line 422
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    .line 423
    iget-object v2, p0, Lcom/twitter/android/SearchFragment;->ah:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "refresh_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 424
    iget-boolean v4, p0, Lcom/twitter/android/SearchFragment;->j:Z

    if-eqz v4, :cond_0

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract x()Z
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->t:Ljava/lang/String;

    .line 500
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/SearchFragment;->u:Ljava/lang/String;

    goto :goto_0
.end method
