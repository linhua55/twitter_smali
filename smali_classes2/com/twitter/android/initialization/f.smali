.class Lcom/twitter/android/initialization/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbiy;


# instance fields
.field final synthetic a:Lcom/twitter/android/initialization/ErrorReporterInitializer;

.field private final b:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/twitter/android/initialization/ErrorReporterInitializer;)V
    .locals 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/twitter/android/initialization/f;->a:Lcom/twitter/android/initialization/ErrorReporterInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/initialization/f;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lbiv;Z)V
    .locals 6

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/initialization/f;->b:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 98
    iget-object v0, p0, Lcom/twitter/android/initialization/f;->b:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "JVM Update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->g()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 99
    invoke-static {v2, v3}, Lcom/twitter/util/al;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Lcom/twitter/util/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/twitter/android/initialization/f;->b:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\nFile Descriptor Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/twitter/android/initialization/ErrorReporterInitializer;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_0
    invoke-static {}, Lcom/twitter/app/common/util/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Lcom/twitter/app/common/util/f;->a()Lcom/twitter/app/common/util/f;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/twitter/android/initialization/f;->b:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nIn Foreground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    invoke-virtual {v0}, Lcom/twitter/app/common/util/f;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nForeground Time: "

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    invoke-virtual {v0}, Lcom/twitter/app/common/util/f;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/twitter/util/al;->e(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    invoke-static {}, Lcom/twitter/app/common/util/c;->a()Lcom/twitter/app/common/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/util/c;->b()Landroid/app/Activity;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    iget-object v1, p0, Lcom/twitter/android/initialization/f;->b:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nLast Resumed Activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_2
    const-string/jumbo v0, "application_state"

    iget-object v1, p0, Lcom/twitter/android/initialization/f;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
