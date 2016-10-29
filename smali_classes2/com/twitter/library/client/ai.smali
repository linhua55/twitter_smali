.class public Lcom/twitter/library/client/ai;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/library/client/ai;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/twitter/library/client/bk;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/twitter/library/client/ai;->b:Landroid/content/Context;

    .line 39
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/ai;->c:Lcom/twitter/library/client/bk;

    .line 40
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/library/client/ai;
    .locals 3

    .prologue
    .line 31
    const-class v1, Lcom/twitter/library/client/ai;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/library/client/ai;->a:Lcom/twitter/library/client/ai;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/twitter/library/client/ai;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/library/client/ai;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/library/client/ai;->a:Lcom/twitter/library/client/ai;

    .line 34
    :cond_0
    sget-object v0, Lcom/twitter/library/client/ai;->a:Lcom/twitter/library/client/ai;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;JLjava/lang/String;)Lcom/twitter/library/client/l;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/twitter/library/client/l;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    return-object v0
.end method

.method public a()V
    .locals 6

    .prologue
    .line 44
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 45
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/twitter/library/client/l;

    iget-object v2, p0, Lcom/twitter/library/client/ai;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    const-string/jumbo v3, "decider"

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 48
    const-string/jumbo v2, "cache_dirty"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    new-instance v2, Lcom/twitter/library/provider/b;

    iget-object v3, p0, Lcom/twitter/library/client/ai;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    .line 50
    iget-object v3, p0, Lcom/twitter/library/client/ai;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/twitter/library/provider/dm;->b(Lcom/twitter/library/provider/b;)V

    .line 51
    invoke-virtual {v2}, Lcom/twitter/library/provider/b;->a()V

    .line 52
    iget-object v2, p0, Lcom/twitter/library/client/ai;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/twitter/library/scribe/ScribeDatabaseHelper;->a(Landroid/content/Context;J)Lcom/twitter/library/scribe/ScribeDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/scribe/ScribeDatabaseHelper;->d()V

    .line 53
    invoke-virtual {v1}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "cache_dirty"

    .line 54
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 57
    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 63
    iget-object v0, p0, Lcom/twitter/library/client/ai;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/library/client/ai;->c:Lcom/twitter/library/client/bk;

    .line 65
    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    const-string/jumbo v1, "decider"

    .line 63
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/twitter/library/client/ai;->a(Landroid/content/Context;JLjava/lang/String;)Lcom/twitter/library/client/l;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "cache_version"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/client/l;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 72
    const-string/jumbo v2, "cache_version"

    .line 73
    invoke-static {v2, v4}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v2

    .line 74
    if-eq v1, v4, :cond_1

    .line 75
    if-ge v1, v2, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "cache_version"

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;I)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "cache_dirty"

    const/4 v2, 0x1

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/library/client/ai;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/v;->a(Landroid/content/Context;)Lcom/twitter/library/client/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/v;->a()V

    .line 89
    return-void

    .line 83
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "cache_version"

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;I)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    goto :goto_0
.end method
