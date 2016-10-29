.class public Lcom/twitter/android/DMConversationFragment;
.super Lcom/twitter/app/common/list/TwitterListFragment;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/twitter/android/by;
.implements Lcom/twitter/android/client/aj;
.implements Lcom/twitter/android/dg;
.implements Lcom/twitter/android/dm/at;
.implements Lcom/twitter/android/dm/t;
.implements Lcom/twitter/android/dm/widget/f;
.implements Lcom/twitter/android/media/selection/AttachMediaListener;
.implements Lcom/twitter/android/ne;
.implements Lcom/twitter/android/nr;
.implements Lcom/twitter/app/common/base/j;
.implements Lcom/twitter/app/common/base/m;
.implements Lcom/twitter/library/media/util/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<",
        "Landroid/database/Cursor;",
        "Lcom/twitter/android/cc;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/twitter/android/by;",
        "Lcom/twitter/android/client/aj;",
        "Lcom/twitter/android/dg;",
        "Lcom/twitter/android/dm/at;",
        "Lcom/twitter/android/dm/t;",
        "Lcom/twitter/android/dm/widget/f;",
        "Lcom/twitter/android/media/selection/AttachMediaListener;",
        "Lcom/twitter/android/ne;",
        "Lcom/twitter/android/nr;",
        "Lcom/twitter/app/common/base/j;",
        "Lcom/twitter/app/common/base/m;",
        "Lcom/twitter/library/media/util/a;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Landroid/view/View;

.field private F:Z

.field private G:Lcom/twitter/android/dl;

.field private H:Z

.field private I:Z

.field private J:Lcom/twitter/library/client/bb;

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private O:Lcom/twitter/android/widget/NewItemBannerView;

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private a:Lcom/twitter/android/widget/PromptDialogFragment;

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Lws;

.field private ai:Lcom/twitter/library/card/q;

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Lcom/twitter/android/wc;

.field private an:Lcom/twitter/android/wg;

.field private ao:Lcom/twitter/library/network/livepipeline/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/network/livepipeline/ag",
            "<",
            "Lcom/twitter/model/livepipeline/j;",
            ">;"
        }
    .end annotation
.end field

.field private ap:Lcom/twitter/library/network/livepipeline/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/network/livepipeline/ag",
            "<",
            "Lcom/twitter/model/livepipeline/c;",
            ">;"
        }
    .end annotation
.end field

.field private aq:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ar:Lcom/twitter/android/de;

.field private as:Z

.field private at:Landroid/os/Handler;

.field private au:Lcom/twitter/android/dm/ac;

.field private av:Z

.field private b:Lcom/twitter/android/xt;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Lcom/twitter/library/client/Session;

.field private f:J

.field private g:Lcom/twitter/android/media/selection/MediaAttachmentController;

.field private h:Lcom/twitter/android/df;

.field private i:Z

.field private j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

.field private k:Landroid/app/ProgressDialog;

.field private l:Lcom/twitter/android/dm/s;

.field private m:Lcom/twitter/android/media/selection/MediaAttachmentController;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/twitter/android/dm/y;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;-><init>()V

    .line 314
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/android/DMConversationFragment;->c:J

    return-void
.end method

