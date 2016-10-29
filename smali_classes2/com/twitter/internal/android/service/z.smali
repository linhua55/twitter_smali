.class public Lcom/twitter/internal/android/service/z;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private a:Lcom/twitter/internal/android/service/AsyncService;

.field private b:Landroid/content/Context;

.field private final c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/internal/android/service/AsyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/internal/android/service/AsyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/internal/android/service/AsyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final f:[I

.field private final g:Lcom/twitter/internal/android/service/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/internal/android/service/z;->b:Landroid/content/Context;

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/internal/android/service/z;->c:Ljava/util/LinkedHashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/internal/android/service/z;->d:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/internal/android/service/z;->e:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/twitter/internal/android/service/z;->f:[I

    .line 30
    new-instance v0, Lcom/twitter/internal/android/service/aa;

    invoke-direct {v0, p0}, Lcom/twitter/internal/android/service/aa;-><init>(Lcom/twitter/internal/android/service/z;)V

    iput-object v0, p0, Lcom/twitter/internal/android/service/z;->g:Lcom/twitter/internal/android/service/c;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/internal/android/service/z;->b:Landroid/content/Context;

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/internal/android/service/z;->c:Ljava/util/LinkedHashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/internal/android/service/z;->d:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/internal/android/service/z;->e:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/twitter/internal/android/service/z;->f:[I

    .line 30
    new-instance v0, Lcom/twitter/internal/android/service/aa;

    invoke-direct {v0, p0}, Lcom/twitter/internal/android/service/aa;-><init>(Lcom/twitter/internal/android/service/z;)V

    iput-object v0, p0, Lcom/twitter/internal/android/service/z;->g:Lcom/twitter/internal/android/service/c;

    .line 57
    iput-object p1, p0, Lcom/twitter/internal/android/service/z;->b:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/twitter/internal/android/service/z;)[I
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->f:[I

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/internal/android/service/z;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->c:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/internal/android/service/z;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->d:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p1, Lcom/twitter/internal/android/service/AsyncOperation;->d:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/twitter/internal/android/service/z;->g:Lcom/twitter/internal/android/service/c;

    invoke-virtual {p1, v1}, Lcom/twitter/internal/android/service/AsyncOperation;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 77
    iget-object v1, p0, Lcom/twitter/internal/android/service/z;->f:[I

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/twitter/internal/android/service/z;->a:Lcom/twitter/internal/android/service/AsyncService;

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/twitter/internal/android/service/z;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v2, p0, Lcom/twitter/internal/android/service/z;->a:Lcom/twitter/internal/android/service/AsyncService;

    invoke-virtual {v2, p1}, Lcom/twitter/internal/android/service/AsyncService;->a(Lcom/twitter/internal/android/service/AsyncOperation;)V

    .line 84
    :goto_0
    monitor-exit v1

    .line 85
    return-object v0

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/twitter/internal/android/service/z;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/twitter/internal/android/service/u;)V
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lcom/twitter/internal/android/service/z;->f:[I

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->a:Lcom/twitter/internal/android/service/AsyncService;

    .line 171
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1}, Lcom/twitter/internal/android/service/AsyncService;->a(Lcom/twitter/internal/android/service/u;)V

    .line 176
    :cond_0
    return-void

    .line 171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lcom/twitter/internal/android/service/z;->f:[I

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/service/AsyncOperation;

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p2}, Lcom/twitter/internal/android/service/AsyncOperation;->cancel(Z)Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    monitor-exit v1

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/twitter/internal/android/service/z;->f:[I

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/twitter/internal/android/service/z;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 99
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/twitter/internal/android/service/z;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 101
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/service/AsyncOperation;

    .line 102
    invoke-virtual {v0, p1}, Lcom/twitter/internal/android/service/AsyncOperation;->cancel(Z)Z

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 104
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->a:Lcom/twitter/internal/android/service/AsyncService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/twitter/internal/android/service/z;->f:[I

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 112
    instance-of v0, p2, Lcom/twitter/internal/android/service/n;

    if-eqz v0, :cond_1

    .line 113
    iget-object v1, p0, Lcom/twitter/internal/android/service/z;->f:[I

    monitor-enter v1

    .line 114
    :try_start_0
    check-cast p2, Lcom/twitter/internal/android/service/n;

    invoke-virtual {p2}, Lcom/twitter/internal/android/service/n;->a()Lcom/twitter/internal/android/service/AsyncService;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/internal/android/service/z;->a:Lcom/twitter/internal/android/service/AsyncService;

    .line 115
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/twitter/internal/android/service/z;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 116
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/service/AsyncOperation;

    .line 117
    iget-object v3, p0, Lcom/twitter/internal/android/service/z;->a:Lcom/twitter/internal/android/service/AsyncService;

    invoke-virtual {v3, v0}, Lcom/twitter/internal/android/service/AsyncService;->a(Lcom/twitter/internal/android/service/AsyncOperation;)V

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/twitter/internal/android/service/z;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 120
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/twitter/internal/android/service/z;->f:[I

    monitor-enter v1

    .line 127
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/twitter/internal/android/service/z;->a:Lcom/twitter/internal/android/service/AsyncService;

    .line 128
    monitor-exit v1

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
