.class public Lcom/twitter/android/timeline/v;
.super Lcom/twitter/library/client/ad;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/android/timeline/v;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/twitter/android/timeline/v;->a:Lcom/twitter/android/timeline/v;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/twitter/android/timeline/v;->b:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static declared-synchronized a()Lcom/twitter/android/timeline/v;
    .locals 3

    .prologue
    .line 38
    const-class v1, Lcom/twitter/android/timeline/v;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/android/timeline/v;->a:Lcom/twitter/android/timeline/v;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Instance has not been set"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 41
    :cond_0
    :try_start_1
    sget-object v0, Lcom/twitter/android/timeline/v;->a:Lcom/twitter/android/timeline/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static a(Lcom/twitter/android/timeline/v;)V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/twitter/android/timeline/v;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 46
    sput-object p0, Lcom/twitter/android/timeline/v;->a:Lcom/twitter/android/timeline/v;

    .line 47
    return-void
.end method

.method private static a(Lcom/twitter/library/client/l;)V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "home_jump_to_top_permitted"

    .line 111
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 113
    return-void
.end method

.method private d(Lcom/twitter/library/client/Session;)Lcom/twitter/library/client/l;
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lcom/twitter/library/client/l;

    iget-object v1, p0, Lcom/twitter/android/timeline/v;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 99
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/v;->d(Lcom/twitter/library/client/Session;)Lcom/twitter/library/client/l;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-static {v0}, Lcom/twitter/android/timeline/v;->a(Lcom/twitter/library/client/l;)V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;J)V
    .locals 4

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 53
    invoke-static {v0, v1}, Lcaz;->b(J)F

    move-result v0

    .line 54
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-ltz v1, :cond_0

    .line 55
    long-to-float v1, p2

    const v2, 0x476a6000    # 60000.0f

    mul-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    .line 56
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/v;->d(Lcom/twitter/library/client/Session;)Lcom/twitter/library/client/l;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "home_jump_to_top_permitted"

    const/4 v2, 0x1

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 64
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/client/Session;Z)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/v;->e(Lcom/twitter/library/client/Session;)V

    .line 70
    return-void
.end method

.method public a_(Lcom/twitter/library/client/Session;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 86
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/v;->d(Lcom/twitter/library/client/Session;)Lcom/twitter/library/client/l;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    const-string/jumbo v2, "home_jump_to_top_permitted"

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-static {v1}, Lcom/twitter/android/timeline/v;->a(Lcom/twitter/library/client/l;)V

    .line 89
    const/4 v0, 0x1

    .line 91
    :cond_0
    return v0
.end method
