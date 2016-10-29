.class public abstract Lcom/twitter/database/internal/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/database/model/l;


# instance fields
.field protected final a:Lcom/twitter/database/model/b;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;",
            "Lcom/twitter/database/model/p;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/q;",
            ">;",
            "Lcom/twitter/database/model/q;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/r;",
            ">;",
            "Lcom/twitter/database/model/r;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/twitter/database/internal/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/twitter/database/model/b;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/database/internal/f;->b:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/database/internal/f;->c:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/database/internal/f;->d:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/twitter/database/internal/f;->e:Ljava/lang/ThreadLocal;

    .line 37
    iput-object p1, p0, Lcom/twitter/database/internal/f;->a:Lcom/twitter/database/model/b;

    .line 38
    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/Class",
            "<+TT;>;>;)TT;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 157
    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "There is no implementation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/twitter/database/internal/f;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 162
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 165
    :catch_1
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 167
    :catch_2
    move-exception v0

    .line 168
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 169
    :catch_3
    move-exception v0

    .line 170
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/Class",
            "<+TT;>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+TT;>;TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/twitter/database/internal/f;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/twitter/database/model/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/twitter/database/model/p;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/twitter/database/internal/f;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/database/internal/f;->b:Ljava/util/Map;

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/database/internal/f;->a(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/model/p;

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lcom/twitter/database/model/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/q",
            "<TP;>;>;)",
            "Lcom/twitter/database/model/q",
            "<TP;>;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/twitter/database/internal/f;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/database/internal/f;->c:Ljava/util/Map;

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/database/internal/f;->a(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/model/q;

    return-object v0
.end method

.method protected abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;>;"
        }
    .end annotation
.end method

.method public c(Ljava/lang/Class;)Lcom/twitter/database/model/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/r",
            "<TS;>;>;)",
            "Lcom/twitter/database/model/r",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/twitter/database/internal/f;->d()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/database/internal/f;->d:Ljava/util/Map;

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/database/internal/f;->a(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/model/r;

    return-object v0
.end method

.method protected abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/q;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/q;",
            ">;>;"
        }
    .end annotation
.end method

.method protected abstract d()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/r;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/r;",
            ">;>;"
        }
    .end annotation
.end method

.method d(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/twitter/database/internal/f;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Lcom/twitter/database/model/b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/database/internal/f;->a:Lcom/twitter/database/model/b;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/twitter/database/internal/f;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/twitter/util/j;->c()V

    .line 60
    iget-object v0, p0, Lcom/twitter/database/internal/f;->a:Lcom/twitter/database/model/b;

    invoke-interface {v0}, Lcom/twitter/database/model/b;->a()V

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/twitter/database/internal/f;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 63
    invoke-virtual {p0, v0}, Lcom/twitter/database/internal/f;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/database/model/p;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/twitter/database/internal/f;->a:Lcom/twitter/database/model/b;

    invoke-interface {v1}, Lcom/twitter/database/model/b;->b()V

    throw v0

    .line 65
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/twitter/database/internal/f;->a:Lcom/twitter/database/model/b;

    invoke-interface {v0}, Lcom/twitter/database/model/b;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/twitter/database/internal/f;->a:Lcom/twitter/database/model/b;

    invoke-interface {v0}, Lcom/twitter/database/model/b;->b()V

    .line 69
    return-void
.end method

.method public h()Lcom/twitter/database/model/w;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/twitter/database/internal/p;

    iget-object v1, p0, Lcom/twitter/database/internal/f;->a:Lcom/twitter/database/model/b;

    invoke-virtual {p0}, Lcom/twitter/database/internal/f;->i()Lcom/twitter/database/model/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/database/internal/p;-><init>(Lcom/twitter/database/model/b;Lcom/twitter/database/model/f;)V

    return-object v0
.end method

.method public i()Lcom/twitter/database/model/f;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/twitter/database/internal/f;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/internal/e;

    .line 114
    if-eqz v0, :cond_0

    .line 120
    :goto_0
    invoke-virtual {v0}, Lcom/twitter/database/internal/e;->b()V

    .line 121
    return-object v0

    .line 117
    :cond_0
    new-instance v0, Lcom/twitter/database/internal/e;

    invoke-direct {v0}, Lcom/twitter/database/internal/e;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/twitter/database/internal/f;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public j()V
    .locals 4

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/twitter/database/internal/f;->h()Lcom/twitter/database/model/w;

    move-result-object v1

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/twitter/database/internal/f;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 129
    invoke-virtual {p0, v0}, Lcom/twitter/database/internal/f;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    .line 130
    instance-of v3, v0, Lcom/twitter/database/model/s;

    if-eqz v3, :cond_0

    .line 131
    check-cast v0, Lcom/twitter/database/model/s;

    invoke-interface {v0}, Lcom/twitter/database/model/s;->o()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/twitter/database/model/w;->close()V

    throw v0

    .line 134
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/twitter/database/model/w;->a()Lcom/twitter/database/model/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-interface {v1}, Lcom/twitter/database/model/w;->close()V

    .line 138
    return-void
.end method
