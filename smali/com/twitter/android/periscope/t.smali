.class public Lcom/twitter/android/periscope/t;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/library/d;


# static fields
.field private static volatile a:Lcom/twitter/android/periscope/t;


# instance fields
.field private final b:Lde/greenrobot/event/c;

.field private final c:Ltv/periscope/android/data/b;

.field private final d:Ltv/periscope/android/data/f;

.field private final e:Ltv/periscope/android/session/a;

.field private final f:Ljava/util/concurrent/ScheduledExecutorService;

.field private final g:Ltv/periscope/android/api/ApiManager;

.field private final h:Lcom/twitter/android/periscope/ag;

.field private final i:Lcom/twitter/android/periscope/h;

.field private final j:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    invoke-static {}, Lde/greenrobot/event/c;->b()Lde/greenrobot/event/g;

    move-result-object v1

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/g;->a(Z)Lde/greenrobot/event/g;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/event/g;->a()Lde/greenrobot/event/c;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/periscope/t;->b:Lde/greenrobot/event/c;

    .line 65
    new-instance v1, Lcom/twitter/android/periscope/f;

    invoke-direct {v1}, Lcom/twitter/android/periscope/f;-><init>()V

    iput-object v1, p0, Lcom/twitter/android/periscope/t;->c:Ltv/periscope/android/data/b;

    .line 66
    new-instance v1, Lcom/twitter/android/periscope/ah;

    invoke-direct {v1}, Lcom/twitter/android/periscope/ah;-><init>()V

    iput-object v1, p0, Lcom/twitter/android/periscope/t;->d:Ltv/periscope/android/data/f;

    .line 67
    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/periscope/t;->j:Landroid/content/SharedPreferences;

    .line 68
    new-instance v1, Ltv/periscope/android/session/b;

    iget-object v2, p0, Lcom/twitter/android/periscope/t;->j:Landroid/content/SharedPreferences;

    invoke-direct {v1, v2}, Ltv/periscope/android/session/b;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/twitter/android/periscope/t;->e:Ltv/periscope/android/session/a;

    .line 69
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/periscope/t;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 70
    new-instance v1, Lcom/twitter/android/periscope/o;

    invoke-direct {v1, v0, p0}, Lcom/twitter/android/periscope/o;-><init>(Landroid/content/Context;Ltv/periscope/android/library/d;)V

    iput-object v1, p0, Lcom/twitter/android/periscope/t;->g:Ltv/periscope/android/api/ApiManager;

    .line 71
    new-instance v1, Lcom/twitter/android/periscope/ag;

    invoke-direct {v1}, Lcom/twitter/android/periscope/ag;-><init>()V

    iput-object v1, p0, Lcom/twitter/android/periscope/t;->h:Lcom/twitter/android/periscope/ag;

    .line 72
    new-instance v1, Lcom/twitter/android/periscope/h;

    invoke-static {v0}, Lcom/twitter/library/media/manager/l;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/twitter/android/periscope/h;-><init>(Lcom/twitter/library/media/manager/l;)V

    iput-object v1, p0, Lcom/twitter/android/periscope/t;->i:Lcom/twitter/android/periscope/h;

    .line 73
    return-void
.end method

.method public static a()Lcom/twitter/android/periscope/t;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/twitter/android/periscope/t;->a:Lcom/twitter/android/periscope/t;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/twitter/android/periscope/t;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/twitter/android/periscope/t;->a:Lcom/twitter/android/periscope/t;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lcom/twitter/android/periscope/t;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/twitter/android/periscope/t;->a:Lcom/twitter/android/periscope/t;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/twitter/android/periscope/t;

    invoke-direct {v0, p0}, Lcom/twitter/android/periscope/t;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/android/periscope/t;->a:Lcom/twitter/android/periscope/t;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/twitter/android/periscope/t;->a:Lcom/twitter/android/periscope/t;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public d()Lretrofit/RestAdapter$LogLevel;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    return-object v0
.end method

.method public e()Lde/greenrobot/event/c;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/twitter/android/periscope/t;->b:Lde/greenrobot/event/c;

    return-object v0
.end method

.method public f()Ltv/periscope/android/api/ApiManager;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/android/periscope/t;->g:Ltv/periscope/android/api/ApiManager;

    return-object v0
.end method

.method public g()Ltv/periscope/android/data/f;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/twitter/android/periscope/t;->d:Ltv/periscope/android/data/f;

    return-object v0
.end method

.method public h()Ltv/periscope/android/data/b;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitter/android/periscope/t;->c:Ltv/periscope/android/data/b;

    return-object v0
.end method

.method public i()Ltv/periscope/android/session/a;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/twitter/android/periscope/t;->e:Ltv/periscope/android/session/a;

    return-object v0
.end method

.method public j()Ldmy;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/twitter/android/periscope/t;->h:Lcom/twitter/android/periscope/ag;

    return-object v0
.end method

.method public k()Lcom/twitter/android/periscope/h;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/twitter/android/periscope/t;->i:Lcom/twitter/android/periscope/h;

    return-object v0
.end method

.method public l()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/twitter/android/periscope/t;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public synthetic m()Ldmy;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/twitter/android/periscope/t;->k()Lcom/twitter/android/periscope/h;

    move-result-object v0

    return-object v0
.end method
