.class public Lcom/twitter/library/metrics/g;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/library/metrics/g;


# instance fields
.field private b:Z

.field private c:Laxs;

.field private d:Laym;

.field private e:Laxs;

.field private f:Laym;

.field private g:Laxs;

.field private h:Laym;

.field private i:Laxs;

.field private j:Laym;

.field private k:Laxs;

.field private l:Laym;


# direct methods
.method private constructor <init>(Layj;)V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string/jumbo v0, "app::::oome_count"

    sget-object v1, Laxz;->n:Laye;

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Lcea;->a(Layj;Ljava/lang/String;Laye;I)Lcea;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcea;->i()V

    .line 68
    new-instance v1, Lcom/twitter/library/metrics/h;

    invoke-direct {v1, p0, v0}, Lcom/twitter/library/metrics/h;-><init>(Lcom/twitter/library/metrics/g;Lcea;)V

    invoke-static {v1}, Lbjc;->a(Lbje;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/twitter/library/metrics/g;->b(Layj;)V

    .line 76
    return-void
.end method

.method public static a()Lcom/twitter/library/metrics/g;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/twitter/library/metrics/g;->a:Lcom/twitter/library/metrics/g;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MediaMetrics.initialize() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    sget-object v0, Lcom/twitter/library/metrics/g;->a:Lcom/twitter/library/metrics/g;

    return-object v0
.end method

.method public static a(Layj;)V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/twitter/library/metrics/g;->a:Lcom/twitter/library/metrics/g;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/twitter/library/metrics/g;

    invoke-direct {v0, p0}, Lcom/twitter/library/metrics/g;-><init>(Layj;)V

    sput-object v0, Lcom/twitter/library/metrics/g;->a:Lcom/twitter/library/metrics/g;

    .line 62
    :cond_0
    return-void
.end method

.method private b(Layj;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 79
    sget-object v0, Laxz;->m:Laye;

    invoke-static {v0, p1}, Laza;->a(Laye;Layj;)Laza;

    move-result-object v0

    invoke-virtual {v0}, Laza;->i()V

    .line 81
    const-string/jumbo v0, "memory_metric_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/metrics/g;->b:Z

    .line 83
    sget-object v0, Laxz;->n:Laye;

    .line 86
    const-string/jumbo v1, "app::dalvik:heap:avg"

    invoke-static {v1, v0, p1, v2, v3}, Laxs;->a(Ljava/lang/String;Laye;Layj;ZI)Laxs;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/metrics/g;->c:Laxs;

    .line 88
    iget-object v1, p0, Lcom/twitter/library/metrics/g;->c:Laxs;

    invoke-virtual {v1}, Laxs;->i()V

    .line 89
    const-string/jumbo v1, "app::dalvik:heap:peak"

    invoke-static {v1, v0, p1, v2, v3}, Laym;->a(Ljava/lang/String;Laye;Layj;ZI)Laym;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/metrics/g;->d:Laym;

    .line 91
    iget-object v1, p0, Lcom/twitter/library/metrics/g;->d:Laym;

    invoke-virtual {v1}, Laym;->i()V

    .line 92
    const-string/jumbo v1, "app::dalvik:heap_allocated:avg"

    invoke-static {v1, v0, p1, v2, v3}, Laxs;->a(Ljava/lang/String;Laye;Layj;ZI)Laxs;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/metrics/g;->e:Laxs;

    .line 94
    iget-object v1, p0, Lcom/twitter/library/metrics/g;->e:Laxs;

    invoke-virtual {v1}, Laxs;->i()V

    .line 95
    const-string/jumbo v1, "app::dalvik:heap_allocated:peak"

    invoke-static {v1, v0, p1, v2, v3}, Laym;->a(Ljava/lang/String;Laye;Layj;ZI)Laym;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/metrics/g;->f:Laym;

    .line 97
    iget-object v1, p0, Lcom/twitter/library/metrics/g;->f:Laym;

    invoke-virtual {v1}, Laym;->i()V

    .line 98
    const-string/jumbo v1, "app::dalvik:heap_ratio:avg"

    invoke-static {v1, v0, p1, v2, v3}, Laxs;->a(Ljava/lang/String;Laye;Layj;ZI)Laxs;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/metrics/g;->g:Laxs;

    .line 100
    iget-object v1, p0, Lcom/twitter/library/metrics/g;->g:Laxs;

    invoke-virtual {v1}, Laxs;->i()V

    .line 101
    const-string/jumbo v1, "app::dalvik:heap_ratio:peak"

    invoke-static {v1, v0, p1, v2, v3}, Laym;->a(Ljava/lang/String;Laye;Layj;ZI)Laym;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/metrics/g;->h:Laym;

    .line 103
    iget-object v1, p0, Lcom/twitter/library/metrics/g;->h:Laym;

    invoke-virtual {v1}, Laym;->i()V

    .line 104
    const-string/jumbo v1, "app::native:heap:avg"

    invoke-static {v1, v0, p1, v2, v3}, Laxs;->a(Ljava/lang/String;Laye;Layj;ZI)Laxs;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/metrics/g;->i:Laxs;

    .line 106
    iget-object v1, p0, Lcom/twitter/library/metrics/g;->i:Laxs;

    invoke-virtual {v1}, Laxs;->i()V

    .line 107
    const-string/jumbo v1, "app::native:heap:peak"

    invoke-static {v1, v0, p1, v2, v3}, Laym;->a(Ljava/lang/String;Laye;Layj;ZI)Laym;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/metrics/g;->j:Laym;

    .line 109
    iget-object v1, p0, Lcom/twitter/library/metrics/g;->j:Laym;

    invoke-virtual {v1}, Laym;->i()V

    .line 110
    const-string/jumbo v1, "app::native:heap_allocated:avg"

    invoke-static {v1, v0, p1, v2, v3}, Laxs;->a(Ljava/lang/String;Laye;Layj;ZI)Laxs;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/metrics/g;->k:Laxs;

    .line 112
    iget-object v1, p0, Lcom/twitter/library/metrics/g;->k:Laxs;

    invoke-virtual {v1}, Laxs;->i()V

    .line 113
    const-string/jumbo v1, "app::native:heap_allocated:peak"

    invoke-static {v1, v0, p1, v2, v3}, Laym;->a(Ljava/lang/String;Laye;Layj;ZI)Laym;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/metrics/g;->l:Laym;

    .line 115
    iget-object v0, p0, Lcom/twitter/library/metrics/g;->l:Laym;

    invoke-virtual {v0}, Laym;->i()V

    .line 117
    :cond_1
    return-void
.end method


# virtual methods
.method public b()V
    .locals 8

    .prologue
    .line 120
    sget-object v0, Laxz;->l:Laye;

    invoke-static {}, Layj;->b()Layj;

    move-result-object v1

    invoke-static {v0, v1}, Laza;->a(Laye;Layj;)Laza;

    move-result-object v0

    invoke-virtual {v0}, Laza;->f()V

    .line 121
    const-string/jumbo v0, "memory_metric_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/library/metrics/g;->b:Z

    if-nez v0, :cond_1

    .line 123
    invoke-static {}, Layj;->b()Layj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/library/metrics/g;->b(Layj;)V

    .line 126
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 128
    iget-object v1, p0, Lcom/twitter/library/metrics/g;->c:Laxs;

    invoke-virtual {v1, v2, v3}, Laxs;->a(J)V

    .line 129
    iget-object v1, p0, Lcom/twitter/library/metrics/g;->d:Laym;

    invoke-virtual {v1, v2, v3}, Laym;->a(J)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 132
    iget-object v1, p0, Lcom/twitter/library/metrics/g;->e:Laxs;

    invoke-virtual {v1, v4, v5}, Laxs;->a(J)V

    .line 133
    iget-object v1, p0, Lcom/twitter/library/metrics/g;->f:Laym;

    invoke-virtual {v1, v4, v5}, Laym;->a(J)V

    .line 135
    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    div-long v0, v2, v0

    .line 136
    iget-object v2, p0, Lcom/twitter/library/metrics/g;->g:Laxs;

    invoke-virtual {v2, v0, v1}, Laxs;->a(J)V

    .line 137
    iget-object v2, p0, Lcom/twitter/library/metrics/g;->h:Laym;

    invoke-virtual {v2, v0, v1}, Laym;->a(J)V

    .line 139
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v0

    .line 140
    iget-object v2, p0, Lcom/twitter/library/metrics/g;->i:Laxs;

    invoke-virtual {v2, v0, v1}, Laxs;->a(J)V

    .line 141
    iget-object v2, p0, Lcom/twitter/library/metrics/g;->j:Laym;

    invoke-virtual {v2, v0, v1}, Laym;->a(J)V

    .line 143
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v0

    .line 144
    iget-object v2, p0, Lcom/twitter/library/metrics/g;->k:Laxs;

    invoke-virtual {v2, v0, v1}, Laxs;->a(J)V

    .line 145
    iget-object v2, p0, Lcom/twitter/library/metrics/g;->l:Laym;

    invoke-virtual {v2, v0, v1}, Laym;->a(J)V

    .line 147
    :cond_2
    return-void
.end method
