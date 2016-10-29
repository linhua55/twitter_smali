.class public Lvz;
.super Lvv;
.source "Twttr"


# instance fields
.field a:Ljava/util/List;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/twitter/library/service/aa;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/library/service/aa;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lvv;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lvz;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lvz;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lvz;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Lcom/twitter/android/client/tweetuploadmanager/c;)Z
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/twitter/android/client/tweetuploadmanager/c;->i()Lcom/twitter/model/core/cs;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/twitter/android/client/tweetuploadmanager/c;)Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method private static d(Lcom/twitter/android/client/tweetuploadmanager/c;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/client/tweetuploadmanager/c;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/av/o;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 135
    invoke-virtual {p0}, Lcom/twitter/android/client/tweetuploadmanager/c;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/upload/am;

    .line 136
    invoke-virtual {v0}, Lcom/twitter/library/api/upload/am;->c()J

    move-result-wide v4

    .line 137
    invoke-virtual {v0}, Lcom/twitter/library/api/upload/am;->g()Lcom/twitter/model/av/o;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/client/tweetuploadmanager/c;Lcom/twitter/util/y;)Lcom/twitter/util/concurrent/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/client/tweetuploadmanager/c;",
            "Lcom/twitter/util/y",
            "<",
            "Lbqy;",
            ">;)",
            "Lcom/twitter/util/concurrent/j",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/library/service/aa;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/twitter/android/client/tweetuploadmanager/c;->e()Landroid/content/Context;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/twitter/android/client/tweetuploadmanager/c;->l()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 70
    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v2

    new-instance v3, Lbmq;

    invoke-direct {v3, v0, v1}, Lbmq;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 69
    invoke-virtual {p0, p1, p2, v2, v3}, Lvz;->a(Lcom/twitter/android/client/tweetuploadmanager/c;Lcom/twitter/util/y;Lcom/twitter/library/client/bd;Lbmq;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/android/client/tweetuploadmanager/c;Lcom/twitter/util/y;Lcom/twitter/library/client/bd;Lbmq;)Lcom/twitter/util/concurrent/j;
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/client/tweetuploadmanager/c;",
            "Lcom/twitter/util/y",
            "<",
            "Lbqy;",
            ">;",
            "Lcom/twitter/library/client/bd;",
            "Lbmq;",
            ")",
            "Lcom/twitter/util/concurrent/j",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/library/service/aa;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 79
    .line 80
    invoke-static {p1}, Lvz;->d(Lcom/twitter/android/client/tweetuploadmanager/c;)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/concurrent/ObservablePromise;->a(Ljava/lang/Object;)Lcom/twitter/util/concurrent/ObservablePromise;

    move-result-object v5

    .line 127
    :goto_0
    return-object v5

    .line 86
    :cond_0
    new-instance v1, Lwa;

    invoke-direct {v1, p0}, Lwa;-><init>(Lvz;)V

    invoke-static {v0, v1}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;Lczn;)Ljava/util/List;

    move-result-object v4

    .line 95
    new-instance v5, Lcom/twitter/util/concurrent/ObservablePromise;

    invoke-direct {v5}, Lcom/twitter/util/concurrent/ObservablePromise;-><init>()V

    .line 97
    iget-object v6, p0, Lvz;->c:Ljava/lang/Object;

    monitor-enter v6

    .line 98
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lvz;->a:Ljava/util/List;

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lvz;->b:Ljava/util/Map;

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ac;

    .line 102
    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 103
    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/o;

    .line 106
    invoke-virtual {p4, v2, v3, v0}, Lbmq;->a(JLcom/twitter/model/av/o;)Lbmp;

    move-result-object v8

    .line 108
    new-instance v0, Lwb;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lwb;-><init>(Lvz;JLjava/util/List;Lcom/twitter/util/concurrent/ObservablePromise;)V

    invoke-virtual {p3, v8, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lvz;->a:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/client/tweetuploadmanager/c;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 49
    .line 51
    iget-object v4, p0, Lvz;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 52
    :try_start_0
    iget-object v0, p0, Lvz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 53
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    monitor-exit v4

    .line 59
    if-nez v2, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
