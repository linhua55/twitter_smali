.class Lcom/twitter/library/network/livepipeline/StreamManager;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field protected a:Lcom/twitter/library/network/livepipeline/aa;

.field private final b:Lrx/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/r",
            "<",
            "Lcom/twitter/model/livepipeline/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/library/client/bd;

.field private final d:Landroid/content/Context;

.field private e:Lcom/twitter/library/network/livepipeline/StreamManager$Status;


# direct methods
.method private constructor <init>(Lrx/r;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/r",
            "<",
            "Lcom/twitter/model/livepipeline/e;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->a:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->e:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    .line 44
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->b:Lrx/r;

    .line 45
    invoke-static {p2}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->c:Lcom/twitter/library/client/bd;

    .line 46
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->d:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/network/livepipeline/StreamManager;Lcom/twitter/library/network/livepipeline/StreamManager$Status;)Lcom/twitter/library/network/livepipeline/StreamManager$Status;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->e:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    return-object p1
.end method

.method static a(Lrx/r;Landroid/content/Context;)Lcom/twitter/library/network/livepipeline/StreamManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/r",
            "<",
            "Lcom/twitter/model/livepipeline/e;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/twitter/library/network/livepipeline/StreamManager;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/twitter/library/network/livepipeline/StreamManager;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/network/livepipeline/StreamManager;-><init>(Lrx/r;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/library/network/livepipeline/StreamManager$Status;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->e:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    return-object v0
.end method

.method public a(Ljava/util/Set;Lcom/twitter/internal/android/service/c;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twitter/internal/android/service/c",
            "<",
            "Landroid/os/Bundle;",
            "Lcom/twitter/internal/android/service/AsyncOperation",
            "<",
            "Landroid/os/Bundle;",
            "Lcom/twitter/library/service/aa;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/StreamManager;->a()Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->a:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    if-eq v0, v1, :cond_0

    .line 57
    monitor-exit p0

    .line 85
    :goto_0
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->b:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->e:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    .line 61
    new-instance v0, Lcom/twitter/library/network/livepipeline/aj;

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->b:Lrx/r;

    iget-object v3, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->d:Landroid/content/Context;

    move-object v1, p0

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/network/livepipeline/aj;-><init>(Lcom/twitter/library/network/livepipeline/StreamManager;Lrx/r;Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->a:Lcom/twitter/library/network/livepipeline/aa;

    .line 75
    if-eqz p2, :cond_1

    .line 76
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->a:Lcom/twitter/library/network/livepipeline/aa;

    invoke-virtual {v0, p2}, Lcom/twitter/library/network/livepipeline/aa;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 79
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->a:Lcom/twitter/library/network/livepipeline/aa;

    invoke-virtual {v2, v0}, Lcom/twitter/library/network/livepipeline/aa;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 83
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->c:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->a:Lcom/twitter/library/network/livepipeline/aa;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 84
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->a:Lcom/twitter/library/network/livepipeline/aa;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->a:Lcom/twitter/library/network/livepipeline/aa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/network/livepipeline/aa;->cancel(Z)Z

    .line 97
    :cond_0
    sget-object v0, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->a:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->e:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/StreamManager;->a:Lcom/twitter/library/network/livepipeline/aa;

    .line 99
    monitor-exit p0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
