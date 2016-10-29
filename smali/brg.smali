.class public final Lbrg;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/client/l;


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/twitter/library/client/l;

    invoke-direct {v0, p1, p2, p3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lbrg;->a:Lcom/twitter/library/client/l;

    .line 57
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/Session;Z)Lbrb;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/library/service/ab;

    invoke-direct {v0, p1}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    invoke-static {p0, v0, p2}, Lbrg;->a(Landroid/content/Context;Lcom/twitter/library/service/ab;Z)Lbrb;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/twitter/library/service/ab;Z)Lbrb;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 43
    const-class v1, Lbrg;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "sync_blocked_users_enabled"

    invoke-static {v2}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/twitter/library/service/ab;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 47
    :cond_1
    :try_start_1
    new-instance v2, Lbrg;

    iget-wide v4, p1, Lcom/twitter/library/service/ab;->c:J

    invoke-direct {v2, p0, v4, v5}, Lbrg;-><init>(Landroid/content/Context;J)V

    .line 48
    invoke-direct {v2, p2}, Lbrg;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    new-instance v0, Lbrb;

    invoke-direct {v0, p0, p1, v2}, Lbrb;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lbrg;)V

    const-string/jumbo v2, "This is a sync request which was not triggered by a user action."

    invoke-virtual {v0, v2}, Lbrb;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v0

    check-cast v0, Lbrb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lbrg;->a:Lcom/twitter/library/client/l;

    const-string/jumbo v1, "block_sync_aggressive"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private b(Z)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 80
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Lbrg;->a()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 81
    invoke-direct {p0}, Lbrg;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    .line 82
    :goto_0
    if-eqz p1, :cond_3

    .line 83
    const-wide/32 v6, 0xdbba00

    int-to-long v2, v2

    div-long v2, v6, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 85
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 81
    goto :goto_0

    :cond_2
    move v0, v1

    .line 83
    goto :goto_1

    .line 85
    :cond_3
    const-wide/32 v6, 0x124f80

    int-to-long v2, v2

    div-long v2, v6, v2

    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method a()J
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lbrg;->a:Lcom/twitter/library/client/l;

    const-string/jumbo v1, "block_sync_last_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/client/l;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lbrg;->a(Z)V

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(J)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lbrg;->a:Lcom/twitter/library/client/l;

    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "block_sync_last_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 65
    return-void
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lbrg;->a:Lcom/twitter/library/client/l;

    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "block_sync_aggressive"

    invoke-virtual {v0, v1, p1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 69
    return-void
.end method
