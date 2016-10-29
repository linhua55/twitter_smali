.class public Layj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Layf;
.implements Layl;


# static fields
.field private static a:Layj;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Laxy;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Laxy;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/SharedPreferences;

.field private final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Layl;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private final i:Laxv;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Layk;

    invoke-direct {v0, p0}, Layk;-><init>(Layj;)V

    iput-object v0, p0, Layj;->d:Ljava/util/Comparator;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Layj;->f:Ljava/util/HashSet;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Layj;->g:Z

    .line 54
    iput-boolean v1, p0, Layj;->h:Z

    .line 99
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Layj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    iput-object p1, p0, Layj;->c:Landroid/content/Context;

    .line 101
    const-string/jumbo v0, "metrics"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Layj;->e:Landroid/content/SharedPreferences;

    .line 102
    new-instance v0, Laxv;

    iget-object v1, p0, Layj;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Laxv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Layj;->i:Laxv;

    .line 103
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 70
    const-class v1, Layj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Layj;->a:Layj;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Layj;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Layj;-><init>(Landroid/content/Context;)V

    sput-object v0, Layj;->a:Layj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit v1

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Layj;
    .locals 3

    .prologue
    .line 58
    const-class v1, Layj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Layj;->a:Layj;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Metrics manager must be initialized first"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 61
    :cond_0
    :try_start_1
    sget-object v0, Layj;->a:Layj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Layj;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Laxy;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Layj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxy;

    return-object v0
.end method

.method public a(Laxy;)V
    .locals 0

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Layj;->a(Laxz;)V

    .line 125
    return-void
.end method

.method public a(Laxz;)V
    .locals 2

    .prologue
    .line 219
    iget-boolean v0, p0, Layj;->h:Z

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Layj;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layl;

    .line 223
    invoke-interface {v0, p1}, Layl;->a(Laxz;)V

    goto :goto_1

    .line 225
    :cond_2
    instance-of v0, p1, Laxy;

    if-eqz v0, :cond_0

    .line 226
    check-cast p1, Laxy;

    invoke-virtual {p1}, Laxy;->p()V

    goto :goto_0
.end method

.method public a(Layl;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Layj;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 189
    iput-boolean p1, p0, Layj;->g:Z

    .line 190
    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0}, Layj;->e()V

    .line 193
    :cond_0
    return-void
.end method

.method public b(Laxy;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Layj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Laxy;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-boolean v0, p1, Laxy;->j:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Layj;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Laxy;->b(Landroid/content/SharedPreferences$Editor;)V

    .line 134
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public declared-synchronized b(Z)V
    .locals 1

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Layj;->h:Z

    .line 276
    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p0}, Layj;->g()V

    .line 278
    invoke-virtual {p0}, Layj;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :cond_0
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Layj;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 90
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public c(Laxy;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 153
    iget-boolean v0, p1, Laxy;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Layj;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Layj;->h:Z

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Layj;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    invoke-virtual {p1, v0}, Laxy;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 156
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public d()Laxv;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Layj;->i:Laxv;

    return-object v0
.end method

.method public d(Laxy;)Laxy;
    .locals 2

    .prologue
    .line 110
    iget-boolean v0, p0, Layj;->h:Z

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object p1

    .line 114
    :cond_1
    iget-object v0, p0, Layj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Laxy;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxy;

    .line 115
    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 168
    iget-boolean v0, p0, Layj;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Layj;->h:Z

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Layj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    iget-object v2, p0, Layj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxy;

    .line 174
    if-eqz v0, :cond_2

    iget-boolean v2, v0, Laxy;->j:Z

    if-eqz v2, :cond_2

    .line 175
    invoke-virtual {p0, v0}, Layj;->c(Laxy;)V

    goto :goto_0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Layj;->c:Landroid/content/Context;

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Layj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 268
    return-void
.end method
