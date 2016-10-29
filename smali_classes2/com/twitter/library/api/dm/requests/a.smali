.class abstract Lcom/twitter/library/api/dm/requests/a;
.super Lcom/twitter/library/api/dm/requests/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/api/dm/requests/d",
        "<",
        "Lcom/twitter/library/api/t;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/twitter/internal/network/HttpOperation$RequestMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private g:Z

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/library/api/dm/requests/a;->a:Ljava/util/Map;

    .line 37
    sget-object v0, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/api/dm/requests/a;->b:Ljava/util/Collection;

    .line 39
    const/16 v0, 0x191

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x1f7

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 39
    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/api/dm/requests/a;->c:Ljava/util/Collection;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V
    .locals 9

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/library/api/dm/requests/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 51
    new-instance v0, Lcom/twitter/library/service/m;

    const/4 v1, 0x6

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x78

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/twitter/library/api/dm/requests/a;->b:Ljava/util/Collection;

    sget-object v8, Lcom/twitter/library/api/dm/requests/a;->c:Ljava/util/Collection;

    invoke-direct/range {v0 .. v8}, Lcom/twitter/library/service/m;-><init>(IJJLjava/util/concurrent/TimeUnit;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/api/dm/requests/a;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/api/dm/requests/a;->g:Z

    .line 54
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V
    .locals 3

    .prologue
    .line 94
    sget-object v1, Lcom/twitter/library/api/dm/requests/a;->a:Ljava/util/Map;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/twitter/library/api/dm/requests/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 30
    check-cast p3, Lcom/twitter/library/api/t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/api/dm/requests/a;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/service/e;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 102
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/a;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 103
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "dm"

    aput-object v2, v1, v4

    const-string/jumbo v2, "conversation"

    aput-object v2, v1, v3

    .line 104
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->b([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "send_error_codes"

    .line 105
    invoke-virtual {v0, v1, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_0

    .line 108
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Lcom/twitter/library/service/e;->b([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    .line 110
    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "mark_read"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v2, "last_read_event_id"

    iget-wide v4, p0, Lcom/twitter/library/api/dm/requests/a;->h:J

    .line 111
    invoke-virtual {v1, v2, v4, v5}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v2, "request_id"

    .line 112
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 113
    return-object v0
.end method

.method protected b(Lcom/twitter/library/service/aa;)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/a;->S()Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/a;->g()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {v0, v3}, Lcom/twitter/library/provider/dm;->c(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/library/api/dm/requests/a;->h:J

    .line 62
    iget-boolean v4, p0, Lcom/twitter/library/api/dm/requests/a;->g:Z

    if-eqz v4, :cond_1

    .line 64
    iput-boolean v1, p0, Lcom/twitter/library/api/dm/requests/a;->g:Z

    .line 66
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Lcom/twitter/library/provider/dm;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    invoke-virtual {p1, v2}, Lcom/twitter/library/service/aa;->a(Z)V

    move v0, v1

    .line 88
    :goto_0
    return v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/a;->T()Lcom/twitter/library/provider/b;

    move-result-object v4

    .line 74
    iget-wide v6, p0, Lcom/twitter/library/api/dm/requests/a;->h:J

    invoke-virtual {v0, v3, v6, v7, v4}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;JLcom/twitter/library/provider/b;)V

    .line 75
    invoke-virtual {v4}, Lcom/twitter/library/provider/b;->a()V

    .line 78
    :cond_1
    sget-object v4, Lcom/twitter/library/api/dm/requests/a;->a:Ljava/util/Map;

    monitor-enter v4

    .line 79
    :try_start_0
    sget-object v0, Lcom/twitter/library/api/dm/requests/a;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 80
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/twitter/library/api/dm/requests/a;->h:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_2

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/twitter/library/service/aa;->a(Z)V

    .line 83
    monitor-exit v4

    move v0, v1

    goto :goto_0

    .line 85
    :cond_2
    sget-object v0, Lcom/twitter/library/api/dm/requests/a;->a:Ljava/util/Map;

    iget-wide v6, p0, Lcom/twitter/library/api/dm/requests/a;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    monitor-exit v4

    move v0, v2

    .line 88
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected e()Lcom/twitter/library/api/t;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/a;->e()Lcom/twitter/library/api/t;

    move-result-object v0

    return-object v0
.end method

.method abstract g()Ljava/lang/String;
.end method
