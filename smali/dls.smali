.class public final Ldls;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ldls;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lrx/t;

.field private final b:Lrx/t;

.field private final c:Lrx/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ldls;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ldlm;->a()Ldlm;

    move-result-object v0

    invoke-virtual {v0}, Ldlm;->f()Ldlp;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ldlp;->d()Lrx/t;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    iput-object v1, p0, Ldls;->a:Lrx/t;

    .line 66
    :goto_0
    invoke-virtual {v0}, Ldlp;->e()Lrx/t;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    iput-object v1, p0, Ldls;->b:Lrx/t;

    .line 73
    :goto_1
    invoke-virtual {v0}, Ldlp;->f()Lrx/t;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    iput-object v0, p0, Ldls;->c:Lrx/t;

    .line 79
    :goto_2
    return-void

    .line 63
    :cond_0
    invoke-static {}, Ldlp;->a()Lrx/t;

    move-result-object v1

    iput-object v1, p0, Ldls;->a:Lrx/t;

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Ldlp;->b()Lrx/t;

    move-result-object v1

    iput-object v1, p0, Ldls;->b:Lrx/t;

    goto :goto_1

    .line 77
    :cond_2
    invoke-static {}, Ldlp;->c()Lrx/t;

    move-result-object v0

    iput-object v0, p0, Ldls;->c:Lrx/t;

    goto :goto_2
.end method

.method public static a()Lrx/t;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lrx/internal/schedulers/s;->b:Lrx/internal/schedulers/s;

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Executor;)Lrx/t;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lrx/internal/schedulers/n;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/n;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static b()Lrx/t;
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Ldls;->f()Ldls;

    move-result-object v0

    iget-object v0, v0, Ldls;->c:Lrx/t;

    return-object v0
.end method

.method public static c()Lrx/t;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Ldls;->f()Ldls;

    move-result-object v0

    iget-object v0, v0, Ldls;->a:Lrx/t;

    return-object v0
.end method

.method public static d()Lrx/t;
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Ldls;->f()Ldls;

    move-result-object v0

    iget-object v0, v0, Ldls;->b:Lrx/t;

    return-object v0
.end method

.method private static f()Ldls;
    .locals 3

    .prologue
    .line 43
    :goto_0
    sget-object v0, Ldls;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldls;

    .line 44
    if-eqz v0, :cond_1

    .line 49
    :cond_0
    return-object v0

    .line 47
    :cond_1
    new-instance v0, Ldls;

    invoke-direct {v0}, Ldls;-><init>()V

    .line 48
    sget-object v1, Ldls;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {v0}, Ldls;->e()V

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized e()V
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldls;->a:Lrx/t;

    instance-of v0, v0, Lrx/internal/schedulers/y;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Ldls;->a:Lrx/t;

    check-cast v0, Lrx/internal/schedulers/y;

    invoke-interface {v0}, Lrx/internal/schedulers/y;->d()V

    .line 233
    :cond_0
    iget-object v0, p0, Ldls;->b:Lrx/t;

    instance-of v0, v0, Lrx/internal/schedulers/y;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Ldls;->b:Lrx/t;

    check-cast v0, Lrx/internal/schedulers/y;

    invoke-interface {v0}, Lrx/internal/schedulers/y;->d()V

    .line 236
    :cond_1
    iget-object v0, p0, Ldls;->c:Lrx/t;

    instance-of v0, v0, Lrx/internal/schedulers/y;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Ldls;->c:Lrx/t;

    check-cast v0, Lrx/internal/schedulers/y;

    invoke-interface {v0}, Lrx/internal/schedulers/y;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_2
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
