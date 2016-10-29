.class public Lcom/twitter/database/hydrator/f;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/database/model/l;",
            "Lcom/twitter/database/hydrator/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/twitter/database/model/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/twitter/database/hydrator/f;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/database/model/l;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/twitter/database/hydrator/f;->b:Lcom/twitter/database/model/l;

    .line 44
    return-void
.end method

.method public static a(Lcom/twitter/database/model/l;)Lcom/twitter/database/hydrator/f;
    .locals 3

    .prologue
    .line 32
    sget-object v1, Lcom/twitter/database/hydrator/f;->a:Ljava/util/Map;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/twitter/database/hydrator/f;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/hydrator/f;

    .line 34
    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/twitter/database/hydrator/f;

    invoke-direct {v0, p0}, Lcom/twitter/database/hydrator/f;-><init>(Lcom/twitter/database/model/l;)V

    .line 36
    sget-object v2, Lcom/twitter/database/hydrator/f;->a:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    monitor-exit v1

    .line 39
    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/twitter/database/model/g;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/twitter/database/model/p;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Lcom/twitter/database/model/g;",
            "Ljava/lang/Class",
            "<TD;>;)TD;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 51
    iget-object v1, p0, Lcom/twitter/database/hydrator/f;->b:Lcom/twitter/database/model/l;

    invoke-interface {v1, p1}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/database/model/p;->f()Lcom/twitter/database/model/q;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/twitter/database/model/q;->a(Lcom/twitter/database/model/g;)Lcom/twitter/database/model/j;

    move-result-object v1

    .line 53
    :try_start_0
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-static {v1}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 63
    :goto_0
    return-object v0

    .line 56
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/twitter/database/hydrator/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcmx;

    move-result-object v2

    .line 57
    if-nez v2, :cond_1

    .line 58
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not find hydrator to hydrate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-static {v1}, Ldbt;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 63
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcmx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 65
    invoke-static {v1}, Ldbt;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Ldbt;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public a(Ljava/lang/Class;Lcom/twitter/database/model/g;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/twitter/database/model/p;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Lcom/twitter/database/model/g;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 86
    iget-object v0, p0, Lcom/twitter/database/hydrator/f;->b:Lcom/twitter/database/model/l;

    invoke-interface {v0, p1}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/database/model/p;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/twitter/database/model/q;->a(Lcom/twitter/database/model/g;)Lcom/twitter/database/model/j;

    move-result-object v0

    .line 88
    :try_start_0
    invoke-virtual {v0}, Lcom/twitter/database/model/j;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 90
    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 88
    return v1

    .line 90
    :catchall_0
    move-exception v1

    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    throw v1
.end method
