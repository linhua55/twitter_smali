.class public abstract Laxy;
.super Laxz;
.source "Twttr"


# instance fields
.field private a:Z

.field private final b:Layf;

.field protected final f:J

.field protected final g:Ljava/lang/String;

.field protected h:J

.field protected i:Z

.field j:Z

.field k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Laye;Ljava/lang/String;Layf;)V
    .locals 6

    .prologue
    .line 50
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Laxy;-><init>(Ljava/lang/String;Laye;Ljava/lang/String;Layf;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Laye;Ljava/lang/String;Layf;Z)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Laxz;-><init>(Ljava/lang/String;Laye;)V

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laxy;->p:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Laxy;->g:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Laxy;->z()J

    move-result-wide v0

    iput-wide v0, p0, Laxy;->f:J

    .line 67
    iput-object p4, p0, Laxy;->b:Layf;

    .line 68
    iput-boolean p5, p0, Laxy;->j:Z

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Laxy;->i:Z

    .line 71
    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    .line 72
    invoke-interface {p4}, Layf;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Laxy;->a(Landroid/content/SharedPreferences;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Laxy;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    .prologue
    .line 209
    const-string/jumbo v0, "starttime"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Laxy;->u:J

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 210
    const-string/jumbo v0, "measuring"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Laxy;->a:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 211
    const-string/jumbo v0, "duration"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Laxy;->t:J

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 212
    const-string/jumbo v0, "ready"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Laxy;->k:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 213
    const-string/jumbo v0, "last_report"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Laxy;->h:J

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 214
    return-void
.end method

.method protected a(Landroid/content/SharedPreferences;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 232
    const-string/jumbo v0, "starttime"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Laxy;->u:J

    .line 233
    const-string/jumbo v0, "measuring"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Laxy;->a:Z

    .line 234
    const-string/jumbo v0, "duration"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Laxy;->t:J

    .line 235
    const-string/jumbo v0, "ready"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Laxy;->k:Z

    .line 236
    const-string/jumbo v0, "last_report"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Laxy;->h:J

    .line 237
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method protected b(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .prologue
    .line 221
    const-string/jumbo v0, "starttime"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    const-string/jumbo v0, "measuring"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    const-string/jumbo v0, "duration"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    const-string/jumbo v0, "ready"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    const-string/jumbo v0, "last_report"

    invoke-virtual {p0, v0}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 194
    iput-boolean p1, p0, Laxy;->k:Z

    .line 195
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized i()V
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Laxy;->i:Z

    if-eqz v0, :cond_0

    .line 94
    const-string/jumbo v0, "MetricsManager"

    const-string/jumbo v1, "attempting to start a metric which has already been destroyed"

    invoke-static {v0, v1}, Lcjw;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    iget-boolean v0, p0, Laxy;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Laxy;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Laxy;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 107
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Laxy;->a:Z

    .line 104
    invoke-virtual {p0}, Laxy;->y()J

    move-result-wide v0

    iput-wide v0, p0, Laxy;->u:J

    .line 106
    invoke-virtual {p0}, Laxy;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()V
    .locals 6

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Laxy;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :cond_0
    :try_start_1
    iget-wide v0, p0, Laxy;->t:J

    invoke-virtual {p0}, Laxy;->y()J

    move-result-wide v2

    iget-wide v4, p0, Laxy;->u:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Laxy;->t:J

    .line 120
    invoke-virtual {p0}, Laxy;->c()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Laxy;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Laxy;->s()V

    .line 129
    invoke-virtual {p0}, Laxy;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Laxy;->a:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Laxy;->i:Z

    return v0
.end method

.method protected final n()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxy;->i:Z

    .line 155
    iget-object v0, p0, Laxy;->b:Layf;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Laxy;->b:Layf;

    invoke-interface {v0, p0}, Layf;->b(Laxy;)V

    .line 158
    :cond_0
    return-void
.end method

.method protected final o()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Laxy;->b:Layf;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Laxy;->y()J

    move-result-wide v0

    iput-wide v0, p0, Laxy;->h:J

    .line 163
    iget-object v0, p0, Laxy;->b:Layf;

    invoke-interface {v0, p0}, Layf;->a(Laxy;)V

    .line 165
    :cond_0
    return-void
.end method

.method protected final p()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 168
    iget-boolean v0, p0, Laxy;->a:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Laxy;->y()J

    move-result-wide v0

    iput-wide v0, p0, Laxy;->u:J

    .line 173
    :goto_0
    iput-wide v2, p0, Laxy;->t:J

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Laxy;->k:Z

    .line 175
    invoke-virtual {p0}, Laxy;->e()V

    .line 176
    return-void

    .line 171
    :cond_0
    iput-wide v2, p0, Laxy;->u:J

    goto :goto_0
.end method

.method protected final q()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Laxy;->b:Layf;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Laxy;->b:Layf;

    invoke-interface {v0, p0}, Layf;->c(Laxy;)V

    .line 182
    :cond_0
    return-void
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Laxy;->k:Z

    return v0
.end method

.method protected s()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method
