.class public Lbjc;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbje;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbjd;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lbjc;->a:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lbjc;->b:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    const-class v1, Ljava/lang/OutOfMemoryError;

    .line 18
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lbjc;->c:Ljava/util/List;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static a(Lbjb;Z)V
    .locals 1

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 104
    :try_start_0
    invoke-static {p0}, Lbix;->b(Lbiv;)V

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {p0}, Lbix;->a(Lbiv;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lbjd;)V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lbjc;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public static a(Lbje;)V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lbjc;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lbjc;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public static a(Ljava/lang/OutOfMemoryError;)V
    .locals 0

    .prologue
    .line 40
    invoke-static {p0}, Lbjc;->a(Ljava/lang/Throwable;)Z

    .line 41
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/OutOfMemoryError;ZLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/OutOfMemoryError;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    const-class v0, Lbjc;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lbjc;->a(Ljava/lang/Throwable;ZLjava/util/Map;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v0

    return-void

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a()Z
    .locals 8

    .prologue
    .line 156
    invoke-static {}, Lcom/twitter/util/m;->b()J

    move-result-wide v2

    .line 158
    const-class v1, Lbjc;

    monitor-enter v1

    .line 159
    :try_start_0
    sget-wide v4, Lbjc;->d:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 160
    :goto_0
    if-eqz v0, :cond_0

    .line 161
    sput-wide v2, Lbjc;->d:J

    .line 163
    :cond_0
    monitor-exit v1

    .line 164
    return v0

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lbjc;->a(Ljava/lang/Throwable;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Throwable;Z)Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lbjc;->a(Ljava/lang/Throwable;ZLjava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(Ljava/lang/Throwable;ZLjava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 80
    const-class v1, Lbjc;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lbjc;->b(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 97
    :goto_0
    monitor-exit v1

    return v0

    .line 84
    :cond_0
    :try_start_1
    sget-object v0, Lbjc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbje;

    .line 85
    invoke-interface {v0, p0}, Lbje;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 88
    :cond_1
    :try_start_2
    invoke-static {}, Lbjc;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-static {p0, p1, p2}, Lbjc;->b(Ljava/lang/Throwable;ZLjava/util/Map;)Lbjb;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    invoke-static {v0, p1}, Lbjc;->a(Lbjb;Z)V

    .line 97
    :cond_2
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :cond_3
    invoke-static {p0}, Lbix;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private static b(Ljava/lang/Throwable;ZLjava/util/Map;)Lbjb;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lbjb;"
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    :try_start_0
    new-instance v2, Lbjb;

    invoke-direct {v2, p0}, Lbjb;-><init>(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    :try_start_1
    sget-object v0, Lbjc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjd;

    .line 140
    invoke-interface {v0, v2, p1}, Lbjd;->a(Lbjb;Z)V

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 152
    :goto_1
    return-object v0

    .line 142
    :cond_0
    if-eqz p2, :cond_1

    .line 143
    invoke-virtual {v2}, Lbjb;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lbjb;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 149
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 150
    :goto_3
    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 151
    goto :goto_1

    .line 149
    :catch_2
    move-exception v1

    goto :goto_3

    .line 147
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private static b(Ljava/lang/Class;)Z
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lbjc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 115
    :goto_0
    if-eqz p0, :cond_1

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbjc;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 121
    :goto_1
    return v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
