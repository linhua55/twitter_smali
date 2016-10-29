.class public abstract Ltv/periscope/android/chat/h;
.super Ltv/periscope/android/util/c;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltv/periscope/android/util/c;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private final b:Ljava/util/concurrent/locks/Condition;

.field private final c:Ljava/util/concurrent/locks/Condition;

.field private final d:Ljava/util/concurrent/locks/Condition;

.field private final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ltv/periscope/model/chat/MessageType$Throttle;",
            "Ltv/periscope/android/chat/j",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ltv/periscope/model/chat/MessageType$Throttle;",
            "Ltv/periscope/android/chat/j",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private volatile h:Z

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ltv/periscope/model/chat/MessageType$Throttle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ltv/periscope/android/chat/i;

.field private final k:Z


# direct methods
.method protected constructor <init>(Ljava/util/Comparator;Ltv/periscope/android/chat/i;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;",
            "Ltv/periscope/android/chat/i;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ltv/periscope/android/util/c;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    .line 31
    iget-object v0, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/chat/h;->b:Ljava/util/concurrent/locks/Condition;

    .line 32
    iget-object v0, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/chat/h;->c:Ljava/util/concurrent/locks/Condition;

    .line 33
    iget-object v0, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/chat/h;->d:Ljava/util/concurrent/locks/Condition;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/chat/h;->f:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/chat/h;->g:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/chat/h;->i:Ljava/util/Map;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/chat/h;->h:Z

    .line 55
    iput-object p1, p0, Ltv/periscope/android/chat/h;->e:Ljava/util/Comparator;

    .line 56
    iput-object p2, p0, Ltv/periscope/android/chat/h;->j:Ltv/periscope/android/chat/i;

    .line 57
    iput-boolean p3, p0, Ltv/periscope/android/chat/h;->k:Z

    .line 58
    return-void
.end method

.method private a(Ljava/util/concurrent/locks/Condition;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 84
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private i()Ljava/lang/String;
    .locals 5

    .prologue
    .line 253
    iget-object v0, p0, Ltv/periscope/android/chat/h;->f:Ljava/util/Map;

    sget-object v1, Ltv/periscope/model/chat/MessageType$Throttle;->b:Ltv/periscope/model/chat/MessageType$Throttle;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/chat/j;

    .line 254
    iget-object v1, p0, Ltv/periscope/android/chat/h;->g:Ljava/util/Map;

    sget-object v2, Ltv/periscope/model/chat/MessageType$Throttle;->b:Ltv/periscope/model/chat/MessageType$Throttle;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/periscope/android/chat/j;

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<3 - T: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/periscope/android/chat/h;->i:Ljava/util/Map;

    sget-object v4, Ltv/periscope/model/chat/MessageType$Throttle;->b:Ltv/periscope/model/chat/MessageType$Throttle;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " R: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Ltv/periscope/android/chat/j;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " I: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ltv/periscope/android/chat/j;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_1
.end method

.method private j()Ljava/lang/String;
    .locals 5

    .prologue
    .line 260
    iget-object v0, p0, Ltv/periscope/android/chat/h;->f:Ljava/util/Map;

    sget-object v1, Ltv/periscope/model/chat/MessageType$Throttle;->c:Ltv/periscope/model/chat/MessageType$Throttle;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/chat/j;

    .line 261
    iget-object v1, p0, Ltv/periscope/android/chat/h;->g:Ljava/util/Map;

    sget-object v2, Ltv/periscope/model/chat/MessageType$Throttle;->c:Ltv/periscope/model/chat/MessageType$Throttle;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/periscope/android/chat/j;

    .line 262
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltv/periscope/android/chat/j;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "C - T: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/periscope/android/chat/h;->i:Ljava/util/Map;

    sget-object v4, Ltv/periscope/model/chat/MessageType$Throttle;->c:Ltv/periscope/model/chat/MessageType$Throttle;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " R: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " I: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ltv/periscope/android/chat/j;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 262
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 263
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 63
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Ltv/periscope/android/chat/h;->h:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Ltv/periscope/android/chat/h;->f:Ljava/util/Map;

    iget-object v1, p0, Ltv/periscope/android/chat/h;->g:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Ltv/periscope/android/chat/h;->a(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string/jumbo v1, "ChatQueue"

    const-string/jumbo v2, "error"

    invoke-static {v1, v2, v0}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :goto_1
    invoke-virtual {p0}, Ltv/periscope/android/chat/h;->b()V

    .line 71
    return-void

    .line 66
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ChatQueue"

    const-string/jumbo v1, "Consumer received kill signal. Thread will no longer loop."

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 124
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 129
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/chat/h;->b:Ljava/util/concurrent/locks/Condition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v0, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected a(Ljava/lang/Object;Ltv/periscope/model/chat/MessageType$Throttle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ltv/periscope/model/chat/MessageType$Throttle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    :goto_0
    if-eqz p1, :cond_4

    .line 187
    invoke-virtual {p0, p2}, Ltv/periscope/android/chat/h;->a(Ltv/periscope/model/chat/MessageType$Throttle;)V

    .line 188
    iget-object v0, p0, Ltv/periscope/android/chat/h;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/chat/j;

    .line 189
    iget-object v1, p0, Ltv/periscope/android/chat/h;->g:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/periscope/android/chat/j;

    .line 190
    if-nez v1, :cond_0

    .line 191
    new-instance v1, Ltv/periscope/android/chat/j;

    iget-object v2, v0, Ltv/periscope/android/chat/j;->b:Ltv/periscope/model/chat/MessageType$Throttle;

    iget-object v3, p0, Ltv/periscope/android/chat/h;->e:Ljava/util/Comparator;

    invoke-direct {v1, v2, v3}, Ltv/periscope/android/chat/j;-><init>(Ltv/periscope/model/chat/MessageType$Throttle;Ljava/util/Comparator;)V

    .line 192
    iget-object v2, p0, Ltv/periscope/android/chat/h;->g:Ljava/util/Map;

    iget-object v3, v0, Ltv/periscope/android/chat/j;->b:Ltv/periscope/model/chat/MessageType$Throttle;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    iget-object v2, v0, Ltv/periscope/android/chat/j;->b:Ltv/periscope/model/chat/MessageType$Throttle;

    iget-object v3, v1, Ltv/periscope/android/chat/j;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0, v2, v3, p1}, Ltv/periscope/android/chat/h;->a(Ltv/periscope/model/chat/MessageType$Throttle;Ljava/util/Queue;Ljava/lang/Object;)Z

    move-result v2

    .line 196
    iget-boolean v3, p0, Ltv/periscope/android/chat/h;->k:Z

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 197
    const-string/jumbo v3, "ChatQueue"

    const-string/jumbo v4, "Received message that should have been dropped!!!"

    invoke-static {v3, v4}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_1
    iget-boolean v3, p0, Ltv/periscope/android/chat/h;->k:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 202
    iget-object v0, v0, Ltv/periscope/android/chat/j;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    move-object p1, v0

    .line 212
    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p0, p1}, Ltv/periscope/android/chat/h;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    iget-object v1, v1, Ltv/periscope/android/chat/j;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, v0, Ltv/periscope/android/chat/j;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 209
    :cond_3
    iget-object v0, v0, Ltv/periscope/android/chat/j;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 213
    :cond_4
    return-void
.end method

.method protected abstract a(Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ltv/periscope/model/chat/MessageType$Throttle;",
            "Ltv/periscope/android/chat/j",
            "<TT;>;>;",
            "Ljava/util/Map",
            "<",
            "Ltv/periscope/model/chat/MessageType$Throttle;",
            "Ltv/periscope/android/chat/j",
            "<TT;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected a(Ltv/periscope/model/chat/MessageType$Throttle;)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Ltv/periscope/android/chat/h;->j:Ltv/periscope/android/chat/i;

    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    sget-object v0, Ltv/periscope/model/chat/MessageType$Throttle;->b:Ltv/periscope/model/chat/MessageType$Throttle;

    if-ne p1, v0, :cond_2

    .line 271
    iget-object v0, p0, Ltv/periscope/android/chat/h;->j:Ltv/periscope/android/chat/i;

    invoke-direct {p0}, Ltv/periscope/android/chat/h;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/android/chat/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_2
    sget-object v0, Ltv/periscope/model/chat/MessageType$Throttle;->c:Ltv/periscope/model/chat/MessageType$Throttle;

    if-ne p1, v0, :cond_0

    .line 273
    iget-object v0, p0, Ltv/periscope/android/chat/h;->j:Ltv/periscope/android/chat/i;

    invoke-direct {p0}, Ltv/periscope/android/chat/h;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/android/chat/i;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ltv/periscope/model/chat/MessageType$Throttle;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/periscope/model/chat/MessageType$Throttle;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Ltv/periscope/android/chat/h;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 156
    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Ltv/periscope/android/chat/h;->i:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_0
    invoke-virtual {p0, p1, p2}, Ltv/periscope/android/chat/h;->b(Ltv/periscope/model/chat/MessageType$Throttle;Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p0, p1}, Ltv/periscope/android/chat/h;->a(Ltv/periscope/model/chat/MessageType$Throttle;)V

    .line 163
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Ltv/periscope/android/chat/h;->i:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract a(Ltv/periscope/model/chat/MessageType$Throttle;Ljava/util/Queue;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/periscope/model/chat/MessageType$Throttle;",
            "Ljava/util/Queue",
            "<TT;>;TT;)Z"
        }
    .end annotation
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public b(Ltv/periscope/model/chat/MessageType$Throttle;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/periscope/model/chat/MessageType$Throttle;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0, p1, p2}, Ltv/periscope/android/chat/h;->c(Ltv/periscope/model/chat/MessageType$Throttle;Ljava/lang/Object;)V

    .line 217
    iget-wide v0, p1, Ltv/periscope/model/chat/MessageType$Throttle;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 218
    iget-object v0, p0, Ltv/periscope/android/chat/h;->b:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0, v0}, Ltv/periscope/android/chat/h;->a(Ljava/util/concurrent/locks/Condition;)V

    .line 220
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/chat/h;->c:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0, v0}, Ltv/periscope/android/chat/h;->a(Ljava/util/concurrent/locks/Condition;)V

    .line 221
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/chat/h;->h:Z

    .line 92
    invoke-virtual {p0}, Ltv/periscope/android/chat/h;->d()V

    .line 93
    return-void
.end method

.method public c(Ltv/periscope/model/chat/MessageType$Throttle;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/periscope/model/chat/MessageType$Throttle;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Ltv/periscope/android/chat/h;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/chat/j;

    .line 226
    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ltv/periscope/android/chat/j;

    iget-object v1, p0, Ltv/periscope/android/chat/h;->e:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ltv/periscope/android/chat/j;-><init>(Ltv/periscope/model/chat/MessageType$Throttle;Ljava/util/Comparator;)V

    .line 228
    iget-object v1, p0, Ltv/periscope/android/chat/h;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_0
    iget-object v0, v0, Ltv/periscope/android/chat/j;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Ltv/periscope/android/chat/h;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 98
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/chat/j;

    invoke-virtual {v0}, Ltv/periscope/android/chat/j;->d()V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/chat/h;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 102
    iget-object v0, p0, Ltv/periscope/android/chat/h;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/chat/j;

    invoke-virtual {v0}, Ltv/periscope/android/chat/j;->d()V

    goto :goto_1

    .line 105
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/chat/h;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 106
    iget-object v0, p0, Ltv/periscope/android/chat/h;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 107
    iget-object v0, p0, Ltv/periscope/android/chat/h;->b:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0, v0}, Ltv/periscope/android/chat/h;->a(Ljava/util/concurrent/locks/Condition;)V

    .line 108
    iget-object v0, p0, Ltv/periscope/android/chat/h;->c:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0, v0}, Ltv/periscope/android/chat/h;->a(Ljava/util/concurrent/locks/Condition;)V

    .line 109
    iget-object v0, p0, Ltv/periscope/android/chat/h;->d:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0, v0}, Ltv/periscope/android/chat/h;->a(Ljava/util/concurrent/locks/Condition;)V

    .line 110
    return-void
.end method

.method protected e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 115
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/chat/h;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 138
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/chat/h;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v0, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 142
    return-void

    .line 140
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ltv/periscope/android/chat/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Ltv/periscope/android/chat/h;->d:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0, v0}, Ltv/periscope/android/chat/h;->a(Ljava/util/concurrent/locks/Condition;)V

    .line 146
    return-void
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ltv/periscope/model/chat/MessageType$Throttle;",
            "Ltv/periscope/android/chat/j",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Ltv/periscope/android/chat/h;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