.method static synthetic A(Lcom/twitter/android/DMConversationFragment;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->W()V

    return-void
.end method

.method static synthetic B(Lcom/twitter/android/DMConversationFragment;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->X()V

    return-void
.end method

.method static synthetic C(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/media/selection/MediaAttachmentController;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->g:Lcom/twitter/android/media/selection/MediaAttachmentController;

    return-object v0
.end method

.method static synthetic D(Lcom/twitter/android/DMConversationFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic E(Lcom/twitter/android/DMConversationFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic F(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    return-object v0
.end method

.method private F()V
    .locals 1

    .prologue
    .line 450
    invoke-static {}, Lbnv;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Lbnx;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 451
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->aj:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->ak:Z

    if-eqz v0, :cond_1

    .line 452
    :cond_0
    new-instance v0, Lcom/twitter/android/de;

    invoke-direct {v0, p0}, Lcom/twitter/android/de;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ar:Lcom/twitter/android/de;

    .line 455
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->aj:Z

    if-eqz v0, :cond_2

    .line 456
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->G()V

    .line 459
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->ak:Z

    if-eqz v0, :cond_3

    .line 460
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->H()V

    .line 463
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->al:Z

    .line 465
    :cond_4
    return-void
.end method

.method static synthetic G(Lcom/twitter/android/DMConversationFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    return-object v0
.end method

.method private G()V
    .locals 5

    .prologue
    .line 470
    new-instance v0, Lcom/twitter/android/wc;

    new-instance v1, Lcom/twitter/library/provider/b;

    .line 471
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->ar:Lcom/twitter/android/de;

    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->an:Lcom/twitter/android/wg;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/wc;-><init>(Lcom/twitter/library/provider/b;Ljava/lang/String;Lcom/twitter/android/dm/as;Lcom/twitter/android/wg;)V

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    .line 477
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->z:[J

    if-eqz v0, :cond_0

    .line 479
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/cs;

    invoke-direct {v1, p0}, Lcom/twitter/android/cs;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    .line 480
    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->an:Lcom/twitter/android/wg;

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    invoke-virtual {v0}, Lcom/twitter/android/wc;->c()Ljava/util/List;

    move-result-object v0

    .line 504
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/ap;

    .line 505
    invoke-virtual {p0, v0}, Lcom/twitter/android/DMConversationFragment;->a(Lrx/ap;)V

    goto :goto_0

    .line 507
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->an:Lcom/twitter/android/wg;

    .line 510
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    invoke-virtual {v0, v1}, Lcom/twitter/android/cc;->a(Lcom/twitter/android/wc;)V

    .line 513
    new-instance v0, Lcom/twitter/android/cw;

    invoke-direct {v0, p0}, Lcom/twitter/android/cw;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ao:Lcom/twitter/library/network/livepipeline/ag;

    .line 525
    invoke-static {}, Lcom/twitter/library/network/livepipeline/z;->a()Lcom/twitter/library/network/livepipeline/z;

    move-result-object v0

    .line 526
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    sget-object v3, Lcom/twitter/library/network/livepipeline/CallbackContext;->b:Lcom/twitter/library/network/livepipeline/CallbackContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/network/livepipeline/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/network/livepipeline/CallbackContext;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/cx;

    invoke-direct {v1, p0}, Lcom/twitter/android/cx;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    .line 527
    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->ao:Lcom/twitter/library/network/livepipeline/ag;

    .line 532
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    .line 525
    invoke-virtual {p0, v0}, Lcom/twitter/android/DMConversationFragment;->a(Lrx/ap;)V

    .line 535
    new-instance v0, Lcom/twitter/android/cy;

    invoke-direct {v0, p0}, Lcom/twitter/android/cy;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ap:Lcom/twitter/library/network/livepipeline/ag;

    .line 546
    invoke-static {}, Lcom/twitter/library/network/livepipeline/z;->a()Lcom/twitter/library/network/livepipeline/z;

    move-result-object v0

    .line 547
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    sget-object v3, Lcom/twitter/library/network/livepipeline/CallbackContext;->b:Lcom/twitter/library/network/livepipeline/CallbackContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/network/livepipeline/z;->b(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/network/livepipeline/CallbackContext;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/cz;

    invoke-direct {v1, p0}, Lcom/twitter/android/cz;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    .line 548
    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->ap:Lcom/twitter/library/network/livepipeline/ag;

    .line 553
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    .line 546
    invoke-virtual {p0, v0}, Lcom/twitter/android/DMConversationFragment;->a(Lrx/ap;)V

    .line 554
    return-void
.end method

.method static synthetic H(Lcom/twitter/android/DMConversationFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    return-object v0
.end method

.method private H()V
    .locals 4

    .prologue
    .line 557
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->aq:Lrx/subjects/e;

    .line 558
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->aq:Lrx/subjects/e;

    const-wide/16 v2, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 559
    invoke-virtual {v0, v2, v3, v1}, Lrx/subjects/e;->c(JLjava/util/concurrent/TimeUnit;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/da;

    invoke-direct {v1, p0}, Lcom/twitter/android/da;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    .line 560
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    .line 558
    invoke-virtual {p0, v0}, Lcom/twitter/android/DMConversationFragment;->a(Lrx/ap;)V

    .line 576
    return-void
.end method

.method static synthetic I(Lcom/twitter/android/DMConversationFragment;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->T()V

    return-void
.end method

.method static synthetic J(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/dm/s;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    return-object v0
.end method

.method static synthetic K(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/media/selection/MediaAttachmentController;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->m:Lcom/twitter/android/media/selection/MediaAttachmentController;

    return-object v0
.end method

.method static synthetic L(Lcom/twitter/android/DMConversationFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    return-object v0
.end method

.method private M()V
    .locals 1

    .prologue
    .line 579
    invoke-static {}, Lbnv;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->O()V

    .line 581
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->P()V

    .line 582
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ao()V

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->al:Z

    .line 585
    :cond_0
    return-void
.end method

.method static synthetic M(Lcom/twitter/android/DMConversationFragment;)Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->ak:Z

    return v0
.end method

.method static synthetic N(Lcom/twitter/android/DMConversationFragment;)Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->aj:Z

    return v0
.end method

.method private O()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 588
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    invoke-virtual {v0}, Lcom/twitter/android/wc;->b()V

    .line 590
    iput-object v1, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0, v1}, Lcom/twitter/android/cc;->a(Lcom/twitter/android/wc;)V

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ao:Lcom/twitter/library/network/livepipeline/ag;

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ao:Lcom/twitter/library/network/livepipeline/ag;

    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/ag;->R_()V

    .line 599
    iput-object v1, p0, Lcom/twitter/android/DMConversationFragment;->ao:Lcom/twitter/library/network/livepipeline/ag;

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ap:Lcom/twitter/library/network/livepipeline/ag;

    if-eqz v0, :cond_3

    .line 603
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ap:Lcom/twitter/library/network/livepipeline/ag;

    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/ag;->R_()V

    .line 604
    iput-object v1, p0, Lcom/twitter/android/DMConversationFragment;->ap:Lcom/twitter/library/network/livepipeline/ag;

    .line 606
    :cond_3
    return-void
.end method

.method static synthetic O(Lcom/twitter/android/DMConversationFragment;)Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->u:Z

    return v0
.end method

.method static synthetic P(Lcom/twitter/android/DMConversationFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    return-object v0
.end method

.method private P()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->aq:Lrx/subjects/e;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->aq:Lrx/subjects/e;

    invoke-virtual {v0}, Lrx/subjects/e;->bt_()V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->aq:Lrx/subjects/e;

    .line 613
    :cond_0
    return-void
.end method

.method static synthetic Q(Lcom/twitter/android/DMConversationFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    return-object v0
.end method

.method private Q()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 963
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->ae:Z

    if-eqz v0, :cond_0

    .line 978
    :goto_0
    return-void

    .line 967
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->o:Z

    if-nez v0, :cond_1

    .line 968
    iput-boolean v4, p0, Lcom/twitter/android/DMConversationFragment;->o:Z

    .line 969
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->S:Z

    if-nez v0, :cond_1

    .line 970
    iput-boolean v4, p0, Lcom/twitter/android/DMConversationFragment;->p:Z

    .line 974
    :cond_1
    new-instance v1, Lcom/twitter/library/api/dm/requests/f;

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/twitter/library/api/dm/requests/f;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v0, v4}, Lcom/twitter/library/widget/PageableListView;->a(Z)V

    .line 976
    iput-boolean v4, p0, Lcom/twitter/android/DMConversationFragment;->n:Z

    .line 977
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto :goto_0
.end method

.method static synthetic R(Lcom/twitter/android/DMConversationFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    return-object v0
.end method

.method private R()V
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0}, Lcom/twitter/android/dm/s;->m()V

    .line 982
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->s()V

    .line 983
    return-void
.end method

.method private S()V
    .locals 4

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->M:Z

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->t()V

    .line 990
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 991
    const-string/jumbo v1, "dm_found_media_tooltip"

    iget-wide v2, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v1

    .line 992
    invoke-virtual {v1}, Lcom/twitter/android/util/t;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 993
    const v2, 0x7f130481

    invoke-static {v0, v2}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v2

    const v3, 0x7f0a02ac

    .line 994
    invoke-virtual {v2, v3}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v2

    const/4 v3, 0x0

    .line 995
    invoke-virtual {v2, v3}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v2

    new-instance v3, Lcom/twitter/android/cj;

    invoke-direct {v3, p0}, Lcom/twitter/android/cj;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    .line 996
    invoke-virtual {v2, v3}, Lcom/twitter/ui/widget/ad;->a(Lcom/twitter/ui/widget/af;)Lcom/twitter/ui/widget/ad;

    move-result-object v2

    .line 1010
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v3, "found_media_tooltip_fragment_tag"

    invoke-virtual {v2, v0, v3}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    .line 1011
    invoke-virtual {v1}, Lcom/twitter/android/util/t;->b()V

    .line 1014
    :cond_0
    return-void
.end method

.method private T()V
    .locals 4

    .prologue
    .line 1042
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages:thread:dm_compose_bar:media:dismiss"

    aput-object v3, v1, v2

    .line 1043
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1042
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1044
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0}, Lcom/twitter/android/dm/s;->c()V

    .line 1045
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0}, Lcom/twitter/android/dm/s;->p()V

    .line 1046
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ac()V

    .line 1047
    return-void
.end method

.method private U()V
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->W:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->B:Z

    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0}, Lcom/twitter/android/cc;->notifyDataSetChanged()V

    .line 1395
    :cond_0
    return-void
.end method

.method private V()V
    .locals 2

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/twitter/android/cm;

    invoke-direct {v1, p0}, Lcom/twitter/android/cm;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1427
    return-void
.end method

.method private W()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1450
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->u:Z

    if-nez v0, :cond_1

    .line 1451
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->v:Z

    if-eqz v0, :cond_2

    .line 1452
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->y()V

    .line 1453
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->F:Z

    if-nez v0, :cond_0

    .line 1454
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->E:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1456
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->F:Z

    .line 1465
    :cond_1
    :goto_0
    return-void

    .line 1458
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->x()V

    .line 1459
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1460
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1462
    :cond_3
    iput-boolean v3, p0, Lcom/twitter/android/DMConversationFragment;->F:Z

    goto :goto_0
.end method

.method private X()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1925
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/twitter/android/media/camera/z;->a(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1926
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->g:Lcom/twitter/android/media/selection/MediaAttachmentController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(ZII)V

    .line 1933
    :goto_0
    return-void

    .line 1929
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "messages:thread::thread"

    invoke-static {v0, v2, v1}, Lcom/twitter/android/media/camera/z;->a(Landroid/app/Activity;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xe

    .line 1928
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/DMConversationFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private Y()V
    .locals 3

    .prologue
    .line 1936
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f0a0b0a

    .line 1937
    invoke-virtual {p0, v1}, Lcom/twitter/android/DMConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1938
    invoke-virtual {p0, v0}, Lcom/twitter/android/DMConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 1939
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/android/media/selection/MediaAttachment;Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/s;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1824
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/twitter/android/media/selection/MediaAttachment;->d()Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v0

    move-object v1, v0

    .line 1826
    :goto_0
    new-instance v0, Lcom/twitter/library/api/dm/requests/w;

    invoke-direct {v0}, Lcom/twitter/library/api/dm/requests/w;-><init>()V

    .line 1827
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/library/api/dm/requests/w;->a(Landroid/content/Context;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    .line 1828
    invoke-virtual {v0, v3}, Lcom/twitter/library/api/dm/requests/w;->a(Lcom/twitter/library/client/Session;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    .line 1829
    invoke-virtual {v0, v3}, Lcom/twitter/library/api/dm/requests/w;->b(Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 1830
    invoke-virtual {v0, p1}, Lcom/twitter/library/api/dm/requests/w;->c(Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 1831
    invoke-virtual {v0, p2}, Lcom/twitter/library/api/dm/requests/w;->d(Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 1832
    invoke-virtual {v0, v1}, Lcom/twitter/library/api/dm/requests/w;->a(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 1833
    invoke-direct {p0, p3}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/android/media/selection/MediaAttachment;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/twitter/library/api/dm/requests/w;->a(Z)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 1834
    invoke-virtual {v0, p4}, Lcom/twitter/library/api/dm/requests/w;->a(Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 1835
    invoke-virtual {v0}, Lcom/twitter/library/api/dm/requests/w;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/dm/requests/s;

    .line 1836
    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->r:Lcom/twitter/android/dm/y;

    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    .line 1837
    invoke-virtual {v4}, Lcom/twitter/android/dm/s;->w()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1836
    :goto_1
    invoke-virtual {v3, p1, v0, v1}, Lcom/twitter/android/dm/y;->a(Ljava/lang/String;Lcom/twitter/library/api/dm/requests/s;Lcom/twitter/model/drafts/DraftAttachment;)V

    .line 1839
    return-object v0

    :cond_0
    move-object v1, v2

    .line 1824
    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 1837
    goto :goto_1
.end method

.method static synthetic a(Landroid/database/Cursor;)Lcom/twitter/model/dms/l;
    .locals 1

    .prologue
    .line 204
    invoke-static {p0}, Lcom/twitter/android/DMConversationFragment;->c(Landroid/database/Cursor;)Lcom/twitter/model/dms/l;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/DMConversationFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a(JI)V
    .locals 3

    .prologue
    .line 2377
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 2378
    :cond_0
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/16 v1, 0x308

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a027e

    .line 2379
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0680

    .line 2380
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a06f9

    .line 2381
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a00fd

    .line 2382
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2383
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/cu;

    invoke-direct {v1, p0, p1, p2}, Lcom/twitter/android/cu;-><init>(Lcom/twitter/android/DMConversationFragment;J)V

    .line 2384
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 2392
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 2393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->i:Z

    .line 2395
    :cond_1
    return-void
.end method

.method private a(JZ)V
    .locals 7

    .prologue
    .line 2015
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/DMConversationFragment;->f(Z)V

    .line 2016
    new-instance v1, Lcom/twitter/library/api/dm/requests/z;

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/api/dm/requests/z;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JZ)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 2018
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2561
    sget-object v0, Lcom/twitter/library/dm/DMGroupAvatarImageVariant;->d:Lcom/twitter/library/dm/DMGroupAvatarImageVariant;

    invoke-static {p1, v0}, Lcom/twitter/library/dm/DMGroupAvatarImageVariant;->a(Ljava/lang/String;Lcom/twitter/library/dm/DMGroupAvatarImageVariant;)Ljava/lang/String;

    move-result-object v0

    .line 2562
    new-instance v1, Lcom/twitter/app/common/base/z;

    invoke-direct {v1}, Lcom/twitter/app/common/base/z;-><init>()V

    const/4 v2, 0x1

    .line 2563
    invoke-virtual {v1, v2}, Lcom/twitter/app/common/base/z;->d(Z)Lcom/twitter/app/common/base/z;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ImageActivity;

    .line 2564
    invoke-virtual {v1, p0, v2}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 2565
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "image_url"

    .line 2566
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2567
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2568
    return-void
.end method

.method private a(Landroid/database/Cursor;ZZJ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1399
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->s:Z

    if-eqz v0, :cond_1

    .line 1400
    invoke-direct {p0, v1}, Lcom/twitter/android/DMConversationFragment;->f(Z)V

    .line 1401
    invoke-direct {p0, v1}, Lcom/twitter/android/DMConversationFragment;->c(Z)V

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    invoke-virtual {v0}, Lcom/twitter/android/dl;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1404
    if-eqz p3, :cond_2

    .line 1405
    invoke-direct {p0, p1}, Lcom/twitter/android/DMConversationFragment;->d(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1406
    :cond_2
    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p4, p5}, Lcom/twitter/android/DMConversationFragment;->a(Landroid/database/Cursor;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    invoke-direct {p0, v1}, Lcom/twitter/android/DMConversationFragment;->c(Z)V

    goto :goto_0

    .line 1410
    :cond_3
    if-eqz p2, :cond_4

    .line 1411
    invoke-direct {p0, v1}, Lcom/twitter/android/DMConversationFragment;->c(Z)V

    goto :goto_0

    .line 1412
    :cond_4
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->B:Z

    if-nez v0, :cond_0

    .line 1414
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->V()V

    goto :goto_0
.end method

.method private a(Landroid/support/v4/app/FragmentActivity;Lcgf;)V
    .locals 6

    .prologue
    .line 1336
    invoke-virtual {p2}, Lcgf;->c()Ljava/util/List;

    move-result-object v0

    .line 1337
    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->L:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1338
    new-instance v1, Lbve;

    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    invoke-direct {v1, p1, v2, v0}, Lbve;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/util/Collection;)V

    const/16 v0, 0xd

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1352
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->L:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    if-eqz v0, :cond_3

    .line 1353
    invoke-virtual {p2}, Lcgf;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 1354
    iget-object v2, v0, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1355
    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v0}, Lcom/twitter/android/wc;->a(JLjava/lang/String;)V

    goto :goto_1

    .line 1341
    :cond_2
    invoke-virtual {p2}, Lcgf;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1342
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->au:Lcom/twitter/android/dm/ac;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->au:Lcom/twitter/android/dm/ac;

    .line 1344
    invoke-virtual {p2}, Lcgf;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/ac;->b(Ljava/util/List;)Z

    move-result v0

    .line 1345
    if-eqz v0, :cond_0

    .line 1346
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->au:Lcom/twitter/android/dm/ac;

    invoke-virtual {v1}, Lcom/twitter/android/dm/ac;->a()Lcom/twitter/model/dms/ao;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/cc;->a(Lcom/twitter/model/dms/ao;)V

    goto :goto_0

    .line 1362
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->L:Z

    .line 1363
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/DMConversationFragment;I)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/twitter/android/DMConversationFragment;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/DMConversationFragment;JZ)V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/DMConversationFragment;->a(JZ)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/DMConversationFragment;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/twitter/android/DMConversationFragment;->d(Landroid/database/Cursor;)V

    return-void
.end method

.method private a(Lcom/twitter/android/media/selection/MediaAttachment;Landroid/net/Uri;Ljava/lang/String;ZLjava/util/Collection;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/media/selection/MediaAttachment;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->S()V

    .line 1025
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1027
    const-string/jumbo v2, "dm_composition"

    sget-object v3, Lcom/twitter/media/model/MediaType;->h:Ljava/util/EnumSet;

    const/4 v4, 0x1

    sget-object v5, Lcom/twitter/android/composer/ComposerType;->c:Lcom/twitter/android/composer/ComposerType;

    iget-object v6, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    const-string/jumbo v7, "media_upload_fragment_tag"

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/media/util/a;Ljava/lang/String;Ljava/util/EnumSet;ILcom/twitter/android/composer/ComposerType;Lcom/twitter/library/client/Session;Ljava/lang/String;)Lcom/twitter/android/media/selection/MediaAttachmentController;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/DMConversationFragment;->m:Lcom/twitter/android/media/selection/MediaAttachmentController;

    .line 1031
    new-instance v1, Lcom/twitter/android/dm/s;

    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    move-object v3, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/twitter/android/dm/s;-><init>(Lcom/twitter/android/dm/u;Lcom/twitter/android/dm/t;Lcom/twitter/android/media/selection/AttachMediaListener;Lcom/twitter/android/media/selection/MediaAttachment;Landroid/net/Uri;Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    .line 1034
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v1, p6}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->b(Z)V

    .line 1035
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v1, p3, p4}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a(Ljava/lang/String;Z)V

    .line 1037
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-static {v0}, Lcom/twitter/android/widget/GalleryGridFragment;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/dm/s;->a(ZI)V

    .line 1038
    return-void
.end method

.method private a(Lcom/twitter/library/widget/PageableListView;Landroid/os/Bundle;Lcom/twitter/model/account/UserSettings;)V
    .locals 3

    .prologue
    .line 852
    new-instance v0, Lcom/twitter/android/ce;

    invoke-direct {v0}, Lcom/twitter/android/ce;-><init>()V

    .line 853
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ce;->a(Landroid/content/Context;)Lcom/twitter/android/ce;

    move-result-object v1

    .line 854
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v1, v0}, Lcom/twitter/android/ce;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/android/ce;

    move-result-object v0

    .line 855
    invoke-virtual {v0, p0}, Lcom/twitter/android/ce;->a(Lcom/twitter/android/by;)Lcom/twitter/android/ce;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    .line 856
    invoke-virtual {v0, v1}, Lcom/twitter/android/ce;->a(Lcom/twitter/android/dl;)Lcom/twitter/android/ce;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->ag:Z

    .line 857
    invoke-virtual {v0, v1}, Lcom/twitter/android/ce;->b(Z)Lcom/twitter/android/ce;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->af:Z

    .line 858
    invoke-virtual {v0, v1}, Lcom/twitter/android/ce;->a(Z)Lcom/twitter/android/ce;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->av:Z

    .line 859
    invoke-virtual {v0, v1}, Lcom/twitter/android/ce;->c(Z)Lcom/twitter/android/ce;

    move-result-object v0

    .line 860
    invoke-static {}, Lbnv;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ce;->d(Z)Lcom/twitter/android/ce;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->ah:Lws;

    .line 861
    invoke-virtual {v0, v1}, Lcom/twitter/android/ce;->a(Lws;)Lcom/twitter/android/ce;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->ai:Lcom/twitter/library/card/q;

    .line 862
    invoke-virtual {v0, v1}, Lcom/twitter/android/ce;->a(Lcom/twitter/library/card/q;)Lcom/twitter/android/ce;

    move-result-object v0

    iget-boolean v1, p3, Lcom/twitter/model/account/UserSettings;->j:Z

    .line 863
    invoke-virtual {v0, v1}, Lcom/twitter/android/ce;->e(Z)Lcom/twitter/android/ce;

    move-result-object v0

    iget-boolean v1, p3, Lcom/twitter/model/account/UserSettings;->k:Z

    .line 864
    invoke-virtual {v0, v1}, Lcom/twitter/android/ce;->f(Z)Lcom/twitter/android/ce;

    move-result-object v0

    .line 865
    invoke-virtual {v0}, Lcom/twitter/android/ce;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    .line 866
    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->u:Z

    invoke-virtual {v0, v1}, Lcom/twitter/android/cc;->a(Z)V

    .line 867
    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->v:Z

    invoke-virtual {v0, v1}, Lcom/twitter/android/cc;->b(Z)V

    .line 868
    invoke-virtual {v0, p2}, Lcom/twitter/android/cc;->a(Landroid/os/Bundle;)V

    .line 869
    invoke-virtual {v0, p0}, Lcom/twitter/android/cc;->a(Lcom/twitter/android/nr;)V

    .line 871
    new-instance v1, Lcom/twitter/android/dc;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/dc;-><init>(Lcom/twitter/android/DMConversationFragment;Lcom/twitter/library/widget/PageableListView;)V

    invoke-virtual {p1, v1}, Lcom/twitter/library/widget/PageableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 879
    new-instance v1, Lcom/twitter/android/ch;

    invoke-direct {v1, p0, v0, p1, p0}, Lcom/twitter/android/ch;-><init>(Lcom/twitter/android/DMConversationFragment;Lcom/twitter/android/cc;Lcom/twitter/library/widget/PageableListView;Lcom/twitter/android/dg;)V

    invoke-virtual {p1, v1}, Lcom/twitter/library/widget/PageableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 892
    new-instance v1, Lcom/twitter/android/dm/widget/ReadOnlyConversationFooterView;

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/android/dm/widget/ReadOnlyConversationFooterView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/DMConversationFragment;->E:Landroid/view/View;

    .line 894
    invoke-virtual {p1}, Lcom/twitter/library/widget/PageableListView;->a()V

    .line 895
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/twitter/library/widget/PageableListView;->a(Z)V

    .line 897
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/aa;->a(Lcvt;)V

    .line 898
    new-instance v0, Lcom/twitter/android/ci;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/ci;-><init>(Lcom/twitter/android/DMConversationFragment;Lcom/twitter/library/widget/PageableListView;)V

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/PageableListView;->setOnPageScrollListener(Lcom/twitter/library/widget/x;)V

    .line 951
    return-void
.end method

.method private a(Landroid/database/Cursor;J)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1430
    invoke-static {p1}, Lbnx;->a(Landroid/database/Cursor;)J

    move-result-wide v4

    .line 1431
    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    .line 1432
    invoke-virtual {v2}, Lcom/twitter/android/wc;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    .line 1433
    invoke-virtual {v2}, Lcom/twitter/android/wc;->h()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    .line 1434
    :goto_0
    cmp-long v3, v4, p2

    if-gtz v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    .line 1433
    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/DMConversationFragment;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/DMConversationFragment;Z)Z
    .locals 0

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/twitter/android/DMConversationFragment;->S:Z

    return p1
.end method

.method private ab()V
    .locals 2

    .prologue
    .line 2050
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/NewItemBannerView;

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->O:Lcom/twitter/android/widget/NewItemBannerView;

    .line 2051
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->O:Lcom/twitter/android/widget/NewItemBannerView;

    const v1, 0x7f0a02ca

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/NewItemBannerView;->setText(I)V

    .line 2052
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->O:Lcom/twitter/android/widget/NewItemBannerView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/NewItemBannerView;->a()V

    .line 2053
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->O:Lcom/twitter/android/widget/NewItemBannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/NewItemBannerView;->setShouldThrottleShowing(Z)V

    .line 2054
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->O:Lcom/twitter/android/widget/NewItemBannerView;

    new-instance v1, Lcom/twitter/android/cr;

    invoke-direct {v1, p0}, Lcom/twitter/android/cr;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/NewItemBannerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2061
    return-void
.end method

.method private ac()V
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0}, Lcom/twitter/android/dm/s;->o()V

    .line 2314
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->R()V

    .line 2315
    return-void
.end method

.method private ad()Z
    .locals 1

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    invoke-virtual {v0}, Lcom/twitter/android/dl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->R:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ae()Z
    .locals 1

    .prologue
    .line 2451
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/DMConversationFragment;->f(I)Z

    move-result v0

    return v0
.end method

.method private ag()Z
    .locals 1

    .prologue
    .line 2455
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/twitter/android/DMConversationFragment;->f(I)Z

    move-result v0

    return v0
.end method

.method private ah()I
    .locals 3

    .prologue
    .line 2463
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 2464
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2465
    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 2466
    sub-int v0, v1, v0

    return v0
.end method

.method private ai()V
    .locals 2

    .prologue
    .line 2515
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2516
    instance-of v1, v0, Lcom/twitter/android/DMActivity;

    if-eqz v1, :cond_0

    .line 2517
    check-cast v0, Lcom/twitter/android/DMActivity;

    invoke-virtual {v0}, Lcom/twitter/android/DMActivity;->o()V

    .line 2520
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->aj()V

    .line 2521
    return-void
.end method

.method private aj()V
    .locals 1

    .prologue
    .line 2524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->ae:Z

    .line 2525
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    if-eqz v0, :cond_0

    .line 2526
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->q()V

    .line 2528
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2529
    if-eqz v0, :cond_1

    .line 2530
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2532
    :cond_1
    return-void
.end method

.method private ak()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2571
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2572
    invoke-static {v0}, Lcom/twitter/android/widget/GalleryGridFragment;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2573
    new-instance v1, Lcom/twitter/android/gq;

    invoke-direct {v1}, Lcom/twitter/android/gq;-><init>()V

    .line 2574
    invoke-virtual {v1, v0}, Lcom/twitter/android/gq;->a(Landroid/content/Context;)Lcom/twitter/android/gq;

    move-result-object v0

    const-string/jumbo v1, "dm_composition"

    .line 2575
    invoke-virtual {v0, v1}, Lcom/twitter/android/gq;->a(Ljava/lang/String;)Lcom/twitter/android/gq;

    move-result-object v0

    const-string/jumbo v1, "messages:thread:dm_compose_bar:media"

    .line 2576
    invoke-virtual {v0, v1}, Lcom/twitter/android/gq;->b(Ljava/lang/String;)Lcom/twitter/android/gq;

    move-result-object v0

    .line 2577
    invoke-virtual {v0, v2}, Lcom/twitter/android/gq;->a(Z)Lcom/twitter/android/gq;

    move-result-object v0

    .line 2578
    invoke-virtual {v0, v2}, Lcom/twitter/android/gq;->a(I)Lcom/twitter/android/gq;

    move-result-object v0

    .line 2579
    invoke-virtual {v0}, Lcom/twitter/android/gq;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x5

    .line 2573
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/DMConversationFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2584
    :goto_0
    return-void

    .line 2582
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMConversationFragment;->c(I)V

    goto :goto_0
.end method

.method private al()V
    .locals 1

    .prologue
    .line 2753
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ar:Lcom/twitter/android/de;

    if-eqz v0, :cond_0

    .line 2754
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ar:Lcom/twitter/android/de;

    invoke-virtual {v0}, Lcom/twitter/android/de;->b()V

    .line 2756
    :cond_0
    return-void
.end method

.method private am()V
    .locals 1

    .prologue
    .line 2759
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ar:Lcom/twitter/android/de;

    if-eqz v0, :cond_0

    .line 2760
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ar:Lcom/twitter/android/de;

    invoke-virtual {v0}, Lcom/twitter/android/de;->d()V

    .line 2762
    :cond_0
    return-void
.end method

.method private an()V
    .locals 1

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ar:Lcom/twitter/android/de;

    if-eqz v0, :cond_0

    .line 2766
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ar:Lcom/twitter/android/de;

    invoke-virtual {v0}, Lcom/twitter/android/de;->c()V

    .line 2768
    :cond_0
    return-void
.end method

.method private ao()V
    .locals 1

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ar:Lcom/twitter/android/de;

    if-eqz v0, :cond_0

    .line 2772
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ar:Lcom/twitter/android/de;

    invoke-virtual {v0}, Lcom/twitter/android/de;->j()V

    .line 2774
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/DMConversationFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lclj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1469
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v1

    .line 1470
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->af:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1471
    new-instance v0, Lcme;

    new-instance v2, Lcom/twitter/android/co;

    invoke-direct {v2, p0}, Lcom/twitter/android/co;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    invoke-direct {v0, p1, v2}, Lcme;-><init>(Landroid/database/Cursor;Lcmv;)V

    .line 1487
    invoke-virtual {v0}, Lcme;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ac;

    .line 1488
    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    goto :goto_0

    .line 1491
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1370
    if-nez p1, :cond_1

    .line 1386
    :cond_0
    :goto_0
    return-void

    .line 1373
    :cond_1
    new-instance v0, Lcom/twitter/android/cl;

    invoke-direct {v0, p0}, Lcom/twitter/android/cl;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    .line 1374
    invoke-static {p1, v0}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v0

    .line 1373
    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->z:[J

    .line 1382
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->b:Lcom/twitter/android/xt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->z:[J

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->b:Lcom/twitter/android/xt;

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->z:[J

    invoke-interface {v0, v1}, Lcom/twitter/android/xt;->a([J)V

    .line 1384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->y:Z

    goto :goto_0
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 1495
    iput-boolean p1, p0, Lcom/twitter/android/DMConversationFragment;->t:Z

    .line 1496
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aV()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 1497
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/DMConversationFragment;I)Z
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/twitter/android/DMConversationFragment;->f(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/DMConversationFragment;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/DMConversationFragment;Z)Z
    .locals 0

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/twitter/android/DMConversationFragment;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/twitter/android/DMConversationFragment;)J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    return-wide v0
.end method

.method private static c(Landroid/database/Cursor;)Lcom/twitter/model/dms/l;
    .locals 1

    .prologue
    .line 1974
    new-instance v0, Lbnq;

    invoke-direct {v0}, Lbnq;-><init>()V

    .line 1975
    invoke-virtual {v0, p0}, Lcmx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/l;

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 2021
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0}, Lcom/twitter/android/cc;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2022
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 2023
    if-eqz p1, :cond_1

    .line 2024
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2029
    :cond_0
    :goto_0
    return-void

    .line 2026
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/DMConversationFragment;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/twitter/android/DMConversationFragment;Z)Z
    .locals 0

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/twitter/android/DMConversationFragment;->R:Z

    return p1
.end method

.method private c(Lcom/twitter/android/media/selection/MediaAttachment;)Z
    .locals 1

    .prologue
    .line 1846
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/twitter/android/media/selection/MediaAttachment;->a:I

    if-eqz v0, :cond_0

    .line 1847
    invoke-static {}, Lbnv;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1848
    :cond_0
    const/4 v0, 0x0

    .line 1852
    :goto_0
    return v0

    .line 1851
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/twitter/android/media/selection/MediaAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 1852
    instance-of v0, v0, Lcom/twitter/model/media/EditableImage;

    goto :goto_0
.end method

.method private d(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 785
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 786
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 789
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->D:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    :cond_0
    invoke-direct {p0, v1}, Lcom/twitter/android/DMConversationFragment;->c(Z)V

    .line 796
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->D:Z

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_2
    iput-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->D:Z

    goto :goto_0
.end method

.method private d(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    invoke-virtual {v0, p1}, Lcom/twitter/android/dl;->c(Landroid/database/Cursor;)I

    move-result v0

    .line 2033
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aC()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2047
    :cond_0
    :goto_0
    return-void

    .line 2037
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aW()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 2040
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 2041
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/twitter/app/common/list/aa;->a(II)V

    .line 2046
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->I:Z

    goto :goto_0

    .line 2043
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/DMConversationFragment;->c(Z)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/twitter/android/DMConversationFragment;Z)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/twitter/android/DMConversationFragment;->c(Z)V

    return-void
.end method

.method static synthetic d(Lcom/twitter/android/DMConversationFragment;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/twitter/android/DMConversationFragment;)[J
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->z:[J

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/wc;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    return-object v0
.end method

.method private e(J)V
    .locals 3

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/cn;

    invoke-direct {v1, p0}, Lcom/twitter/android/cn;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    invoke-static {v0, p1, p2, v1}, Lcom/twitter/android/dm/e;->a(Landroid/content/Context;JLcom/twitter/android/dm/g;)V

    .line 1447
    return-void
.end method

.method static synthetic e(Lcom/twitter/android/DMConversationFragment;Z)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/twitter/android/DMConversationFragment;->g(Z)V

    return-void
.end method

.method private static e(I)Z
    .locals 2

    .prologue
    .line 1979
    sget-object v0, Lcnb;->a:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/library/client/bb;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->J:Lcom/twitter/library/client/bb;

    return-object v0
.end method

.method private f(Z)V
    .locals 0

    .prologue
    .line 2421
    iput-boolean p1, p0, Lcom/twitter/android/DMConversationFragment;->s:Z

    .line 2422
    return-void
.end method

.method private f(I)Z
    .locals 1

    .prologue
    .line 2459
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ah()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(J)V
    .locals 3

    .prologue
    .line 1983
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/16 v1, 0x302

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a0879

    .line 1984
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0b0017

    .line 1985
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->c(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 1986
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1987
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1988
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 1989
    iput-wide p1, p0, Lcom/twitter/android/DMConversationFragment;->c:J

    .line 1990
    return-void
.end method

.method static synthetic g(Lcom/twitter/android/DMConversationFragment;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->an()V

    return-void
.end method

.method private g(Z)V
    .locals 1

    .prologue
    .line 2428
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->v:Z

    if-eq v0, p1, :cond_0

    .line 2429
    iput-boolean p1, p0, Lcom/twitter/android/DMConversationFragment;->v:Z

    .line 2430
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2431
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0, p1}, Lcom/twitter/android/cc;->b(Z)V

    .line 2434
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/twitter/android/DMConversationFragment;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->al()V

    return-void
.end method

.method private h(Z)V
    .locals 1

    .prologue
    .line 2440
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->u:Z

    if-eq v0, p1, :cond_0

    .line 2441
    iput-boolean p1, p0, Lcom/twitter/android/DMConversationFragment;->u:Z

    .line 2442
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2443
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0, p1}, Lcom/twitter/android/cc;->a(Z)V

    .line 2446
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/twitter/android/DMConversationFragment;)Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->q:Z

    return v0
.end method

.method static synthetic j(Lcom/twitter/android/DMConversationFragment;)Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->S:Z

    return v0
.end method

.method static synthetic k(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->X:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method static synthetic l(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->X:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method static synthetic m(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->X:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method static synthetic n(Lcom/twitter/android/DMConversationFragment;)Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->Q:Z

    return v0
.end method

.method static synthetic o(Lcom/twitter/android/DMConversationFragment;)Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->H:Z

    return v0
.end method

.method static synthetic p(Lcom/twitter/android/DMConversationFragment;)Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->n:Z

    return v0
.end method

.method static synthetic q(Lcom/twitter/android/DMConversationFragment;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->Q()V

    return-void
.end method

.method static synthetic r(Lcom/twitter/android/DMConversationFragment;)Z
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ad()Z

    move-result v0

    return v0
.end method

.method static synthetic s(Lcom/twitter/android/DMConversationFragment;)Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->P:Z

    return v0
.end method

.method static synthetic t(Lcom/twitter/android/DMConversationFragment;)Z
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ag()Z

    move-result v0

    return v0
.end method

.method static synthetic u(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/widget/NewItemBannerView;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->O:Lcom/twitter/android/widget/NewItemBannerView;

    return-object v0
.end method

.method static synthetic v(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->X:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method static synthetic w(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->X:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method static synthetic x(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->X:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method static synthetic y(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/dl;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    return-object v0
.end method

.method static synthetic z(Lcom/twitter/android/DMConversationFragment;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aQ()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public C()V
    .locals 1

    .prologue
    .line 2865
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/DMConversationFragment;->c(Z)V

    .line 2866
    return-void
.end method

.method public M_()V
    .locals 1

    .prologue
    .line 1798
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1799
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/DMConversationFragment;->c(Z)V

    .line 1802
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ak()V

    .line 1803
    return-void
.end method

.method public N_()V
    .locals 2

    .prologue
    .line 2538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->ae:Z

    .line 2540
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->r:Lcom/twitter/android/dm/y;

    invoke-virtual {v0}, Lcom/twitter/android/dm/y;->b()V

    .line 2541
    new-instance v1, Lcom/twitter/android/widget/ec;

    const/16 v0, 0x30a

    invoke-direct {v1, v0}, Lcom/twitter/android/widget/ec;-><init>(I)V

    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->u:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a050d

    .line 2542
    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a09bb

    .line 2545
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05a7

    .line 2546
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2547
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 2548
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/j;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 2549
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 2550
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 2551
    return-void

    .line 2541
    :cond_0
    const v0, 0x7f0a050e

    goto :goto_0
.end method

.method public O_()V
    .locals 2

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->aq:Lrx/subjects/e;

    if-eqz v0, :cond_0

    .line 2589
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->aq:Lrx/subjects/e;

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lrx/subjects/e;->b_(Ljava/lang/Object;)V

    .line 2591
    :cond_0
    return-void
.end method

.method public P_()V
    .locals 1

    .prologue
    .line 2711
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->m:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->h()V

    .line 2712
    return-void
.end method

.method public a()V
    .locals 1

    .prologue
    .line 1151
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->a()V

    .line 1153
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->J:Lcom/twitter/library/client/bb;

    invoke-virtual {v0}, Lcom/twitter/library/client/bb;->a()V

    .line 1154
    return-void
.end method

.method public a(IILandroid/content/Intent;Lcom/twitter/android/media/selection/AttachMediaListener;)V
    .locals 1

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->m:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(IILandroid/content/Intent;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 2723
    return-void
.end method

.method public a(JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    .line 2500
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->r:Lcom/twitter/android/dm/y;

    invoke-virtual {v1, p3}, Lcom/twitter/android/dm/y;->b(Ljava/lang/String;)V

    .line 2501
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->r:Lcom/twitter/android/dm/y;

    invoke-virtual {v1, p3}, Lcom/twitter/android/dm/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2502
    if-eqz v1, :cond_0

    .line 2503
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Ljava/lang/String;Z)V

    .line 2507
    :cond_0
    new-instance v1, Lcom/twitter/android/dm/x;

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/twitter/android/dm/x;-><init>(Landroid/content/ContextWrapper;Lcom/twitter/library/client/Session;J)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 2509
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->N:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2510
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0539

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2512
    :cond_1
    return-void
.end method

.method public a(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 2555
    const/16 v0, 0x30a

    if-ne p2, v0, :cond_0

    .line 2556
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->aj()V

    .line 2558
    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v7, 0x0

    .line 1863
    sparse-switch p2, :sswitch_data_0

    .line 1922
    :cond_0
    :goto_0
    return-void

    .line 1865
    :sswitch_0
    invoke-static {p3}, Lcom/twitter/android/DeleteConversationDialog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1866
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ai()V

    goto :goto_0

    .line 1871
    :sswitch_1
    iget-wide v0, p0, Lcom/twitter/android/DMConversationFragment;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1872
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    invoke-virtual {v0}, Lcom/twitter/android/dl;->d()V

    .line 1873
    packed-switch p3, :pswitch_data_0

    .line 1902
    :cond_1
    :goto_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/android/DMConversationFragment;->c:J

    goto :goto_0

    .line 1875
    :pswitch_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "messages:thread:message:spam:report_as_spam"

    aput-object v2, v1, v7

    .line 1876
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1875
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1877
    new-instance v1, Lcom/twitter/library/api/dm/requests/ReportDMRequest;

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    iget-wide v4, p0, Lcom/twitter/android/DMConversationFragment;->c:J

    sget-object v6, Lcom/twitter/library/api/dm/requests/ReportDMRequest$Type;->a:Lcom/twitter/library/api/dm/requests/ReportDMRequest$Type;

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/api/dm/requests/ReportDMRequest;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcom/twitter/library/api/dm/requests/ReportDMRequest$Type;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0, v7}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto :goto_1

    .line 1882
    :pswitch_1
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "messages:thread:message:abusive:report_as_spam"

    aput-object v2, v1, v7

    .line 1883
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1882
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1884
    new-instance v1, Lcom/twitter/library/api/dm/requests/ReportDMRequest;

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    iget-wide v4, p0, Lcom/twitter/android/DMConversationFragment;->c:J

    sget-object v6, Lcom/twitter/library/api/dm/requests/ReportDMRequest$Type;->b:Lcom/twitter/library/api/dm/requests/ReportDMRequest$Type;

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/api/dm/requests/ReportDMRequest;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcom/twitter/library/api/dm/requests/ReportDMRequest$Type;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0, v7}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1887
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/16 v1, 0x303

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a050a

    .line 1888
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a09bb

    .line 1889
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05a7

    .line 1890
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 1891
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1892
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1893
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    goto/16 :goto_1

    .line 1906
    :sswitch_2
    if-ne p3, v0, :cond_0

    .line 1907
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->Y()V

    goto/16 :goto_0

    .line 1912
    :sswitch_3
    if-ne p3, v0, :cond_2

    .line 1913
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->Y()V

    .line 1915
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->aj()V

    goto/16 :goto_0

    .line 1863
    nop

    :sswitch_data_0
    .sparse-switch
        0x301 -> :sswitch_0
        0x302 -> :sswitch_1
        0x303 -> :sswitch_2
        0x30a -> :sswitch_3
    .end sparse-switch

    .line 1873
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 805
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/DMConversationFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 806
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->m:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0, p1}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Landroid/net/Uri;)V

    .line 2717
    return-void
.end method

.method public a(Landroid/net/Uri;Lcom/twitter/android/media/selection/AttachMediaListener;)V
    .locals 2

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->m:Lcom/twitter/android/media/selection/MediaAttachmentController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Landroid/net/Uri;ZLcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 2702
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1272
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 1273
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1333
    :cond_0
    :goto_0
    return-void

    .line 1275
    :pswitch_0
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgf;

    .line 1276
    invoke-virtual {v0}, Lcgf;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1277
    invoke-virtual {v0}, Lcgf;->n()Lcom/twitter/model/dms/cu;

    move-result-object v1

    .line 1278
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/twitter/model/dms/cu;->a()Ljava/lang/String;

    move-result-object v1

    .line 1279
    :goto_1
    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v4}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->o()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v4}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->getMessageText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1280
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1281
    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v4, v1}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->b(Ljava/lang/String;)V

    .line 1284
    :cond_1
    invoke-virtual {v0}, Lcgf;->m()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    :goto_2
    invoke-direct {p0, v1}, Lcom/twitter/android/DMConversationFragment;->b(Z)V

    move-object v1, v2

    .line 1285
    check-cast v1, Lcom/twitter/app/common/base/TwitterFragmentActivity;

    invoke-virtual {v0}, Lcgf;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Ljava/lang/CharSequence;)V

    .line 1286
    invoke-virtual {v0}, Lcgf;->j()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/twitter/android/DMConversationFragment;->h(Z)V

    .line 1288
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aV()Lcyj;

    move-result-object v1

    invoke-virtual {v1}, Lcyj;->h()V

    .line 1290
    invoke-virtual {v0}, Lcgf;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/DMConversationFragment;->w:Ljava/lang/String;

    .line 1291
    invoke-virtual {v0}, Lcgf;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/DMConversationFragment;->x:Ljava/lang/String;

    .line 1292
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/cc;

    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->x:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/twitter/android/cc;->a(Ljava/lang/String;)V

    .line 1294
    invoke-direct {p0, v2, v0}, Lcom/twitter/android/DMConversationFragment;->a(Landroid/support/v4/app/FragmentActivity;Lcgf;)V

    .line 1296
    invoke-virtual {v0}, Lcgf;->l()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/twitter/android/DMConversationFragment;->g(Z)V

    .line 1297
    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->K:Z

    if-nez v1, :cond_0

    .line 1298
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->W()V

    .line 1299
    iput-boolean v3, p0, Lcom/twitter/android/DMConversationFragment;->K:Z

    .line 1300
    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->v:Z

    if-eqz v1, :cond_0

    .line 1301
    invoke-virtual {v0}, Lcgf;->k()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/DMConversationFragment;->e(J)V

    goto/16 :goto_0

    .line 1278
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1284
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 1309
    :pswitch_1
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgg;

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    .line 1310
    invoke-virtual {v0, v1}, Lcgg;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1311
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->au:Lcom/twitter/android/dm/ac;

    if-eqz v0, :cond_4

    .line 1312
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->au:Lcom/twitter/android/dm/ac;

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/ac;->a(Ljava/util/List;)Z

    move-result v0

    .line 1313
    if-eqz v0, :cond_4

    .line 1314
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->au:Lcom/twitter/android/dm/ac;

    invoke-virtual {v2}, Lcom/twitter/android/dm/ac;->a()Lcom/twitter/model/dms/ao;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/cc;->a(Lcom/twitter/model/dms/ao;)V

    .line 1317
    :cond_4
    invoke-direct {p0, v1}, Lcom/twitter/android/DMConversationFragment;->b(Ljava/util/List;)V

    .line 1318
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aV()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    goto/16 :goto_0

    .line 1322
    :pswitch_2
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->af:Z

    if-eqz v0, :cond_0

    .line 1323
    invoke-direct {p0, p2}, Lcom/twitter/android/DMConversationFragment;->b(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v1

    .line 1324
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0, v1}, Lcom/twitter/android/cc;->a(Ljava/util/Map;)V

    .line 1325
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->U()V

    goto/16 :goto_0

    .line 1273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Lcmf;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1207
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0}, Lcom/twitter/android/cc;->K_()V

    .line 1208
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ae()Z

    move-result v2

    .line 1209
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aQ()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lbnx;->a(Landroid/database/Cursor;)J

    move-result-wide v4

    .line 1210
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcmf;)V

    .line 1211
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0}, Lcom/twitter/android/cc;->g()Landroid/database/Cursor;

    move-result-object v1

    .line 1212
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0}, Lcom/twitter/android/cc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Lbnx;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->A:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->n:Z

    if-nez v0, :cond_0

    .line 1217
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->Q()V

    .line 1218
    iput-boolean v6, p0, Lcom/twitter/android/DMConversationFragment;->A:Z

    .line 1267
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aV()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 1268
    return-void

    .line 1221
    :cond_1
    const-string/jumbo v0, "dm:conversation_load"

    .line 1223
    invoke-static {}, Layj;->b()Layj;

    move-result-object v3

    sget-object v8, Laxz;->m:Laye;

    .line 1221
    invoke-static {v0, v3, v8}, Layp;->a(Ljava/lang/String;Layj;Laye;)Layp;

    move-result-object v0

    .line 1223
    invoke-virtual {v0}, Layp;->j()V

    .line 1225
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Lbnx;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1226
    new-instance v0, Lcom/twitter/library/api/dm/requests/q;

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v8, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    iget-object v9, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-direct {v0, v3, v8, v9}, Lcom/twitter/library/api/dm/requests/q;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {p0, v0, v3, v7}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1230
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->p:Z

    if-eqz v0, :cond_5

    .line 1231
    iput-boolean v7, p0, Lcom/twitter/android/DMConversationFragment;->p:Z

    .line 1232
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->q:Z

    if-nez v0, :cond_3

    .line 1236
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/twitter/android/ck;

    invoke-direct {v1, p0}, Lcom/twitter/android/ck;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1255
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->P:Z

    if-eqz v0, :cond_4

    .line 1256
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aQ()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lbnx;->a(Landroid/database/Cursor;J)Landroid/database/Cursor;

    move-result-object v0

    .line 1257
    if-nez v0, :cond_7

    .line 1260
    :goto_2
    if-lez v7, :cond_4

    add-int/lit8 v0, v7, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/DMConversationFragment;->f(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1261
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->O:Lcom/twitter/android/widget/NewItemBannerView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/NewItemBannerView;->c()Z

    .line 1265
    :cond_4
    iput-boolean v6, p0, Lcom/twitter/android/DMConversationFragment;->B:Z

    goto :goto_0

    .line 1249
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    invoke-virtual {v0}, Lcom/twitter/android/dl;->c()Z

    move-result v0

    if-nez v0, :cond_6

    move v3, v6

    .line 1250
    :goto_3
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    invoke-virtual {v0, v1}, Lcom/twitter/android/dl;->a(Landroid/database/Cursor;)V

    move-object v0, p0

    .line 1251
    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/DMConversationFragment;->a(Landroid/database/Cursor;ZZJ)V

    goto :goto_1

    :cond_6
    move v3, v7

    .line 1249
    goto :goto_3

    .line 1259
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-wide v2, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    .line 1258
    invoke-static {v0, v1, v2, v3}, Lbnx;->a(Landroid/database/Cursor;IJ)I

    move-result v7

    goto :goto_2
.end method

.method public a(Lcom/twitter/android/media/selection/MediaAttachment;Lcom/twitter/android/media/selection/AttachMediaListener;)V
    .locals 1

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->m:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Lcom/twitter/android/media/selection/MediaAttachment;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 2697
    return-void
.end method

.method public a(Lcom/twitter/android/xt;)V
    .locals 0

    .prologue
    .line 2417
    iput-object p1, p0, Lcom/twitter/android/DMConversationFragment;->b:Lcom/twitter/android/xt;

    .line 2418
    return-void
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 1

    .prologue
    .line 1113
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 1114
    const v0, 0x7f0400b3

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->c(I)Lcom/twitter/app/common/list/aj;

    .line 1115
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 9

    .prologue
    const/16 v8, 0x158

    const v2, 0x7f0a028a

    const/4 v1, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2065
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 2066
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 2067
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/twitter/library/network/at;->a(Lcom/twitter/library/service/aa;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    .line 2069
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 2310
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :cond_1
    move v3, v4

    .line 2067
    goto :goto_0

    :pswitch_1
    move-object v1, p1

    .line 2072
    check-cast v1, Lcom/twitter/library/api/dm/requests/SendDMRequest;

    .line 2073
    invoke-virtual {v1}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->e()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2074
    invoke-virtual {v1}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->aB_()Ljava/lang/String;

    move-result-object v6

    .line 2075
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aX()Layj;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/twitter/android/metrics/c;->a(Ljava/lang/String;Layj;)Lcom/twitter/android/metrics/c;

    move-result-object v6

    .line 2076
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/twitter/android/metrics/c;->a(Z)V

    .line 2079
    :cond_2
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2080
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v3

    .line 2081
    if-eqz v3, :cond_5

    iget v3, v3, Lcom/twitter/internal/network/k;->a:I

    .line 2082
    :goto_2
    packed-switch v3, :pswitch_data_1

    :pswitch_2
    goto :goto_1

    .line 2084
    :pswitch_3
    invoke-virtual {v1}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->f()Ljava/lang/String;

    move-result-object v0

    .line 2085
    if-eqz v0, :cond_3

    .line 2086
    invoke-virtual {p0, v0}, Lcom/twitter/android/DMConversationFragment;->a(Ljava/lang/String;)V

    .line 2088
    :cond_3
    check-cast p1, Lcom/twitter/library/api/dm/requests/SendDMRequest;

    iget-object v1, p1, Lcom/twitter/library/api/dm/requests/SendDMRequest;->a:Lcom/twitter/model/dms/dk;

    .line 2089
    invoke-virtual {v1}, Lcom/twitter/model/dms/dk;->g()Lcom/twitter/model/dms/bo;

    move-result-object v0

    .line 2090
    if-eqz v0, :cond_4

    .line 2091
    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->N:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/twitter/model/dms/bo;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bu;

    iget-object v0, v0, Lcom/twitter/model/dms/bu;->e:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2094
    :cond_4
    iget-object v0, v1, Lcom/twitter/model/dms/dk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2095
    invoke-virtual {v1}, Lcom/twitter/model/dms/dk;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 2098
    :goto_3
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 2081
    goto :goto_2

    .line 2095
    :cond_6
    const v0, 0x7f0a028b

    goto :goto_3

    .line 2103
    :pswitch_4
    iget-boolean v2, p0, Lcom/twitter/android/DMConversationFragment;->as:Z

    if-eqz v2, :cond_0

    .line 2104
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->f()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v0

    .line 2105
    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 2107
    :goto_4
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2108
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->at:Landroid/os/Handler;

    new-instance v4, Lcom/twitter/android/ct;

    invoke-direct {v4, p0, v1}, Lcom/twitter/android/ct;-><init>(Lcom/twitter/android/DMConversationFragment;Lcom/twitter/library/api/dm/requests/SendDMRequest;)V

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 2105
    :cond_7
    const-string/jumbo v2, "retry-after"

    .line 2106
    invoke-virtual {v0, v2}, Lcom/twitter/internal/network/HttpOperation;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2124
    :cond_8
    if-nez v3, :cond_0

    .line 2125
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2164
    invoke-virtual {v1}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->h()J

    move-result-wide v2

    .line 2165
    invoke-virtual {v1}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 2166
    invoke-direct {p0, v2, v3, p2}, Lcom/twitter/android/DMConversationFragment;->a(JI)V

    goto/16 :goto_1

    .line 2127
    :sswitch_0
    invoke-virtual {v1}, Lcom/twitter/library/api/dm/requests/SendDMRequest;->g()Ljava/util/Set;

    move-result-object v0

    .line 2129
    const/16 v1, 0x15d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2130
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a02a7

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2131
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2132
    invoke-direct {p0, v5}, Lcom/twitter/android/DMConversationFragment;->g(Z)V

    .line 2133
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->W()V

    goto/16 :goto_1

    .line 2135
    :cond_9
    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2136
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a02a8

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2137
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2138
    invoke-direct {p0, v5}, Lcom/twitter/android/DMConversationFragment;->g(Z)V

    .line 2139
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->W()V

    goto/16 :goto_1

    .line 2141
    :cond_a
    const/16 v1, 0xe2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2142
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a0290

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2143
    :cond_b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2144
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/dialog/RateLimitDialogFragmentActivity;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 2145
    :cond_c
    const/16 v1, 0x162

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2146
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a02a4

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2147
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2149
    :cond_d
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a02a0

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2154
    :sswitch_1
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a02a5

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2155
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2160
    :sswitch_2
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a02a6

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2176
    :pswitch_5
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a053a

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2182
    :pswitch_6
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    .line 2183
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a029a

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2188
    :pswitch_7
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2189
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a050c

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2194
    :pswitch_8
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a0508

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2200
    :pswitch_9
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aC()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2201
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    check-cast v1, Lcom/twitter/library/widget/PageableListView;

    .line 2202
    invoke-virtual {v1, v4}, Lcom/twitter/library/widget/PageableListView;->a(Z)V

    .line 2205
    :cond_e
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2206
    check-cast p1, Lcom/twitter/library/api/dm/requests/f;

    .line 2207
    invoke-virtual {p1}, Lcom/twitter/library/api/dm/requests/f;->e()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2208
    iput-boolean v5, p0, Lcom/twitter/android/DMConversationFragment;->Q:Z

    .line 2221
    :cond_f
    :goto_5
    iput-boolean v4, p0, Lcom/twitter/android/DMConversationFragment;->n:Z

    goto/16 :goto_1

    .line 2211
    :cond_10
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->C:Z

    if-eqz v0, :cond_11

    .line 2214
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a0296

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2215
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ai()V

    .line 2218
    :cond_11
    iput-boolean v5, p0, Lcom/twitter/android/DMConversationFragment;->Q:Z

    goto :goto_5

    .line 2225
    :pswitch_a
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2226
    invoke-direct {p0, v5}, Lcom/twitter/android/DMConversationFragment;->b(Z)V

    .line 2227
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a02cd

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2232
    :pswitch_b
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2233
    invoke-direct {p0, v4}, Lcom/twitter/android/DMConversationFragment;->b(Z)V

    .line 2234
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a02cc

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2239
    :pswitch_c
    check-cast p1, Lcom/twitter/library/api/dm/requests/b;

    .line 2242
    iget-object v5, p0, Lcom/twitter/android/DMConversationFragment;->k:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_12

    .line 2243
    iget-object v5, p0, Lcom/twitter/android/DMConversationFragment;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->hide()V

    .line 2247
    :cond_12
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2248
    iget-object v0, p1, Lcom/twitter/library/api/dm/requests/b;->a:Lcom/twitter/model/dms/a;

    .line 2250
    iget-object v3, v0, Lcom/twitter/model/dms/a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    move v2, v1

    .line 2280
    :cond_13
    :goto_6
    if-eq v2, v1, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2253
    :cond_14
    invoke-virtual {v0}, Lcom/twitter/model/dms/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2256
    const v2, 0x7f0a028b

    goto :goto_6

    .line 2260
    :cond_15
    if-eqz v3, :cond_16

    move v2, v1

    .line 2261
    goto :goto_6

    .line 2262
    :cond_16
    const/16 v3, 0x193

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v5

    if-ne v3, v5, :cond_17

    .line 2263
    invoke-virtual {p1}, Lcom/twitter/library/api/dm/requests/b;->g()[I

    move-result-object v0

    .line 2264
    invoke-static {v0, v8}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2266
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/dialog/RateLimitDialogFragmentActivity;->a(Landroid/content/Context;)V

    move v2, v1

    goto :goto_6

    .line 2270
    :cond_17
    const/16 v3, 0x1a4

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v5

    if-eq v3, v5, :cond_18

    const/16 v3, 0x1ad

    .line 2271
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    if-ne v3, v0, :cond_13

    .line 2273
    :cond_18
    const v2, 0x7f0a028c

    goto :goto_6

    .line 2286
    :pswitch_d
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2287
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto/16 :goto_1

    .line 2292
    :pswitch_e
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2294
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->U()V

    .line 2295
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a05e2

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2296
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2301
    :pswitch_f
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2069
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_6
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 2082
    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 2125
    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_1
        0x1a4 -> :sswitch_2
        0x1ad -> :sswitch_2
    .end sparse-switch
.end method

.method protected a(Lcom/twitter/refresh/widget/a;Z)V
    .locals 4

    .prologue
    .line 826
    iget-wide v0, p1, Lcom/twitter/refresh/widget/a;->c:J

    .line 827
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 834
    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    invoke-virtual {v2}, Lcom/twitter/android/dl;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/twitter/android/DMConversationFragment;->I:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/twitter/android/DMConversationFragment;->H:Z

    if-eqz v2, :cond_2

    .line 835
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ae()Z

    move-result v2

    if-nez v2, :cond_3

    .line 836
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/DMConversationFragment;->a(J)I

    move-result v0

    .line 837
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    .line 838
    iget-object v2, v1, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    if-nez p2, :cond_2

    .line 839
    :cond_1
    iget v2, p1, Lcom/twitter/refresh/widget/a;->d:I

    invoke-virtual {v1, v0, v2}, Lcom/twitter/app/common/list/aa;->a(II)V

    .line 846
    :cond_2
    :goto_0
    return-void

    .line 842
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/DMConversationFragment;->c(Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1101
    iput-object p1, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    .line 1104
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->al:Z

    if-nez v0, :cond_0

    .line 1105
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->F()V

    .line 1107
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMConversationFragment;->a(Z)V

    .line 1109
    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/media/selection/MediaAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2329
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2330
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0, v3}, Lcom/twitter/android/dm/s;->a(Z)V

    .line 2331
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ac()V

    .line 2374
    :cond_0
    :goto_0
    return-void

    .line 2334
    :cond_1
    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/selection/MediaAttachment;

    .line 2335
    iget v1, v0, Lcom/twitter/android/media/selection/MediaAttachment;->a:I

    if-ne v1, v4, :cond_4

    .line 2336
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v1, v3}, Lcom/twitter/android/dm/s;->a(Z)V

    .line 2337
    iget-object v1, v0, Lcom/twitter/android/media/selection/MediaAttachment;->b:Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;

    sget-object v2, Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;->e:Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;

    if-ne v1, v2, :cond_2

    .line 2338
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0}, Lcom/twitter/android/dm/s;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2339
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0}, Lcom/twitter/android/dm/s;->q()V

    goto :goto_0

    .line 2342
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ac()V

    .line 2344
    iget-object v0, v0, Lcom/twitter/android/media/selection/MediaAttachment;->b:Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;

    sget-object v1, Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;->d:Lcom/twitter/android/media/selection/AttachMediaListener$MediaAttachFailure;

    if-ne v0, v1, :cond_3

    .line 2346
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lacb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2350
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2348
    :cond_3
    const v0, 0x7f0a049d

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2352
    :cond_4
    iget v1, v0, Lcom/twitter/android/media/selection/MediaAttachment;->a:I

    if-nez v1, :cond_6

    .line 2353
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0}, Lcom/twitter/android/media/selection/MediaAttachment;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/dm/s;->c(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2357
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v1, v3}, Lcom/twitter/android/dm/s;->a(Z)V

    .line 2358
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v1}, Lcom/twitter/android/dm/s;->i()Z

    move-result v1

    .line 2360
    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/android/dm/s;->d(Landroid/net/Uri;)V

    .line 2361
    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v2, v0}, Lcom/twitter/android/dm/s;->c(Lcom/twitter/android/media/selection/MediaAttachment;)V

    .line 2363
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ag()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2364
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->V()V

    .line 2367
    :cond_5
    if-eqz v1, :cond_0

    .line 2369
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->getMessageText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMConversationFragment;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2371
    :cond_6
    iget v1, v0, Lcom/twitter/android/media/selection/MediaAttachment;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2372
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v1, v0}, Lcom/twitter/android/dm/s;->c(Lcom/twitter/android/media/selection/MediaAttachment;)V

    goto/16 :goto_0
.end method

.method protected a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 815
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Z)V

    .line 816
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 817
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 818
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 819
    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->af:Z

    if-eqz v1, :cond_0

    .line 820
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 822
    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 2

    .prologue
    .line 1943
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0, p1}, Lcom/twitter/android/cc;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1944
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/twitter/android/DMConversationFragment;->e(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1945
    :cond_0
    const/4 v0, 0x0

    .line 1953
    :goto_0
    return v0

    .line 1948
    :cond_1
    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->c(Landroid/database/Cursor;)Lcom/twitter/model/dms/l;

    move-result-object v1

    .line 1949
    invoke-virtual {v1}, Lcom/twitter/model/dms/l;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x307

    .line 1950
    :goto_1
    invoke-static {v0, v1, p0}, Lcom/twitter/android/DMMessageDialog;->a(ILcom/twitter/model/dms/l;Lcom/twitter/android/dg;)Lcom/twitter/android/DMMessageDialog;

    move-result-object v0

    .line 1951
    invoke-virtual {v0, p0}, Lcom/twitter/android/DMMessageDialog;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1952
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 1953
    const/4 v0, 0x1

    goto :goto_0

    .line 1949
    :cond_2
    const/16 v0, 0x304

    goto :goto_1
.end method

.method public a(Lcom/twitter/android/media/selection/MediaAttachment;)Z
    .locals 2

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {p1}, Lcom/twitter/android/media/selection/MediaAttachment;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/s;->d(Landroid/net/Uri;)V

    .line 2324
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/twitter/library/platform/notifications/ae;J)Z
    .locals 2

    .prologue
    .line 2412
    iget-wide v0, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/library/platform/notifications/ae;->k:Ljava/lang/String;

    .line 2413
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2412
    :goto_0
    return v0

    .line 2413
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcyd;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1548
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1549
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1674
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcyd;)Z

    move-result v0

    :goto_0
    return v0

    .line 1551
    :pswitch_0
    const/16 v0, 0x301

    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->u:Z

    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    const-string/jumbo v5, "thread"

    invoke-static {v0, v1, v4, v5}, Lcom/twitter/android/DeleteConversationDialog;->a(IZLjava/lang/String;Ljava/lang/String;)Lcom/twitter/android/DeleteConversationDialog;

    move-result-object v0

    .line 1553
    invoke-virtual {v0, p0}, Lcom/twitter/android/DeleteConversationDialog;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1554
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    move v0, v2

    .line 1555
    goto :goto_0

    .line 1558
    :pswitch_1
    instance-of v0, p1, Lbjl;

    if-eqz v0, :cond_0

    check-cast p1, Lbjl;

    invoke-virtual {p1}, Lbjl;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v4, "messages:thread::thread:mute_dm_thread"

    aput-object v4, v1, v6

    .line 1560
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1559
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1561
    new-instance v0, Lcom/twitter/library/api/dm/requests/aa;

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/twitter/library/api/dm/requests/aa;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1, v6}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    :goto_1
    move v0, v2

    .line 1569
    goto :goto_0

    .line 1564
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v4, "messages:thread::thread:unmute_dm_thread"

    aput-object v4, v1, v6

    .line 1565
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1564
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1566
    new-instance v0, Lcom/twitter/library/api/dm/requests/aa;

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-direct {v0, v3, v1, v4, v6}, Lcom/twitter/library/api/dm/requests/aa;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Z)V

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1, v6}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto :goto_1

    .line 1572
    :pswitch_2
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v4, "messages:thread::thread:edit_name"

    aput-object v4, v1, v6

    .line 1573
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1572
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1574
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->w:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/UpdateConversationNameDialog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/android/UpdateConversationNameDialog;

    move-result-object v0

    .line 1575
    invoke-virtual {v0, p0}, Lcom/twitter/android/UpdateConversationNameDialog;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1576
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    move v0, v2

    .line 1577
    goto/16 :goto_0

    .line 1580
    :pswitch_3
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v4, "messages:thread::thread:edit_photo"

    aput-object v4, v1, v6

    .line 1581
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1580
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1582
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1583
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->x:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1585
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v4

    .line 1586
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v5

    .line 1588
    if-eqz v1, :cond_1

    .line 1589
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 1590
    const v6, 0x7f0a0998

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 1593
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 1594
    const v6, 0x7f0a00c6

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 1596
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 1597
    const v6, 0x7f0a0653

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 1599
    if-eqz v1, :cond_2

    .line 1600
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 1601
    const v1, 0x7f0a06e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 1604
    :cond_2
    invoke-virtual {v5}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1606
    new-instance v5, Lcom/twitter/android/widget/ec;

    const/16 v1, 0x30b

    invoke-direct {v5, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    .line 1608
    invoke-virtual {v4}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v4}, Lcom/twitter/util/collection/r;->i()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Lcom/twitter/android/widget/ec;->a([Ljava/lang/CharSequence;)Lcom/twitter/android/widget/eb;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/ec;

    .line 1609
    invoke-virtual {v1}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v1

    .line 1610
    invoke-virtual {v1, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v1

    new-instance v4, Lcom/twitter/android/cp;

    invoke-direct {v4, p0, v0, v3}, Lcom/twitter/android/cp;-><init>(Lcom/twitter/android/DMConversationFragment;Ljava/util/List;Landroid/support/v4/app/FragmentActivity;)V

    .line 1611
    invoke-virtual {v1, v4}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/PromptDialogFragment;

    .line 1642
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    move v0, v2

    .line 1643
    goto/16 :goto_0

    .line 1646
    :pswitch_4
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v3, "messages:thread::thread:view_participants"

    aput-object v3, v1, v6

    .line 1647
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1646
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1648
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->q()V

    .line 1649
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->b:Lcom/twitter/android/xt;

    invoke-interface {v0}, Lcom/twitter/android/xt;->a()V

    move v0, v2

    .line 1650
    goto/16 :goto_0

    .line 1653
    :pswitch_5
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->z:[J

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->z:[J

    array-length v0, v0

    invoke-static {}, Lbnv;->h()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1654
    :cond_3
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v4, "messages:thread::thread:add_participants"

    aput-object v4, v1, v6

    .line 1655
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1654
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1656
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/DMAddParticipantsActivity;

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "preselected_items"

    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->z:[J

    .line 1658
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    move-result-object v0

    .line 1656
    invoke-virtual {p0, v0, v2}, Lcom/twitter/android/DMConversationFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    move v0, v2

    .line 1664
    goto/16 :goto_0

    .line 1662
    :cond_4
    const v0, 0x7f0a0302

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1667
    :pswitch_6
    const/16 v0, 0x309

    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->u:Z

    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    const-string/jumbo v5, "thread"

    invoke-static {v0, v1, v4, v5, p0}, Lcom/twitter/android/ReportConversationDialog;->a(IZLjava/lang/String;Ljava/lang/String;Lcom/twitter/android/ne;)Lcom/twitter/android/ReportConversationDialog;

    move-result-object v0

    .line 1669
    invoke-virtual {v0, p0}, Lcom/twitter/android/ReportConversationDialog;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1670
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    move v0, v2

    .line 1671
    goto/16 :goto_0

    .line 1549
    nop

    :pswitch_data_0
    .packed-switch 0x7f1307d0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 1501
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcyg;)Z

    .line 1502
    const v0, 0x7f14000f

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 1503
    const/4 v0, 0x1

    return v0
.end method

.method public a_(J)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1995
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "messages:thread:rtf_message::report_as_spam"

    aput-object v2, v1, v7

    .line 1996
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1995
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1997
    new-instance v1, Lcom/twitter/library/api/dm/requests/ReportDMRequest;

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    sget-object v6, Lcom/twitter/library/api/dm/requests/ReportDMRequest$Type;->a:Lcom/twitter/library/api/dm/requests/ReportDMRequest$Type;

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/api/dm/requests/ReportDMRequest;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcom/twitter/library/api/dm/requests/ReportDMRequest$Type;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0, v7}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1999
    return-void
.end method

.method public b(Lcyg;)I
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1509
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->b(Lcyg;)I

    .line 1511
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0}, Lcom/twitter/android/cc;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    .line 1513
    :goto_0
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 1514
    const v4, 0x7f1307d5

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v4

    .line 1515
    invoke-virtual {v4, v1}, Lbjl;->b(Z)Lbjl;

    .line 1516
    const v1, 0x7f0a0541

    invoke-virtual {v4, v1}, Lbjl;->d(I)Lbjl;

    .line 1518
    iget-boolean v5, p0, Lcom/twitter/android/DMConversationFragment;->u:Z

    .line 1519
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-static {v1}, Lbnx;->a(Ljava/lang/String;)Z

    move-result v6

    .line 1521
    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->t:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0a0304

    .line 1524
    :goto_1
    const v4, 0x7f1307d0

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v7

    iget-boolean v4, p0, Lcom/twitter/android/DMConversationFragment;->v:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->z:[J

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    move v4, v2

    .line 1525
    :goto_2
    invoke-virtual {v7, v4}, Lbjl;->b(Z)Lbjl;

    .line 1527
    const v4, 0x7f1307d1

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v7

    if-eqz v5, :cond_3

    iget-boolean v4, p0, Lcom/twitter/android/DMConversationFragment;->y:Z

    if-eqz v4, :cond_3

    if-nez v6, :cond_3

    move v4, v2

    .line 1528
    :goto_3
    invoke-virtual {v7, v4}, Lbjl;->b(Z)Lbjl;

    .line 1530
    const v4, 0x7f1307d2

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v7

    if-eqz v5, :cond_4

    if-nez v6, :cond_4

    move v4, v2

    .line 1531
    :goto_4
    invoke-virtual {v7, v4}, Lbjl;->b(Z)Lbjl;

    .line 1532
    const v4, 0x7f1307d3

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v7

    if-eqz v5, :cond_5

    if-nez v6, :cond_5

    move v4, v2

    .line 1533
    :goto_5
    invoke-virtual {v7, v4}, Lbjl;->b(Z)Lbjl;

    .line 1534
    const v4, 0x7f1307d4

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v5

    if-nez v6, :cond_6

    move v4, v2

    .line 1535
    :goto_6
    invoke-virtual {v5, v4}, Lbjl;->b(Z)Lbjl;

    move-result-object v4

    .line 1536
    invoke-virtual {v4, v1}, Lbjl;->d(I)Lbjl;

    move-result-object v1

    iget-boolean v4, p0, Lcom/twitter/android/DMConversationFragment;->t:Z

    .line 1537
    invoke-virtual {v1, v4}, Lbjl;->d(Z)V

    .line 1539
    const v1, 0x7f1307d6

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    if-nez v6, :cond_7

    :goto_7
    invoke-virtual {v0, v2}, Lbjl;->b(Z)Lbjl;

    .line 1540
    const/4 v0, 0x2

    return v0

    :cond_0
    move v1, v3

    .line 1511
    goto/16 :goto_0

    .line 1521
    :cond_1
    const v1, 0x7f0a0305

    goto :goto_1

    :cond_2
    move v4, v3

    .line 1524
    goto :goto_2

    :cond_3
    move v4, v3

    .line 1527
    goto :goto_3

    :cond_4
    move v4, v3

    .line 1530
    goto :goto_4

    :cond_5
    move v4, v3

    .line 1532
    goto :goto_5

    :cond_6
    move v4, v3

    .line 1534
    goto :goto_6

    :cond_7
    move v2, v3

    .line 1539
    goto :goto_7
.end method

.method public b(J)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 2004
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "messages:thread:rtf_message::report_as_ok"

    aput-object v2, v1, v7

    .line 2005
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 2004
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2006
    new-instance v1, Lcom/twitter/library/api/dm/requests/ReportDMRequest;

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    sget-object v6, Lcom/twitter/library/api/dm/requests/ReportDMRequest$Type;->c:Lcom/twitter/library/api/dm/requests/ReportDMRequest$Type;

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/api/dm/requests/ReportDMRequest;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcom/twitter/library/api/dm/requests/ReportDMRequest$Type;)V

    const/16 v0, 0xb

    invoke-virtual {p0, v1, v0, v7}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 2008
    return-void
.end method

.method public b(Landroid/net/Uri;Lcom/twitter/android/media/selection/AttachMediaListener;)V
    .locals 1

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->m:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Landroid/net/Uri;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 2707
    return-void
.end method

.method public b(Lcom/twitter/android/media/selection/MediaAttachment;)V
    .locals 2

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0, p1}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a(Lcom/twitter/android/media/selection/MediaAttachment;)Lcom/twitter/android/media/widget/AttachmentMediaView;

    move-result-object v0

    .line 2656
    if-eqz v0, :cond_0

    .line 2657
    new-instance v1, Lcom/twitter/android/cv;

    invoke-direct {v1, p0}, Lcom/twitter/android/cv;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/widget/AttachmentMediaView;->setOnAttachmentActionListener(Lcom/twitter/android/media/widget/f;)V

    .line 2688
    :cond_0
    if-eqz p1, :cond_1

    .line 2689
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->z()V

    .line 2691
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1755
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "messages:thread:::send_dm"

    aput-object v2, v1, v5

    .line 1756
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1757
    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->ac:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->ad:Z

    if-nez v1, :cond_0

    .line 1758
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v1}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 1759
    const-string/jumbo v2, "direct_share"

    iput-object v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 1760
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 1762
    :cond_0
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1763
    iput-boolean v4, p0, Lcom/twitter/android/DMConversationFragment;->ad:Z

    .line 1765
    invoke-direct {p0, v4}, Lcom/twitter/android/DMConversationFragment;->f(Z)V

    .line 1767
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    invoke-virtual {v0}, Lcom/twitter/android/dl;->d()V

    .line 1769
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0}, Lcom/twitter/android/dm/s;->j()V

    .line 1772
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0}, Lcom/twitter/android/dm/s;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0}, Lcom/twitter/android/dm/s;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1794
    :goto_0
    return-void

    .line 1776
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1777
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->N:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1778
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aX()Layj;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/android/metrics/c;->a(Ljava/lang/String;Layj;)Lcom/twitter/android/metrics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/metrics/c;->i()V

    .line 1780
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0, v1}, Lcom/twitter/android/cc;->c(Ljava/lang/String;)V

    .line 1782
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0}, Lcom/twitter/android/dm/s;->l()Lcom/twitter/android/media/selection/MediaAttachment;

    move-result-object v0

    .line 1783
    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    .line 1784
    invoke-virtual {v2}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->getCardUrl()Ljava/lang/String;

    move-result-object v2

    .line 1783
    invoke-direct {p0, v1, p1, v0, v2}, Lcom/twitter/android/DMConversationFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/android/media/selection/MediaAttachment;Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/s;

    move-result-object v1

    .line 1785
    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2, v5}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1786
    iget-wide v2, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    sget-object v1, Lcom/twitter/android/composer/ComposerType;->c:Lcom/twitter/android/composer/ComposerType;

    if-eqz v0, :cond_2

    .line 1787
    invoke-virtual {v0}, Lcom/twitter/android/media/selection/MediaAttachment;->d()Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v0

    .line 1786
    :goto_1
    invoke-static {v2, v3, v1, v0}, Lcom/twitter/android/composer/bk;->a(JLcom/twitter/android/composer/ComposerType;Lcom/twitter/model/drafts/DraftAttachment;)V

    .line 1789
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0}, Lcom/twitter/android/dm/s;->n()V

    .line 1790
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->n()V

    .line 1791
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->R()V

    .line 1792
    iput-boolean v4, p0, Lcom/twitter/android/DMConversationFragment;->B:Z

    .line 1793
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->am()V

    goto :goto_0

    .line 1787
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(I)Z
    .locals 2

    .prologue
    .line 1958
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0, p1}, Lcom/twitter/android/cc;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1959
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/twitter/android/DMConversationFragment;->e(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1960
    :cond_0
    const/4 v0, 0x0

    .line 1968
    :goto_0
    return v0

    .line 1963
    :cond_1
    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->c(Landroid/database/Cursor;)Lcom/twitter/model/dms/l;

    move-result-object v1

    .line 1964
    invoke-virtual {v1}, Lcom/twitter/model/dms/l;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x306

    .line 1965
    :goto_1
    invoke-static {v0, v1, p0}, Lcom/twitter/android/DMTweetDialog;->a(ILcom/twitter/model/dms/l;Lcom/twitter/android/dg;)Lcom/twitter/android/DMTweetDialog;

    move-result-object v0

    .line 1966
    invoke-virtual {v0, p0}, Lcom/twitter/android/DMTweetDialog;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 1967
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 1968
    const/4 v0, 0x1

    goto :goto_0

    .line 1964
    :cond_2
    const/16 v0, 0x305

    goto :goto_1
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 811
    return-void
.end method

.method public c(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2727
    new-instance v0, Lcom/twitter/android/runtimepermissions/b;

    const v1, 0x7f0a03d8

    .line 2728
    invoke-virtual {p0, v1}, Lcom/twitter/android/DMConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/runtimepermissions/b;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v1, "messages:thread:dm_compose_bar:media"

    .line 2730
    invoke-virtual {v0, v1}, Lcom/twitter/android/runtimepermissions/b;->f(Ljava/lang/String;)Lcom/twitter/android/runtimepermissions/b;

    move-result-object v0

    .line 2731
    invoke-virtual {v0, v6}, Lcom/twitter/android/runtimepermissions/b;->a(Z)Lcom/twitter/android/runtimepermissions/b;

    move-result-object v0

    .line 2732
    invoke-virtual {v0}, Lcom/twitter/android/runtimepermissions/b;->a()Landroid/content/Intent;

    move-result-object v0

    .line 2727
    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/DMConversationFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2734
    return-void
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 2471
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/DMConversationFragment;->a(JZ)V

    .line 2472
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->r:Lcom/twitter/android/dm/y;

    invoke-virtual {v0, p1}, Lcom/twitter/android/dm/y;->b(Ljava/lang/String;)V

    .line 2488
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    invoke-virtual {v0}, Lcom/twitter/android/dl;->d()V

    .line 2489
    return-void
.end method

.method public d(J)V
    .locals 1

    .prologue
    .line 2476
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/DMConversationFragment;->g(J)V

    .line 2477
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a:Lcom/twitter/android/widget/PromptDialogFragment;

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a:Lcom/twitter/android/widget/PromptDialogFragment;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PromptDialogFragment;->dismiss()V

    .line 1053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a:Lcom/twitter/android/widget/PromptDialogFragment;

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->J:Lcom/twitter/library/client/bb;

    invoke-virtual {v0}, Lcom/twitter/library/client/bb;->b()V

    .line 1056
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->e()V

    .line 1057
    return-void
.end method

.method l()V
    .locals 4

    .prologue
    .line 954
    new-instance v0, Lcom/twitter/library/api/dm/requests/g;

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/library/api/dm/requests/g;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    .line 956
    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->aj:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    if-eqz v1, :cond_0

    .line 957
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    invoke-virtual {v0, v1}, Lcom/twitter/library/api/dm/requests/g;->a(Lbof;)V

    .line 959
    :cond_0
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 960
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->v:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Lbnx;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->u:Z

    if-nez v0, :cond_1

    .line 1089
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aD()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0}, Lcom/twitter/android/cc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1088
    :goto_0
    return v0

    .line 1089
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0}, Lcom/twitter/android/dm/s;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 22

    .prologue
    .line 618
    invoke-super/range {p0 .. p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 621
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    invoke-virtual {v5}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v19

    .line 622
    if-nez v19, :cond_0

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0297

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 626
    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->ai()V

    .line 782
    :goto_0
    return-void

    .line 641
    :cond_0
    if-eqz p1, :cond_9

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/twitter/android/DMConversationFragment;->H:Z

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->w()Lcom/twitter/android/dm/n;

    move-result-object v5

    .line 644
    invoke-virtual {v5}, Lcom/twitter/android/dm/n;->p()Z

    move-result v6

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/twitter/android/DMConversationFragment;->ac:Z

    .line 645
    invoke-virtual {v5}, Lcom/twitter/android/dm/n;->a()Z

    move-result v6

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/twitter/android/DMConversationFragment;->C:Z

    .line 647
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/twitter/android/DMConversationFragment;->H:Z

    if-eqz v6, :cond_b

    .line 649
    invoke-static/range {p1 .. p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v5}, Lcom/twitter/app/common/list/w;->d(Landroid/os/Bundle;)Lcom/twitter/app/common/list/w;

    move-result-object v16

    .line 650
    const-string/jumbo v5, "conversation_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/twitter/app/common/list/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 651
    const-string/jumbo v5, "title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/twitter/app/common/list/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 652
    const-string/jumbo v5, "subtitle"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/twitter/app/common/list/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 653
    const-string/jumbo v5, "text"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/twitter/app/common/list/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 654
    const-string/jumbo v5, "media_uri"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/twitter/app/common/list/w;->h(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 655
    const-string/jumbo v6, "media_attachment"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/twitter/app/common/list/w;->h(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/media/selection/MediaAttachment;

    .line 656
    const-string/jumbo v7, "has_sent_message"

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v7

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/twitter/android/DMConversationFragment;->ad:Z

    .line 657
    const-string/jumbo v7, "canceled_pending_attachments"

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/twitter/app/common/list/w;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 658
    const/4 v10, 0x0

    .line 659
    const-string/jumbo v7, "quick_emoji_visible"

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v9

    .line 660
    const-string/jumbo v7, "error_dialog"

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v7

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/twitter/android/DMConversationFragment;->i:Z

    .line 661
    new-instance v7, Lcom/twitter/android/dl;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/DMConversationFragment;->f:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    invoke-direct {v7, v0, v1, v2}, Lcom/twitter/android/dl;-><init>(JLcom/twitter/app/common/list/w;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    .line 662
    const-string/jumbo v7, "has_scrolled_to_last_read_marker"

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v7

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/twitter/android/DMConversationFragment;->I:Z

    .line 663
    const-string/jumbo v7, "report_entry_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/twitter/app/common/list/w;->c(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/twitter/android/DMConversationFragment;->c:J

    .line 665
    const-string/jumbo v7, "is_group_convo"

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v7

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/twitter/android/DMConversationFragment;->u:Z

    .line 666
    const-string/jumbo v7, "has_requested_older_messages"

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v7

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/twitter/android/DMConversationFragment;->o:Z

    .line 667
    const-string/jumbo v7, "has_user_scrolled"

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v7

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/twitter/android/DMConversationFragment;->q:Z

    .line 668
    const-string/jumbo v7, "in_flight_message_request_ids"

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/twitter/app/common/list/w;->i(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/twitter/android/DMConversationFragment;->N:Ljava/util/Set;

    .line 669
    const-string/jumbo v7, "read_only"

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v7

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/twitter/android/DMConversationFragment;->v:Z

    .line 670
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/DMConversationFragment;->au:Lcom/twitter/android/dm/ac;

    if-eqz v7, :cond_a

    .line 671
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/DMConversationFragment;->au:Lcom/twitter/android/dm/ac;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/twitter/android/dm/ac;->a(Landroid/os/Bundle;)Z

    move-result v7

    move v8, v7

    .line 676
    :goto_2
    const-string/jumbo v7, "typing_data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/twitter/app/common/list/w;->i(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, [B

    .line 677
    if-eqz v7, :cond_1

    .line 678
    sget-object v16, Lcom/twitter/android/wg;->a:Lcom/twitter/android/wh;

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/twitter/android/wg;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/twitter/android/DMConversationFragment;->an:Lcom/twitter/android/wg;

    :cond_1
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v13

    move-object v7, v15

    move v13, v9

    move-object v5, v12

    move-object v6, v14

    move-object v15, v11

    move v12, v8

    move v14, v10

    .line 714
    :goto_3
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    .line 716
    invoke-static {v7}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 717
    invoke-virtual {v4, v7}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 721
    :goto_4
    invoke-static {v6}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 722
    check-cast v5, Lcom/twitter/app/common/base/TwitterFragmentActivity;

    invoke-virtual {v5, v6}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Ljava/lang/CharSequence;)V

    .line 725
    :cond_2
    invoke-super/range {p0 .. p0}, Lcom/twitter/app/common/list/TwitterListFragment;->c()V

    .line 726
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v5

    .line 727
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v5, v6, v7, v0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 728
    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v5, v6, v7, v0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 729
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/twitter/android/DMConversationFragment;->af:Z

    if-eqz v6, :cond_3

    .line 730
    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v5, v6, v7, v0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 733
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v5

    iget-object v5, v5, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    check-cast v5, Lcom/twitter/library/widget/PageableListView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/twitter/android/DMConversationFragment;->a(Lcom/twitter/library/widget/PageableListView;Landroid/os/Bundle;Lcom/twitter/model/account/UserSettings;)V

    .line 735
    new-instance v5, Lcom/twitter/android/df;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/twitter/android/df;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/twitter/android/DMConversationFragment;->h:Lcom/twitter/android/df;

    .line 736
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/DMConversationFragment;->h:Lcom/twitter/android/df;

    const-string/jumbo v6, "dm_group_avatar_composition"

    sget-object v7, Lcom/twitter/media/model/MediaType;->g:Ljava/util/EnumSet;

    const/4 v8, 0x1

    sget-object v9, Lcom/twitter/android/composer/ComposerType;->c:Lcom/twitter/android/composer/ComposerType;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    const-string/jumbo v11, "group_avatar_fragment_tag"

    invoke-static/range {v4 .. v11}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/media/util/a;Ljava/lang/String;Ljava/util/EnumSet;ILcom/twitter/android/composer/ComposerType;Lcom/twitter/library/client/Session;Ljava/lang/String;)Lcom/twitter/android/media/selection/MediaAttachmentController;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/twitter/android/DMConversationFragment;->g:Lcom/twitter/android/media/selection/MediaAttachmentController;

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f1302da

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    .line 741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->setAssociation(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->setMessageComposerListener(Lcom/twitter/android/dm/widget/f;)V

    .line 743
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/twitter/android/DMConversationFragment;->ak:Z

    if-eqz v4, :cond_4

    .line 744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->setTypingEventProducer(Lcom/twitter/android/dm/at;)V

    .line 747
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/twitter/android/DMConversationFragment;->P:Z

    if-eqz v4, :cond_5

    .line 748
    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->ab()V

    .line 751
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/twitter/android/DMConversationFragment;->v:Z

    if-eqz v4, :cond_6

    .line 752
    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->W()V

    .line 755
    :cond_6
    if-eqz v12, :cond_7

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/cc;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/DMConversationFragment;->au:Lcom/twitter/android/dm/ac;

    invoke-virtual {v5}, Lcom/twitter/android/dm/ac;->a()Lcom/twitter/model/dms/ao;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twitter/android/cc;->a(Lcom/twitter/model/dms/ao;)V

    :cond_7
    move-object/from16 v4, p0

    move-object/from16 v5, v17

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    move v8, v14

    move-object v9, v15

    move v10, v13

    .line 759
    invoke-direct/range {v4 .. v10}, Lcom/twitter/android/DMConversationFragment;->a(Lcom/twitter/android/media/selection/MediaAttachment;Landroid/net/Uri;Ljava/lang/String;ZLjava/util/Collection;Z)V

    .line 762
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/twitter/android/DMConversationFragment;->av:Z

    invoke-static {v4}, Lbnv;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "dm_read_receipts_prompt"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-static {v4, v5, v6, v7}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v4

    .line 765
    invoke-virtual {v4}, Lcom/twitter/android/util/t;->a()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;->a(Landroid/support/v4/app/FragmentManager;Lcom/twitter/android/util/t;)V

    .line 770
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 771
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 772
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    const v6, 0x7f0f049d

    .line 773
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int v4, v5, v4

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/DMConversationFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lcom/twitter/android/db;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Lcom/twitter/android/db;-><init>(Lcom/twitter/android/DMConversationFragment;I)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_0

    .line 641
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 673
    :cond_a
    const/4 v7, 0x0

    move v8, v7

    goto/16 :goto_2

    .line 682
    :cond_b
    invoke-virtual {v5}, Lcom/twitter/android/dm/n;->k()Ljava/lang/String;

    move-result-object v12

    .line 683
    invoke-virtual {v5}, Lcom/twitter/android/dm/n;->m()Ljava/lang/String;

    move-result-object v15

    .line 684
    invoke-virtual {v5}, Lcom/twitter/android/dm/n;->n()Ljava/lang/String;

    move-result-object v14

    .line 685
    invoke-virtual {v5}, Lcom/twitter/android/dm/n;->c()Ljava/lang/String;

    move-result-object v13

    .line 686
    invoke-virtual {v5}, Lcom/twitter/android/dm/n;->l()Landroid/net/Uri;

    move-result-object v10

    .line 687
    const/4 v11, 0x0

    .line 688
    const/4 v9, 0x0

    .line 689
    invoke-virtual {v5}, Lcom/twitter/android/dm/n;->b()Z

    move-result v7

    .line 690
    const/4 v6, 0x0

    .line 691
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/twitter/android/DMConversationFragment;->i:Z

    .line 692
    new-instance v8, Lcom/twitter/android/dl;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/DMConversationFragment;->f:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v8, v0, v1}, Lcom/twitter/android/dl;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    .line 693
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/twitter/android/DMConversationFragment;->ad:Z

    .line 694
    const/4 v8, 0x0

    .line 695
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/DMConversationFragment;->N:Ljava/util/Set;

    .line 697
    invoke-virtual {v5}, Lcom/twitter/android/dm/n;->i()[J

    move-result-object v5

    .line 698
    if-eqz v5, :cond_c

    array-length v0, v5

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/DMConversationFragment;->ab:Lcom/twitter/library/client/bd;

    move-object/from16 v16, v0

    new-instance v17, Lbns;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v1, v12, v5}, Lbns;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;[J)V

    invoke-virtual/range {v16 .. v17}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 704
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/twitter/android/DMConversationFragment;->ac:Z

    if-eqz v5, :cond_d

    .line 705
    new-instance v16, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct/range {v16 .. v16}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 706
    const-string/jumbo v5, "direct_share"

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 707
    new-instance v5, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/DMConversationFragment;->f:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v5, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v20, "messages:thread::external_share:impression"

    aput-object v20, v17, v18

    .line 708
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v5

    check-cast v5, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v5

    .line 707
    invoke-static {v5}, Lbjf;->a(Lbjh;)V

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object v5, v12

    move-object/from16 v18, v13

    move v12, v8

    move v13, v6

    move-object v6, v14

    move v14, v7

    move-object v7, v15

    move-object v15, v9

    .line 709
    goto/16 :goto_3

    .line 710
    :cond_d
    new-instance v5, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/DMConversationFragment;->f:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v5, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "messages:thread:::impression"

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v5

    invoke-static {v5}, Lbjf;->a(Lbjh;)V

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object v5, v12

    move-object/from16 v18, v13

    move v12, v8

    move v13, v6

    move-object v6, v14

    move v14, v7

    move-object v7, v15

    move-object v15, v9

    goto/16 :goto_3

    .line 719
    :cond_e
    const v5, 0x7f0a049e

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    goto/16 :goto_4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 1685
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->g:Lcom/twitter/android/media/selection/MediaAttachmentController;

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->h:Lcom/twitter/android/df;

    .line 1686
    invoke-virtual {v1, p1}, Lcom/twitter/android/df;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->h:Lcom/twitter/android/df;

    .line 1685
    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(IILandroid/content/Intent;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 1689
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/android/dm/s;->a(IILandroid/content/Intent;)V

    .line 1691
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 1692
    if-ne p1, v3, :cond_2

    .line 1693
    const-string/jumbo v0, "user_ids"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 1694
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1695
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1696
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v2

    .line 1697
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->a([J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    move-result-object v0

    .line 1698
    iget-boolean v2, p0, Lcom/twitter/android/DMConversationFragment;->u:Z

    if-eqz v2, :cond_1

    .line 1700
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/twitter/android/DMConversationFragment;->k:Landroid/app/ProgressDialog;

    .line 1701
    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1702
    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1703
    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1704
    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1706
    new-instance v2, Lcom/twitter/library/api/dm/requests/b;

    iget-object v3, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    .line 1707
    invoke-virtual {v0}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/twitter/library/api/dm/requests/b;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/util/Set;)V

    const/16 v0, 0xa

    .line 1706
    invoke-virtual {p0, v2, v0, v5}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1750
    :cond_0
    :goto_0
    return-void

    .line 1711
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->z:[J

    .line 1712
    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->a([J)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1711
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v0

    .line 1713
    new-instance v2, Lcom/twitter/android/dm/o;

    invoke-direct {v2}, Lcom/twitter/android/dm/o;-><init>()V

    .line 1715
    invoke-virtual {v2, v0}, Lcom/twitter/android/dm/o;->a([J)Lcom/twitter/android/dm/o;

    move-result-object v0

    .line 1716
    invoke-virtual {v0}, Lcom/twitter/android/dm/o;->d()Lcom/twitter/android/dm/n;

    move-result-object v0

    .line 1713
    invoke-static {v1, v0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/n;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/DMConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 1719
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->aj()V

    goto :goto_0

    .line 1722
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    if-eqz p3, :cond_4

    .line 1723
    invoke-static {p3}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1724
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0}, Lcom/twitter/android/dm/s;->a()V

    goto :goto_0

    .line 1726
    :cond_3
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ac()V

    goto :goto_0

    .line 1728
    :cond_4
    const/16 v0, 0xe

    if-ne p1, v0, :cond_5

    .line 1729
    invoke-static {p3}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1730
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->X()V

    goto :goto_0

    .line 1731
    :cond_5
    if-ne p1, v4, :cond_7

    .line 1732
    if-eqz p3, :cond_6

    .line 1733
    invoke-static {p3}, Lcom/twitter/android/util/v;->a(Landroid/content/Intent;)Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v0

    .line 1734
    if-eqz v0, :cond_6

    .line 1735
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    new-instance v2, Lcom/twitter/android/media/selection/MediaAttachment;

    invoke-direct {v2, v0}, Lcom/twitter/android/media/selection/MediaAttachment;-><init>(Lcom/twitter/model/drafts/DraftAttachment;)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/dm/s;->a(Lcom/twitter/android/media/selection/MediaAttachment;)V

    .line 1738
    :cond_6
    sget-object v0, Lcom/twitter/android/composer/ComposerType;->c:Lcom/twitter/android/composer/ComposerType;

    invoke-static {v0, p3}, Lcom/twitter/android/util/v;->a(Lcom/twitter/android/composer/ComposerType;Landroid/content/Intent;)V

    goto :goto_0

    .line 1739
    :cond_7
    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    if-eqz p3, :cond_8

    .line 1740
    const-string/jumbo v0, "media_attachment"

    .line 1741
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/selection/MediaAttachment;

    .line 1742
    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v1, v0}, Lcom/twitter/android/dm/s;->a(Lcom/twitter/android/media/selection/MediaAttachment;)V

    goto :goto_0

    .line 1743
    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1744
    invoke-static {p3}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1745
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ak()V

    goto/16 :goto_0

    .line 1747
    :cond_9
    if-ne p1, v4, :cond_0

    .line 1748
    sget-object v0, Lcom/twitter/android/composer/ComposerType;->c:Lcom/twitter/android/composer/ComposerType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/util/v;->a(Lcom/twitter/android/composer/ComposerType;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 395
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 396
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/aj;)V

    .line 397
    invoke-static {}, Lbnv;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->P:Z

    .line 398
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->a_:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/util/v;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->M:Z

    .line 399
    invoke-static {}, Lcom/twitter/android/dm/y;->a()Lcom/twitter/android/dm/y;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->r:Lcom/twitter/android/dm/y;

    .line 400
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const-string/jumbo v2, "messages"

    .line 401
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v2, "thread"

    .line 402
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v2, ""

    .line 403
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 400
    invoke-virtual {p0, v0}, Lcom/twitter/android/DMConversationFragment;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 405
    invoke-static {}, Lbnv;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->af:Z

    .line 406
    invoke-static {}, Lbnv;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->ag:Z

    .line 407
    new-instance v0, Lcom/twitter/android/dd;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/dd;-><init>(Lcom/twitter/android/DMConversationFragment;Lcom/twitter/android/cg;)V

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ah:Lws;

    .line 408
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->ag:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/twitter/library/card/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/twitter/library/card/q;

    invoke-direct {v0}, Lcom/twitter/library/card/q;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->ai:Lcom/twitter/library/card/q;

    .line 410
    invoke-static {}, Lbnv;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->aj:Z

    .line 411
    invoke-static {}, Lbnv;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->ak:Z

    .line 413
    invoke-static {}, Lbnv;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->as:Z

    .line 414
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->at:Landroid/os/Handler;

    .line 416
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    .line 417
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    .line 419
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twitter/model/account/UserSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 422
    :goto_1
    invoke-static {v0}, Lbnv;->a(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->av:Z

    .line 424
    const-wide/16 v4, 0x3e8

    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->av:Z

    if-eqz v0, :cond_2

    const-wide/16 v2, 0xa

    :goto_2
    mul-long/2addr v2, v4

    .line 426
    new-instance v0, Lcom/twitter/library/client/bb;

    new-instance v4, Lcom/twitter/android/cg;

    invoke-direct {v4, p0}, Lcom/twitter/android/cg;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    invoke-direct {v0, v4, v2, v3}, Lcom/twitter/library/client/bb;-><init>(Ljava/lang/Runnable;J)V

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->J:Lcom/twitter/library/client/bb;

    .line 435
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->av:Z

    if-eqz v0, :cond_3

    .line 436
    new-instance v0, Lcom/twitter/android/dm/ac;

    invoke-direct {v0}, Lcom/twitter/android/dm/ac;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DMConversationFragment;->au:Lcom/twitter/android/dm/ac;

    .line 440
    :goto_3
    return-void

    :cond_0
    move-object v0, v1

    .line 408
    goto :goto_0

    .line 420
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 424
    :cond_2
    const-wide/16 v2, 0x1e

    goto :goto_2

    .line 438
    :cond_3
    iput-object v1, p0, Lcom/twitter/android/DMConversationFragment;->au:Lcom/twitter/android/dm/ac;

    goto :goto_3
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1128
    packed-switch p1, :pswitch_data_0

    move-object v0, v6

    .line 1144
    :goto_0
    return-object v0

    .line 1130
    :pswitch_0
    new-instance v0, Lwv;

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lwv;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0

    .line 1133
    :pswitch_1
    new-instance v0, Lww;

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/DMConversationFragment;->aa:J

    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lww;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0

    .line 1136
    :pswitch_2
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/provider/cv;->a:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    .line 1137
    invoke-static {v2, v4, v5}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/library/provider/cv;->b:[Ljava/lang/String;

    const-string/jumbo v4, "card_conversation_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->at:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1062
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/android/client/y;->b(Lcom/twitter/android/client/aj;)V

    .line 1063
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/dm/av;

    .line 1064
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/DMConversationFragment;->e:Lcom/twitter/library/client/Session;

    iget-object v5, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    new-instance v0, Lcom/twitter/model/dms/cw;

    invoke-direct {v0}, Lcom/twitter/model/dms/cw;-><init>()V

    iget-object v6, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    .line 1066
    invoke-virtual {v6}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->getMessageText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/twitter/model/dms/cw;->a(Ljava/lang/String;)Lcom/twitter/model/dms/cw;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Lcom/twitter/model/dms/cw;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cu;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/twitter/android/dm/av;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Lcom/twitter/model/dms/cu;)V

    .line 1063
    invoke-virtual {v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 1068
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->onDestroy()V

    .line 1069
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 204
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/DMConversationFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1367
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 1158
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1161
    const-string/jumbo v0, "media_uri"

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v1}, Lcom/twitter/android/dm/s;->h()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1162
    const-string/jumbo v0, "media_attachment"

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v1}, Lcom/twitter/android/dm/s;->l()Lcom/twitter/android/media/selection/MediaAttachment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1163
    const-string/jumbo v0, "canceled_pending_attachments"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    .line 1164
    invoke-virtual {v2}, Lcom/twitter/android/dm/s;->e()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1163
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1166
    const-string/jumbo v0, "text"

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v1}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->getMessageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string/jumbo v0, "error_dialog"

    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1168
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const-string/jumbo v0, "is_group_convo"

    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1170
    const-string/jumbo v0, "has_sent_message"

    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->ad:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1171
    const-string/jumbo v0, "read_only"

    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->v:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1172
    const-string/jumbo v0, "report_entry_id"

    iget-wide v2, p0, Lcom/twitter/android/DMConversationFragment;->c:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1173
    const-string/jumbo v0, "quick_emoji_visible"

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->j:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v1}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->w()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1174
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    invoke-virtual {v0, p1}, Lcom/twitter/android/dl;->a(Landroid/os/Bundle;)V

    .line 1175
    const-string/jumbo v0, "has_scrolled_to_last_read_marker"

    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->I:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1176
    const-string/jumbo v0, "has_requested_older_messages"

    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->o:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1177
    const-string/jumbo v0, "has_user_scrolled"

    iget-boolean v1, p0, Lcom/twitter/android/DMConversationFragment;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1178
    const-string/jumbo v0, "in_flight_message_request_ids"

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->N:Ljava/util/Set;

    .line 1179
    invoke-static {v1}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Set;)Ljava/io/Serializable;

    move-result-object v1

    .line 1178
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1180
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    if-eqz v0, :cond_0

    .line 1181
    const-string/jumbo v0, "typing_data"

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->am:Lcom/twitter/android/wc;

    .line 1182
    invoke-virtual {v1}, Lcom/twitter/android/wc;->d()Lcom/twitter/android/wg;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/wg;->a:Lcom/twitter/android/wh;

    invoke-static {v1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v1

    .line 1181
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1186
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/base/TwitterFragmentActivity;

    .line 1188
    invoke-virtual {v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1189
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1190
    const-string/jumbo v2, "title"

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->J()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1194
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1195
    const-string/jumbo v1, "subtitle"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->au:Lcom/twitter/android/dm/ac;

    if-eqz v0, :cond_3

    .line 1199
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->au:Lcom/twitter/android/dm/ac;

    invoke-virtual {v0}, Lcom/twitter/android/dm/ac;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1202
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    invoke-virtual {v0}, Lcom/twitter/android/cc;->f()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1203
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1073
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->onStart()V

    .line 1074
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->F()V

    .line 1075
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1079
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->M()V

    .line 1080
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->onStop()V

    .line 1081
    return-void
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->w()Lcom/twitter/android/dm/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->w()Lcom/twitter/android/dm/n;

    move-result-object v0

    return-object v0
.end method

.method public s()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1808
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages:thread:dm_compose_bar:found_media:click"

    aput-object v3, v1, v2

    .line 1809
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1808
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1810
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->l:Lcom/twitter/android/dm/s;

    invoke-virtual {v0, v4}, Lcom/twitter/android/dm/s;->a(Z)V

    .line 1811
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, Lcom/twitter/android/composer/ComposerType;->c:Lcom/twitter/android/composer/ComposerType;

    invoke-static {v0, v1, v2}, Lcom/twitter/android/util/v;->a(Landroid/app/Activity;ILcom/twitter/android/composer/ComposerType;)V

    .line 1812
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 1816
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1817
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/DMConversationFragment;->c(Z)V

    .line 1819
    :cond_0
    return-void
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 1856
    iget-boolean v0, p0, Lcom/twitter/android/DMConversationFragment;->B:Z

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 2399
    const/4 v0, 0x4

    return v0
.end method

.method protected v_()Landroid/support/v4/content/Loader;
    .locals 8
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
    const/4 v4, 0x0

    .line 1119
    sget-object v0, Lcom/twitter/library/provider/cu;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/android/DMConversationFragment;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1120
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v6, p0, Lcom/twitter/android/DMConversationFragment;->f:J

    .line 1121
    invoke-static {v2, v6, v7}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lbnt;->b:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    return-object v0
.end method

.method public w()Lcom/twitter/android/dm/n;
    .locals 1

    .prologue
    .line 2405
    invoke-virtual {p0}, Lcom/twitter/android/DMConversationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/dm/n;->b(Landroid/os/Bundle;)Lcom/twitter/android/dm/n;

    move-result-object v0

    return-object v0
.end method

.method public x()V
    .locals 1

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->r:Lcom/twitter/android/dm/y;

    invoke-virtual {v0}, Lcom/twitter/android/dm/y;->b()V

    .line 2482
    invoke-direct {p0}, Lcom/twitter/android/DMConversationFragment;->aj()V

    .line 2483
    return-void
.end method

.method public y()V
    .locals 1

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/twitter/android/DMConversationFragment;->G:Lcom/twitter/android/dl;

    invoke-virtual {v0}, Lcom/twitter/android/dl;->d()V

    .line 2494
    return-void
.end method
