.class Lcom/twitter/android/periscope/af;
.super Ltv/periscope/android/api/PublicApiManager;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/client/bd;


# direct methods
.method constructor <init>(Landroid/content/Context;Lde/greenrobot/event/c;Ltv/periscope/android/data/b;Ltv/periscope/android/session/a;Ljava/util/concurrent/Executor;)V
    .locals 8

    .prologue
    .line 32
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    invoke-static {p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 32
    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/periscope/af;-><init>(Landroid/content/Context;Lde/greenrobot/event/c;Ltv/periscope/android/data/b;Ltv/periscope/android/session/a;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/twitter/library/client/bd;)V

    .line 34
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lde/greenrobot/event/c;Ltv/periscope/android/data/b;Ltv/periscope/android/session/a;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/twitter/library/client/bd;)V
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p5, v0}, Ltv/periscope/android/api/PublicApiManager;-><init>(Landroid/content/Context;Lde/greenrobot/event/c;Ljava/util/concurrent/Executor;Z)V

    .line 41
    iput-object p7, p0, Lcom/twitter/android/periscope/af;->a:Lcom/twitter/library/client/bd;

    .line 43
    new-instance v0, Lcom/twitter/android/periscope/l;

    move-object v1, p6

    move-object v2, p7

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/periscope/l;-><init>(Landroid/os/Handler;Lcom/twitter/library/client/bd;Ltv/periscope/android/data/b;Ltv/periscope/android/session/a;Lde/greenrobot/event/c;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/periscope/af;->registerApiEventHandler(Ltv/periscope/android/api/ApiEventHandler;)V

    .line 45
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method protected execute(Ltv/periscope/android/api/ApiRunnable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/periscope/af;->a:Lcom/twitter/library/client/bd;

    new-instance v1, Lcom/twitter/android/periscope/b;

    invoke-direct {v1, p1}, Lcom/twitter/android/periscope/b;-><init>(Ltv/periscope/android/api/ApiRunnable;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
