.class abstract Lcom/twitter/library/media/manager/ai;
.super Lcom/twitter/internal/android/service/AsyncOperation;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<REQ:",
        "Lcom/twitter/media/request/g;",
        "RES:",
        "Ljava/lang/Object;",
        "RESP:",
        "Lcom/twitter/media/request/ResourceResponse",
        "<TREQ;TRES;>;>",
        "Lcom/twitter/internal/android/service/AsyncOperation",
        "<",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Lcom/twitter/media/request/ResourceResponse$ResourceSource;",
        "TRES;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/library/media/manager/t",
            "<TREQ;TRES;TRESP;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/library/media/manager/o;

.field private final c:Lcom/twitter/media/request/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQ;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/library/media/manager/t;Lcom/twitter/media/request/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/media/manager/t",
            "<TREQ;TRES;TRESP;>;TREQ;)V"
        }
    .end annotation

    .prologue
    .line 949
    const-class v0, Lcom/twitter/library/media/manager/ai;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/internal/android/service/AsyncOperation;-><init>(Ljava/lang/String;)V

    .line 950
    iput-object p2, p0, Lcom/twitter/library/media/manager/ai;->c:Lcom/twitter/media/request/g;

    .line 951
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/media/manager/ai;->a:Ljava/lang/ref/WeakReference;

    .line 952
    new-instance v0, Lcom/twitter/library/media/manager/o;

    const-string/jumbo v1, "process_blocking"

    invoke-direct {v0, v1}, Lcom/twitter/library/media/manager/o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/library/media/manager/ai;->b:Lcom/twitter/library/media/manager/o;

    .line 954
    iget-object v0, p0, Lcom/twitter/library/media/manager/ai;->b:Lcom/twitter/library/media/manager/o;

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/o;->i()V

    .line 956
    sget-object v0, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->d:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    invoke-virtual {p0, v0}, Lcom/twitter/library/media/manager/ai;->a(Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)V

    .line 957
    return-void
.end method


# virtual methods
.method protected a()Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lcom/twitter/media/request/ResourceResponse$ResourceSource;",
            "TRES;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 961
    iget-object v0, p0, Lcom/twitter/library/media/manager/ai;->b:Lcom/twitter/library/media/manager/o;

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/o;->j()V

    .line 962
    iget-object v0, p0, Lcom/twitter/library/media/manager/ai;->b:Lcom/twitter/library/media/manager/o;

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/o;->f()V

    .line 963
    new-instance v5, Lcom/twitter/library/media/manager/o;

    const-string/jumbo v0, "process_runtime"

    invoke-direct {v5, v0}, Lcom/twitter/library/media/manager/o;-><init>(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v5}, Lcom/twitter/library/media/manager/o;->i()V

    .line 967
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 968
    iget-object v6, p0, Lcom/twitter/library/media/manager/ai;->c:Lcom/twitter/media/request/g;

    .line 970
    sget-object v4, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->a:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    .line 971
    const/4 v1, 0x0

    .line 972
    iget-object v0, p0, Lcom/twitter/library/media/manager/ai;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/t;

    .line 973
    if-eqz v0, :cond_5

    .line 975
    :try_start_0
    invoke-virtual {v0, v6}, Lcom/twitter/library/media/manager/t;->e(Lcom/twitter/media/request/g;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 976
    if-eqz v3, :cond_1

    .line 977
    :try_start_1
    sget-object v2, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->b:Lcom/twitter/media/request/ResourceResponse$ResourceSource;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    :goto_0
    move-object v4, v2

    .line 1003
    :cond_0
    :goto_1
    invoke-virtual {v5}, Lcom/twitter/library/media/manager/o;->j()V

    .line 1004
    invoke-virtual {v5}, Lcom/twitter/library/media/manager/o;->f()V

    .line 1006
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 979
    :cond_1
    :try_start_2
    invoke-virtual {v0, v6}, Lcom/twitter/library/media/manager/t;->c(Lcom/twitter/media/request/g;)Landroid/util/Pair;

    move-result-object v2

    .line 980
    if-eqz v2, :cond_4

    .line 981
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    .line 982
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    .line 983
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 984
    :try_start_3
    sget-object v7, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->c:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    if-ne v2, v7, :cond_3

    .line 985
    invoke-virtual {v0, v6, v1}, Lcom/twitter/library/media/manager/t;->a(Lcom/twitter/media/request/g;Ljava/io/File;)Ljava/lang/Object;

    move-result-object v3

    .line 987
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 988
    if-eqz v3, :cond_4

    .line 989
    :try_start_4
    sget-object v1, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->c:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    if-eq v2, v1, :cond_2

    .line 990
    invoke-virtual {v0, v6, v3}, Lcom/twitter/library/media/manager/t;->a(Lcom/twitter/media/request/g;Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    move-object v0, v3

    .line 992
    goto :goto_0

    .line 986
    :cond_3
    :try_start_5
    invoke-virtual {v0, v6, v1}, Lcom/twitter/library/media/manager/t;->b(Lcom/twitter/media/request/g;Ljava/io/File;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 987
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 996
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    .line 997
    :goto_3
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/ai;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 998
    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 996
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3

    :cond_4
    move-object v0, v3

    move-object v2, v4

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method protected b()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lcom/twitter/media/request/ResourceResponse$ResourceSource;",
            "TRES;>;"
        }
    .end annotation

    .prologue
    .line 1011
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/ai;->b()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/ai;->a()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
