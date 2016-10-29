.class public Lcom/twitter/library/metrics/k;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static a:Laxz;

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Lcom/twitter/library/metrics/k;


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    const-string/jumbo v0, "api:foreground:::rxbytes"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "api:background:::rxbytes"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "api::scribe::size"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/metrics/k;->b:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-static {p1}, Layj;->a(Landroid/content/Context;)V

    .line 137
    invoke-static {}, Layj;->b()Layj;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/twitter/util/w;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Layj;->b(Z)V

    .line 147
    :cond_0
    new-instance v1, Lcom/twitter/library/metrics/p;

    invoke-direct {v1, p1}, Lcom/twitter/library/metrics/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Layj;->a(Layl;)V

    .line 148
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/twitter/library/metrics/k;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/twitter/library/metrics/k;->c:Lcom/twitter/library/metrics/k;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Lcom/twitter/library/metrics/k;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/twitter/library/metrics/k;->c:Lcom/twitter/library/metrics/k;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/twitter/library/metrics/k;

    invoke-direct {v0, p0}, Lcom/twitter/library/metrics/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/library/metrics/k;->c:Lcom/twitter/library/metrics/k;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Lcom/twitter/library/metrics/k;->c:Lcom/twitter/library/metrics/k;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Layj;J)V
    .locals 8

    .prologue
    const/4 v5, 0x3

    .line 119
    const-string/jumbo v0, "api:background:::rxbytes"

    sget-object v4, Laxz;->n:Laye;

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Laxu;->a(Ljava/lang/String;Layj;JLaye;I)Laxu;

    move-result-object v6

    .line 121
    invoke-virtual {v6}, Laxu;->i()V

    .line 122
    const-string/jumbo v0, "api:foreground:::rxbytes"

    sget-object v4, Laxz;->n:Laye;

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Laxu;->a(Ljava/lang/String;Layj;JLaye;I)Laxu;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Laxu;->i()V

    .line 125
    invoke-static {}, Lcom/twitter/library/network/b;->a()Lcom/twitter/library/network/b;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/metrics/m;

    invoke-direct {v2, p0, v0, v6}, Lcom/twitter/library/metrics/m;-><init>(Lcom/twitter/library/metrics/k;Laxu;Laxu;)V

    invoke-virtual {v1, v2}, Lcom/twitter/library/network/b;->a(Lcom/twitter/util/y;)Z

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/metrics/k;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/twitter/library/metrics/k;->c()V

    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    .line 161
    invoke-static {}, Layg;->a()Layi;

    move-result-object v6

    .line 162
    new-instance v0, Layi;

    iget v1, v6, Layi;->a:I

    const-string/jumbo v2, "perftown_low_priority_sampling_rate"

    iget v3, v6, Layi;->b:I

    .line 164
    invoke-static {v2, v3}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "perftown_high_priority_sampling_rate"

    iget v4, v6, Layi;->c:I

    .line 166
    invoke-static {v3, v4}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "metrics_periodic_reporting_interval_short"

    iget v5, v6, Layi;->d:I

    .line 168
    invoke-static {v4, v5}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "metrics_periodic_reporting_interval_regular"

    iget v7, v6, Layi;->e:I

    .line 170
    invoke-static {v5, v7}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v7, "metrics_periodic_reporting_interval_long"

    iget v6, v6, Layi;->f:I

    .line 172
    invoke-static {v7, v6}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Layi;-><init>(IIIIII)V

    .line 162
    invoke-static {v0}, Layg;->a(Layi;)V

    .line 174
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lcom/twitter/library/metrics/k;->d:Z

    if-eqz v0, :cond_0

    .line 75
    monitor-exit p0

    .line 115
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/metrics/k;->d:Z

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {}, Layj;->b()Layj;

    move-result-object v1

    .line 81
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 85
    invoke-static {}, Lcom/twitter/config/AppConfig;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/library/metrics/k;->a(Layj;J)V

    .line 89
    :cond_1
    const-string/jumbo v0, "api::scribe::size"

    const-wide/16 v2, 0x0

    sget-object v4, Laxz;->n:Laye;

    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Laxu;->a(Ljava/lang/String;Layj;JLaye;I)Laxu;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Laxu;->i()V

    .line 92
    invoke-static {v0}, Lcom/twitter/library/scribe/ScribeService;->a(Laxu;)V

    .line 94
    const-string/jumbo v0, "fs:first_download_req"

    sget-object v2, Laxz;->m:Laye;

    invoke-static {v0, v1, v2}, Layp;->a(Ljava/lang/String;Layj;Laye;)Layp;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Layp;->i()V

    .line 98
    invoke-static {v1}, Lcom/twitter/library/metrics/g;->a(Layj;)V

    .line 100
    invoke-static {}, Lcom/twitter/app/common/util/f;->a()Lcom/twitter/app/common/util/f;

    move-result-object v0

    new-instance v2, Lcom/twitter/library/metrics/l;

    invoke-direct {v2, p0, v1}, Lcom/twitter/library/metrics/l;-><init>(Lcom/twitter/library/metrics/k;Layj;)V

    invoke-virtual {v0, v2}, Lcom/twitter/app/common/util/f;->a(Lcom/twitter/app/common/util/h;)V

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/twitter/library/metrics/k;->c()V

    .line 152
    new-instance v0, Lcom/twitter/library/metrics/n;

    invoke-direct {v0, p0}, Lcom/twitter/library/metrics/n;-><init>(Lcom/twitter/library/metrics/k;)V

    invoke-static {v0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 158
    return-void
.end method
