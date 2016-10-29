.class public Lbix;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Lbiu;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbiw;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbiy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lbiu;

    invoke-direct {v0}, Lbiu;-><init>()V

    sput-object v0, Lbix;->a:Lbiu;

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lbix;->b:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lbix;->c:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a()Lbiu;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lbix;->a:Lbiu;

    return-object v0
.end method

.method public static a(Lbiv;)V
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lbix;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lbiv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lbix;->a(Lbiv;Z)V

    .line 63
    sget-object v0, Lbix;->a:Lbiu;

    invoke-virtual {v0}, Lbiu;->e()Ljava/util/Map;

    move-result-object v1

    .line 64
    sget-object v0, Lbix;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiw;

    .line 65
    invoke-interface {v0, p0, v1}, Lbiw;->a(Lbiv;Ljava/util/Map;)V

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method private static a(Lbiv;Z)V
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lbix;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiy;

    .line 101
    invoke-interface {v0, p0, p1}, Lbiy;->a(Lbiv;Z)V

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public static a(Lbiw;)V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lbix;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 40
    sget-object v0, Lbix;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public static a(Lbiy;)V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lbix;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lbjc;->a(Ljava/lang/Throwable;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lbiv;

    invoke-direct {v0, p0}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 90
    :cond_0
    return-void
.end method

.method public static declared-synchronized b(Lbiv;)V
    .locals 4

    .prologue
    .line 72
    const-class v1, Lbix;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbix;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lbiv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lbix;->a(Lbiv;Z)V

    .line 75
    sget-object v0, Lbix;->a:Lbiu;

    invoke-virtual {v0}, Lbiu;->e()Ljava/util/Map;

    move-result-object v2

    .line 76
    sget-object v0, Lbix;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiw;

    .line 77
    invoke-interface {v0, p0, v2}, Lbiw;->b(Lbiv;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 81
    :cond_0
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized b(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 93
    const-class v1, Lbix;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lbjc;->a(Ljava/lang/Throwable;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lbiv;

    invoke-direct {v0, p0}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lbix;->b(Lbiv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit v1

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lbix;->a:Lbiu;

    invoke-virtual {v0}, Lbiu;->c()Z

    move-result v0

    return v0
.end method
