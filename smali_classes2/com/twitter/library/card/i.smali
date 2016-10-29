.class Lcom/twitter/library/card/i;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/card/a;
.implements Lcom/twitter/library/client/bf;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/net/Uri;

.field private final d:Lcom/twitter/library/card/b;

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/twitter/library/service/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/twitter/library/card/i;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/card/b;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/twitter/library/card/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/library/card/i;-><init>(Landroid/content/Context;Lcom/twitter/library/card/b;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/card/b;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/card/i;->b:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/twitter/library/card/i;->c:Landroid/net/Uri;

    .line 60
    iput-object p2, p0, Lcom/twitter/library/card/i;->d:Lcom/twitter/library/card/b;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/card/i;->e:Ljava/util/HashMap;

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/card/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/library/card/i;-><init>(Landroid/content/Context;Lcom/twitter/library/card/b;Landroid/net/Uri;)V

    .line 50
    return-void
.end method

.method private a(JLjava/lang/String;Lcom/twitter/library/card/c;Lcom/twitter/internal/network/HttpOperation$RequestMethod;)I
    .locals 9

    .prologue
    .line 101
    sget-object v0, Lcom/twitter/library/card/i;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    .line 102
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/card/i;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/twitter/library/card/p;->a(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 103
    iget-object v1, p0, Lcom/twitter/library/card/i;->b:Landroid/content/Context;

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/library/card/i;->a(Landroid/content/Context;JLcom/twitter/library/card/c;Landroid/net/Uri;Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/card/j;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/twitter/library/card/i;->e:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lcom/twitter/library/card/i;->b:Landroid/content/Context;

    new-instance v2, Lcom/twitter/library/client/bg;

    invoke-direct {v2, v7, p0}, Lcom/twitter/library/client/bg;-><init>(ILcom/twitter/library/client/bf;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/library/card/i;->a(Lcom/twitter/library/card/j;Landroid/content/Context;Lcom/twitter/library/client/bg;)V

    .line 110
    return v7
.end method

.method private a(Lcom/twitter/library/service/x;)V
    .locals 1

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/library/service/x;->cancel(Z)Z

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(JLjava/lang/String;Lcom/twitter/library/card/c;)I
    .locals 7

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    sget-object v6, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->a:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/card/i;->a(JLjava/lang/String;Lcom/twitter/library/card/c;Lcom/twitter/internal/network/HttpOperation$RequestMethod;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Landroid/content/Context;JLcom/twitter/library/card/c;Landroid/net/Uri;Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/card/j;
    .locals 8

    .prologue
    .line 121
    new-instance v0, Lcom/twitter/library/card/j;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/twitter/library/card/j;-><init>(Landroid/content/Context;JLcom/twitter/library/card/c;Landroid/net/Uri;Lcom/twitter/internal/network/HttpOperation$RequestMethod;)V

    return-object v0
.end method

.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/card/i;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/x;

    invoke-direct {p0, v0}, Lcom/twitter/library/card/i;->a(Lcom/twitter/library/service/x;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/twitter/library/card/i;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 133
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 130
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected a(Lcom/twitter/library/card/j;Landroid/content/Context;Lcom/twitter/library/client/bg;)V
    .locals 1

    .prologue
    .line 126
    invoke-static {p2}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 127
    return-void
.end method

.method public declared-synchronized b(JLjava/lang/String;Lcom/twitter/library/card/c;)I
    .locals 7

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    sget-object v6, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/card/i;->a(JLjava/lang/String;Lcom/twitter/library/card/c;Lcom/twitter/internal/network/HttpOperation$RequestMethod;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(ILcom/twitter/library/service/x;)V
    .locals 8

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/twitter/library/card/i;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-object v0, p2

    check-cast v0, Lcom/twitter/library/card/j;

    move-object v2, v0

    .line 142
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Lcom/twitter/library/card/j;->a(Lcom/twitter/library/client/Session;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 153
    :goto_0
    monitor-exit p0

    return-void

    .line 147
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/twitter/library/card/j;->e()Lclm;

    move-result-object v3

    .line 148
    invoke-virtual {p2}, Lcom/twitter/library/service/x;->U()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 149
    iget-object v4, p0, Lcom/twitter/library/card/i;->d:Lcom/twitter/library/card/b;

    invoke-virtual {v2}, Lcom/twitter/library/card/j;->b()J

    move-result-wide v6

    invoke-interface {v4, v6, v7, p1, v3}, Lcom/twitter/library/card/b;->a(JILclm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 151
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/twitter/library/card/i;->d:Lcom/twitter/library/card/b;

    invoke-virtual {v2}, Lcom/twitter/library/card/j;->b()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, p1}, Lcom/twitter/library/card/b;->a(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
