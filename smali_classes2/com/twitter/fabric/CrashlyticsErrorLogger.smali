.class public Lcom/twitter/fabric/CrashlyticsErrorLogger;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbiw;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/fabric/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Lcom/twitter/util/Tristate;

.field private d:I

.field private e:Lbiv;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:Ldau;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldau",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a:Ljava/util/List;

    .line 43
    sget-object v0, Lcom/twitter/util/Tristate;->a:Lcom/twitter/util/Tristate;

    iput-object v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->c:Lcom/twitter/util/Tristate;

    .line 54
    new-instance v0, Lio/fabric/sdk/android/i;

    invoke-direct {v0, p1}, Lio/fabric/sdk/android/i;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v3

    invoke-virtual {v0, v3}, Lio/fabric/sdk/android/i;->a(Z)Lio/fabric/sdk/android/i;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Lio/fabric/sdk/android/p;

    new-instance v5, Li;

    invoke-direct {v5}, Li;-><init>()V

    if-nez p2, :cond_0

    move v0, v1

    .line 55
    :goto_0
    invoke-virtual {v5, v0}, Li;->a(Z)Li;

    move-result-object v0

    invoke-virtual {v0}, Li;->a()Lh;

    move-result-object v0

    aput-object v0, v4, v2

    new-instance v0, Lcom/crashlytics/android/ndk/b;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/b;-><init>()V

    aput-object v0, v4, v1

    .line 54
    invoke-virtual {v3, v4}, Lio/fabric/sdk/android/i;->a([Lio/fabric/sdk/android/p;)Lio/fabric/sdk/android/i;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lio/fabric/sdk/android/i;->a()Lio/fabric/sdk/android/f;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lio/fabric/sdk/android/f;->a(Lio/fabric/sdk/android/f;)Lio/fabric/sdk/android/f;

    .line 58
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 59
    return-void

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0
.end method

.method private a(Lbiv;Ljava/util/Map;Lbiv;Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbiv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lbiv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    new-array v0, v5, [Ljava/lang/Iterable;

    .line 115
    invoke-static {p2}, Lcom/twitter/util/object/g;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lbiv;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    aput-object v1, v0, v4

    .line 114
    invoke-static {v0}, Lczz;->a([Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p5}, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 119
    :cond_0
    if-eqz p3, :cond_3

    .line 120
    invoke-virtual {p3}, Lbiv;->c()Ljava/lang/Throwable;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "recent_error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p5}, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 122
    const-string/jumbo v1, "recent_error_callstack"

    invoke-static {v0}, Lcjw;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p5}, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 123
    new-array v0, v5, [Ljava/lang/Iterable;

    .line 124
    invoke-static {p4}, Lcom/twitter/util/object/g;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    aput-object v1, v0, v3

    .line 125
    invoke-virtual {p3}, Lbiv;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    aput-object v1, v0, v4

    .line 123
    invoke-static {v0}, Lczz;->a([Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    iget-object v3, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->h:Ldau;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->h:Ldau;

    invoke-interface {v3, v1}, Ldau;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recent_error_kv_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p5}, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 133
    :cond_3
    const-string/jumbo v0, "CrashlyticsErrorLogger"

    const-string/jumbo v1, "Exception"

    invoke-virtual {p1}, Lbiv;->c()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcjw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    const-string/jumbo v1, "user_name"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-static {v0}, Lh;->b(Ljava/lang/String;)V

    .line 147
    :goto_1
    const-string/jumbo v1, "CrashlyticsErrorLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :cond_1
    if-eqz p2, :cond_2

    .line 142
    invoke-static {p0, v0}, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lh;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x0

    .line 151
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 153
    :cond_0
    invoke-static {p0, p1}, Lh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_1
    return-void

    .line 155
    :cond_2
    invoke-static {p1, v2}, Lcom/twitter/util/aj;->c(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 156
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 158
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%s_%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-static {v3, v4}, Lh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lbiv;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbiv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->e:Lbiv;

    .line 84
    iput-object p2, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->f:Ljava/util/Map;

    .line 85
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->g:J

    .line 86
    iget-object v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->c:Lcom/twitter/util/Tristate;

    sget-object v1, Lcom/twitter/util/Tristate;->c:Lcom/twitter/util/Tristate;

    if-ne v0, v1, :cond_1

    .line 87
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a(Lbiv;Ljava/util/Map;Lbiv;Ljava/util/Map;Z)V

    .line 90
    invoke-virtual {p1}, Lbiv;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lh;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->c:Lcom/twitter/util/Tristate;

    sget-object v1, Lcom/twitter/util/Tristate;->a:Lcom/twitter/util/Tristate;

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    .line 94
    iget v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a:Ljava/util/List;

    new-instance v1, Lcom/twitter/fabric/a;

    invoke-direct {v1, p1, p2}, Lcom/twitter/fabric/a;-><init>(Lbiv;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/twitter/util/Tristate;)V
    .locals 3

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->c:Lcom/twitter/util/Tristate;

    .line 70
    iget-object v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->c:Lcom/twitter/util/Tristate;

    sget-object v1, Lcom/twitter/util/Tristate;->c:Lcom/twitter/util/Tristate;

    if-ne v0, v1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/fabric/a;

    .line 72
    iget-object v2, v0, Lcom/twitter/fabric/a;->a:Lbiv;

    iget-object v0, v0, Lcom/twitter/fabric/a;->b:Ljava/util/Map;

    invoke-virtual {p0, v2, v0}, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a(Lbiv;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->d:I

    if-lez v0, :cond_1

    .line 75
    new-instance v0, Lcom/twitter/fabric/CrashlyticsErrorLogger$DroppedLogsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dropped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " logs."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/fabric/CrashlyticsErrorLogger$DroppedLogsException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit p0

    return-void
.end method

.method public a(Ldau;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldau",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->h:Ldau;

    .line 66
    return-void
.end method

.method public declared-synchronized b(Lbiv;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbiv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v3, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->e:Lbiv;

    .line 108
    :goto_0
    iget-object v4, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->f:Ljava/util/Map;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a(Lbiv;Ljava/util/Map;Lbiv;Ljava/util/Map;Z)V

    .line 109
    iget-object v0, p0, Lcom/twitter/fabric/CrashlyticsErrorLogger;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p1}, Lbiv;->c()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
