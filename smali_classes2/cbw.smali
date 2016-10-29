.class public Lcbw;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcbw;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcbw;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcbw;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/bd;->a(Ljava/lang/String;Z)V

    .line 33
    sget-object v0, Lcbw;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;JLjava/lang/String;Lazh;)V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Layj;->b()Layj;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "fs:load:fetched_manifest"

    sget-object v2, Laxz;->m:Laye;

    invoke-static {v1, v0, p1, p2, v2}, Layp;->a(Ljava/lang/String;Layj;JLaye;)Layp;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Layp;->i()V

    .line 52
    const-string/jumbo v1, "fs:fetch:fetch_not_load"

    sget-object v2, Laxz;->m:Laye;

    invoke-static {v1, v0, p1, p2, v2}, Layp;->a(Ljava/lang/String;Layj;JLaye;)Layp;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Layp;->i()V

    .line 55
    invoke-virtual {p4}, Lazh;->b()V

    .line 57
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 58
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/api/s;

    invoke-direct {v2, p0, v0, p3}, Lcom/twitter/library/api/s;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    const-string/jumbo v0, "Users never trigger FS fetches."

    .line 60
    invoke-virtual {v2, v0}, Lcom/twitter/library/api/s;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v0

    new-instance v2, Lcbx;

    invoke-direct {v2, p1, p2}, Lcbx;-><init>(J)V

    .line 58
    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    move-result-object v0

    .line 87
    sget-object v1, Lcbw;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 5

    .prologue
    .line 39
    const-class v1, Lcbw;

    monitor-enter v1

    .line 40
    :try_start_0
    invoke-static {p1, p2}, Lazf;->c(J)Lazh;

    move-result-object v0

    .line 41
    if-nez p4, :cond_0

    invoke-virtual {v0}, Lazh;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string/jumbo v2, "Server_FCP"

    const-string/jumbo v3, "Fetching feature switches from server"

    invoke-static {v2, v3}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p0, p1, p2, p3, v0}, Lcbw;->a(Landroid/content/Context;JLjava/lang/String;Lazh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit v1

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
