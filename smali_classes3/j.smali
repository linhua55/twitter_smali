.class abstract Lj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lu;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Landroid/content/Context;

.field private d:Ln;

.field private e:Lio/fabric/sdk/android/services/common/IdManager;

.field private f:Lio/fabric/sdk/android/services/settings/f;

.field private g:Lo;

.field private h:Ldel;

.field private i:Lio/fabric/sdk/android/services/common/q;

.field private j:Lio/fabric/sdk/android/services/network/j;

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj;-><init>(Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lj;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lj;->k:J

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    return-void
.end method

.method private e()V
    .locals 8

    .prologue
    .line 149
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v0

    const-string/jumbo v1, "Beta"

    const-string/jumbo v2, "Performing update check"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lio/fabric/sdk/android/services/common/k;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/k;-><init>()V

    iget-object v1, p0, Lj;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/common/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 152
    iget-object v0, p0, Lj;->e:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->i()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->c:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 155
    new-instance v0, Lp;

    iget-object v1, p0, Lj;->d:Ln;

    iget-object v2, p0, Lj;->d:Ln;

    invoke-virtual {v2}, Ln;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lj;->f:Lio/fabric/sdk/android/services/settings/f;

    iget-object v3, v3, Lio/fabric/sdk/android/services/settings/f;->a:Ljava/lang/String;

    iget-object v4, p0, Lj;->j:Lio/fabric/sdk/android/services/network/j;

    new-instance v5, Lr;

    invoke-direct {v5}, Lr;-><init>()V

    invoke-direct/range {v0 .. v5}, Lp;-><init>(Lio/fabric/sdk/android/p;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/j;Lr;)V

    .line 166
    iget-object v1, p0, Lj;->g:Lo;

    invoke-virtual {v0, v7, v6, v1}, Lp;->a(Ljava/lang/String;Ljava/lang/String;Lo;)Lq;

    .line 167
    return-void
.end method


# virtual methods
.method a(J)V
    .locals 1

    .prologue
    .line 173
    iput-wide p1, p0, Lj;->k:J

    .line 174
    return-void
.end method

.method public a(Landroid/content/Context;Ln;Lio/fabric/sdk/android/services/common/IdManager;Lio/fabric/sdk/android/services/settings/f;Lo;Ldel;Lio/fabric/sdk/android/services/common/q;Lio/fabric/sdk/android/services/network/j;)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lj;->c:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lj;->d:Ln;

    .line 83
    iput-object p3, p0, Lj;->e:Lio/fabric/sdk/android/services/common/IdManager;

    .line 84
    iput-object p4, p0, Lj;->f:Lio/fabric/sdk/android/services/settings/f;

    .line 85
    iput-object p5, p0, Lj;->g:Lo;

    .line 86
    iput-object p6, p0, Lj;->h:Ldel;

    .line 87
    iput-object p7, p0, Lj;->i:Lio/fabric/sdk/android/services/common/q;

    .line 88
    iput-object p8, p0, Lj;->j:Lio/fabric/sdk/android/services/network/j;

    .line 90
    invoke-virtual {p0}, Lj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lj;->c()V

    .line 93
    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    iget-object v0, p0, Lj;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method b()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lj;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 111
    iget-object v0, p0, Lj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected c()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v1, p0, Lj;->h:Ldel;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lj;->h:Ldel;

    invoke-interface {v0}, Ldel;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "last_update_check"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lj;->h:Ldel;

    iget-object v2, p0, Lj;->h:Ldel;

    invoke-interface {v2}, Ldel;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "last_update_check"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v0, v2}, Ldel;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 122
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v0, p0, Lj;->i:Lio/fabric/sdk/android/services/common/q;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/q;->a()J

    move-result-wide v0

    .line 125
    iget-object v2, p0, Lj;->f:Lio/fabric/sdk/android/services/settings/f;

    iget v2, v2, Lio/fabric/sdk/android/services/settings/f;->b:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 128
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v4

    const-string/jumbo v5, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Check for updates delay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v4

    const-string/jumbo v5, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Check for updates last check time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lj;->d()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lj;->d()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 134
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v4

    const-string/jumbo v5, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Check for updates current time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", next check time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 139
    :try_start_1
    invoke-direct {p0}, Lj;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    invoke-virtual {p0, v0, v1}, Lj;->a(J)V

    .line 146
    :goto_0
    return-void

    .line 122
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 141
    :catchall_1
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lj;->a(J)V

    throw v2

    .line 144
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v0

    const-string/jumbo v1, "Beta"

    const-string/jumbo v2, "Check for updates next check time was not passed"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method d()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lj;->k:J

    return-wide v0
.end method
