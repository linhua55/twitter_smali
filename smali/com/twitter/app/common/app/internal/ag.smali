.class public Lcom/twitter/app/common/app/internal/ag;
.super Lcom/twitter/app/common/app/internal/o;
.source "Twttr"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/twitter/app/common/app/internal/o;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/twitter/app/common/app/internal/ag;->a:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected a()Laup;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/twitter/android/initialization/s;

    iget-boolean v1, p0, Lcom/twitter/app/common/app/internal/ag;->a:Z

    invoke-direct {v0, v1}, Lcom/twitter/android/initialization/s;-><init>(Z)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/twitter/platform/u;)Lauq;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lauq;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, v1, v2, p2}, Lauq;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/twitter/platform/u;)V

    return-object v0
.end method

.method protected b()Laut;
    .locals 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/twitter/app/common/app/internal/ag;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/twitter/android/initialization/t;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lcom/twitter/android/initialization/t;-><init>(Ljava/util/concurrent/Executor;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
