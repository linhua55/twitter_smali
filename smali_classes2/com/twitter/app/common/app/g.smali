.class final Lcom/twitter/app/common/app/g;
.super Lcom/twitter/app/common/app/o;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/app/common/app/c;

.field private final b:Lcom/twitter/app/common/app/internal/ao;

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


# direct methods
.method private constructor <init>(Lcom/twitter/app/common/app/c;Lcom/twitter/app/common/app/internal/ao;)V
    .locals 1

    .prologue
    .line 369
    iput-object p1, p0, Lcom/twitter/app/common/app/g;->a:Lcom/twitter/app/common/app/c;

    invoke-direct {p0}, Lcom/twitter/app/common/app/o;-><init>()V

    .line 370
    invoke-static {p2}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/app/internal/ao;

    iput-object v0, p0, Lcom/twitter/app/common/app/g;->b:Lcom/twitter/app/common/app/internal/ao;

    .line 371
    invoke-direct {p0}, Lcom/twitter/app/common/app/g;->k()V

    .line 372
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/app/common/app/c;Lcom/twitter/app/common/app/internal/ao;Lcom/twitter/app/common/app/d;)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0, p1, p2}, Lcom/twitter/app/common/app/g;-><init>(Lcom/twitter/app/common/app/c;Lcom/twitter/app/common/app/internal/ao;)V

    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->b:Lcom/twitter/app/common/app/internal/ao;

    .line 378
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/ap;->a(Lcom/twitter/app/common/app/internal/ao;)Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/g;->c:Lden;

    .line 379
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/account/UserIdentifier;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->c:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/UserIdentifier;

    return-object v0
.end method

.method public b()Landroid/app/Application;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->a:Lcom/twitter/app/common/app/c;

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
    .line 408
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->a:Lcom/twitter/app/common/app/c;

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
    .line 418
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->a:Lcom/twitter/app/common/app/c;

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
    .line 423
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->a:Lcom/twitter/app/common/app/c;

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
    .line 428
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->a:Lcom/twitter/app/common/app/c;

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
    .line 433
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->a:Lcom/twitter/app/common/app/c;

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
    .line 438
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->a:Lcom/twitter/app/common/app/c;

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
    .line 443
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->a:Lcom/twitter/app/common/app/c;

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
    .line 448
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->m(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method

.method public l()Lddi;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->a:Lcom/twitter/app/common/app/c;

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
    .line 388
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->a:Lcom/twitter/app/common/app/c;

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
    .line 393
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->a:Lcom/twitter/app/common/app/c;

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
    .line 398
    iget-object v0, p0, Lcom/twitter/app/common/app/g;->a:Lcom/twitter/app/common/app/c;

    invoke-static {v0}, Lcom/twitter/app/common/app/c;->d(Lcom/twitter/app/common/app/c;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/config/AppConfig;

    return-object v0
.end method
