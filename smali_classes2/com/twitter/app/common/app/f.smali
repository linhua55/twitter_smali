.class final Lcom/twitter/app/common/app/f;
.super Lcom/twitter/app/common/app/n;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/app/common/app/c;

.field private final b:Lcom/twitter/app/common/app/internal/ah;

.field private c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/account/UserIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/provider/dm;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/database/schema/TwitterSchema;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/provider/s;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/database/schema/DraftsSchema;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lbbo;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/database/lru/schema/LruSchema;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/database/lru/s;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/database/lru/ad;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/database/lru/ah;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lbbq;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Ltu;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Ltv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/twitter/app/common/app/c;Lcom/twitter/app/common/app/internal/ah;)V
    .locals 1

    .prologue
    .line 488
    iput-object p1, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-direct {p0}, Lcom/twitter/app/common/app/n;-><init>()V

    .line 489
    invoke-static {p2}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/app/internal/ah;

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->b:Lcom/twitter/app/common/app/internal/ah;

    .line 490
    invoke-direct {p0}, Lcom/twitter/app/common/app/f;->y()V

    .line 491
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/app/common/app/c;Lcom/twitter/app/common/app/internal/ah;Lcom/twitter/app/common/app/d;)V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0, p1, p2}, Lcom/twitter/app/common/app/f;-><init>(Lcom/twitter/app/common/app/c;Lcom/twitter/app/common/app/internal/ah;)V

    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->b:Lcom/twitter/app/common/app/internal/ah;

    .line 497
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/ap;->a(Lcom/twitter/app/common/app/internal/ao;)Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->c:Lden;

    .line 499
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->c:Lden;

    iget-object v1, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    .line 503
    invoke-static {v1}, Lcom/twitter/app/common/app/c;->n(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v1

    .line 501
    invoke-static {v0, v1}, Lcom/twitter/app/common/app/internal/ai;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 500
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->d:Lden;

    .line 505
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    .line 508
    invoke-static {v0}, Lcom/twitter/app/common/app/c;->f(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/common/app/f;->c:Lden;

    .line 507
    invoke-static {v0, v1}, Lcom/twitter/app/common/app/internal/ae;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 506
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->e:Lden;

    .line 511
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->e:Lden;

    .line 513
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/af;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 512
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->f:Lden;

    .line 516
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    .line 519
    invoke-static {v0}, Lcom/twitter/app/common/app/c;->f(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/common/app/f;->c:Lden;

    .line 518
    invoke-static {v0, v1}, Lcom/twitter/app/common/app/internal/aa;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 517
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->g:Lden;

    .line 522
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->g:Lden;

    .line 524
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/ab;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 523
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->h:Lden;

    .line 527
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    .line 530
    invoke-static {v0}, Lcom/twitter/app/common/app/c;->f(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/common/app/f;->c:Lden;

    .line 529
    invoke-static {v0, v1}, Lcom/twitter/app/common/app/internal/ac;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 528
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->i:Lden;

    .line 533
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->i:Lden;

    .line 535
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/ad;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 534
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->j:Lden;

    .line 538
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->j:Lden;

    .line 540
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/al;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 539
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->k:Lden;

    .line 543
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->j:Lden;

    .line 544
    invoke-static {v0}, Lcom/twitter/database/lru/ag;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->l:Lden;

    .line 546
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->k:Lden;

    iget-object v1, p0, Lcom/twitter/app/common/app/f;->l:Lden;

    .line 548
    invoke-static {v0, v1}, Lcom/twitter/app/common/app/internal/an;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 547
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->m:Lden;

    .line 551
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->m:Lden;

    .line 553
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/am;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 552
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->n:Lden;

    .line 556
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    .line 560
    invoke-static {v0}, Lcom/twitter/app/common/app/c;->f(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/common/app/f;->d:Lden;

    .line 559
    invoke-static {v0, v1}, Lcom/twitter/app/common/app/internal/t;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 557
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->o:Lden;

    .line 563
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->o:Lden;

    .line 566
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/u;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 564
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/f;->p:Lden;

    .line 567
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/account/UserIdentifier;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->c:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/UserIdentifier;

    return-object v0
.end method

.method public b()Landroid/app/Application;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->e(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->f(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public d()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->g(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public e()Lcom/twitter/app/common/util/c;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->h(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/c;

    return-object v0
.end method

.method public f()Lcom/twitter/app/common/util/f;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->i(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/f;

    return-object v0
.end method

.method public g()Lcom/twitter/app/common/util/n;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->j(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/n;

    return-object v0
.end method

.method public h()Lcom/twitter/app/common/util/r;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->k(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/r;

    return-object v0
.end method

.method public i()Lcom/twitter/app/common/account/d;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->l(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/d;

    return-object v0
.end method

.method public j()Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->m(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method

.method public k()Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->d:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/Session;

    return-object v0
.end method

.method public l()Lddi;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->a(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddi;

    return-object v0
.end method

.method public m()Lcom/twitter/platform/PlatformContext;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->b(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/platform/PlatformContext;

    return-object v0
.end method

.method public n()Lcom/twitter/platform/u;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->c(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/platform/u;

    return-object v0
.end method

.method public o()Lcom/twitter/config/AppConfig;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->d(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/config/AppConfig;

    return-object v0
.end method

.method public p()Lcom/twitter/library/client/bk;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->n(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bk;

    return-object v0
.end method

.method public q()Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->o(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method public r()Lcom/twitter/library/provider/dm;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->e:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/provider/dm;

    return-object v0
.end method

.method public s()Lcom/twitter/database/schema/TwitterSchema;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->f:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/schema/TwitterSchema;

    return-object v0
.end method

.method public t()Lcom/twitter/database/schema/DraftsSchema;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->h:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/schema/DraftsSchema;

    return-object v0
.end method

.method public u()Lbbq;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->n:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbq;

    return-object v0
.end method

.method public v()Ltv;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/twitter/app/common/app/f;->p:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv;

    return-object v0
.end method
