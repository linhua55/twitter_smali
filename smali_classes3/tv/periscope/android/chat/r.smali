.class Ltv/periscope/android/chat/r;
.super Ltv/periscope/android/chat/h;
.source "Twttr"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/chat/h",
        "<",
        "Ltv/periscope/android/chat/w;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:J


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Lde/greenrobot/event/c;

.field private final d:Ltv/periscope/android/data/f;

.field private final e:Ltv/periscope/android/chat/d;

.field private final f:Z

.field private g:Ltv/periscope/android/player/e;

.field private h:Ltv/periscope/android/chat/x;

.field private volatile i:Z

.field private volatile j:I

.field private k:Ltv/periscope/android/chat/f;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ltv/periscope/android/chat/r;->a:J

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/c;Ltv/periscope/android/data/f;Ltv/periscope/android/chat/d;Ltv/periscope/android/player/e;ZLtv/periscope/android/chat/i;Z)V
    .locals 2

    .prologue
    .line 65
    if-eqz p5, :cond_0

    new-instance v0, Ltv/periscope/android/chat/u;

    invoke-direct {v0}, Ltv/periscope/android/chat/u;-><init>()V

    :goto_0
    invoke-direct {p0, v0, p6, p7}, Ltv/periscope/android/chat/h;-><init>(Ljava/util/Comparator;Ltv/periscope/android/chat/i;Z)V

    .line 40
    new-instance v0, Landroid/os/Handler;

    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltv/periscope/android/chat/r;->b:Landroid/os/Handler;

    .line 66
    iput-object p1, p0, Ltv/periscope/android/chat/r;->c:Lde/greenrobot/event/c;

    .line 67
    iput-object p2, p0, Ltv/periscope/android/chat/r;->d:Ltv/periscope/android/data/f;

    .line 68
    iput-object p3, p0, Ltv/periscope/android/chat/r;->e:Ltv/periscope/android/chat/d;

    .line 69
    iput-boolean p5, p0, Ltv/periscope/android/chat/r;->f:Z

    .line 71
    iput-object p4, p0, Ltv/periscope/android/chat/r;->g:Ltv/periscope/android/player/e;

    .line 72
    return-void

    .line 65
    :cond_0
    new-instance v0, Ltv/periscope/android/chat/v;

    invoke-direct {v0}, Ltv/periscope/android/chat/v;-><init>()V

    goto :goto_0
.end method

.method static synthetic a(Ltv/periscope/android/chat/r;)Ltv/periscope/android/player/e;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ltv/periscope/android/chat/r;->g:Ltv/periscope/android/player/e;

    return-object v0
.end method

.method private a(Ltv/periscope/android/chat/f;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9

    .prologue
    .line 155
    iget-object v7, p0, Ltv/periscope/android/chat/r;->b:Landroid/os/Handler;

    new-instance v0, Ltv/periscope/android/chat/s;

    move-object v1, p0

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ltv/periscope/android/chat/s;-><init>(Ltv/periscope/android/chat/r;JLjava/lang/String;Ltv/periscope/android/chat/f;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method static synthetic b(Ltv/periscope/android/chat/r;)Ltv/periscope/android/chat/d;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ltv/periscope/android/chat/r;->e:Ltv/periscope/android/chat/d;

    return-object v0
.end method

.method private b(Ltv/periscope/android/chat/f;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 172
    if-eqz p1, :cond_0

    invoke-static {p2}, Ldod;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/chat/r;->h:Ltv/periscope/android/chat/x;

    invoke-virtual {v0}, Ltv/periscope/android/chat/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Ltv/periscope/android/chat/r;->h:Ltv/periscope/android/chat/x;

    invoke-virtual {v0}, Ltv/periscope/android/chat/x;->b()J

    move-result-wide v4

    iget-object v0, p0, Ltv/periscope/android/chat/r;->h:Ltv/periscope/android/chat/x;

    invoke-virtual {v0}, Ltv/periscope/android/chat/x;->c()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Ltv/periscope/android/chat/r;->a(Ltv/periscope/android/chat/f;Ljava/lang/String;JLjava/lang/String;)V

    .line 174
    iget-object v0, p0, Ltv/periscope/android/chat/r;->h:Ltv/periscope/android/chat/x;

    invoke-virtual {v0, v7, v7}, Ltv/periscope/android/chat/x;->a(ZZ)V

    .line 176
    :cond_0
    return-void
.end method

.method private d(Ltv/periscope/android/chat/w;)V
    .locals 4

    .prologue
    .line 201
    sget-object v0, Ltv/periscope/android/chat/t;->a:[I

    iget-object v1, p1, Ltv/periscope/android/chat/w;->a:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 208
    :pswitch_1
    iget-object v0, p1, Ltv/periscope/android/chat/w;->a:Ltv/periscope/model/chat/MessageType;

    sget-object v1, Ltv/periscope/model/chat/MessageType;->d:Ltv/periscope/model/chat/MessageType;

    if-ne v0, v1, :cond_1

    iget v0, p0, Ltv/periscope/android/chat/r;->j:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 209
    invoke-virtual {p1}, Ltv/periscope/android/chat/w;->b()J

    move-result-wide v0

    sget-wide v2, Ltv/periscope/android/chat/r;->a:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 214
    :cond_1
    iget-object v0, p1, Ltv/periscope/android/chat/w;->b:Ltv/periscope/model/chat/Message;

    invoke-virtual {v0}, Ltv/periscope/model/chat/Message;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/periscope/android/chat/r;->d:Ltv/periscope/android/data/f;

    iget-object v1, p1, Ltv/periscope/android/chat/w;->b:Ltv/periscope/model/chat/Message;

    invoke-virtual {v1}, Ltv/periscope/model/chat/Message;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/android/data/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 215
    :goto_1
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Ltv/periscope/android/chat/r;->c(Ltv/periscope/android/chat/w;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Ltv/periscope/android/chat/r;->c:Lde/greenrobot/event/c;

    iget-object v1, p1, Ltv/periscope/android/chat/w;->b:Ltv/periscope/model/chat/Message;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p1, Ltv/periscope/android/chat/w;->a:Ltv/periscope/model/chat/MessageType;

    sget-object v1, Ltv/periscope/model/chat/MessageType;->d:Ltv/periscope/model/chat/MessageType;

    if-ne v0, v1, :cond_0

    .line 221
    iget v0, p0, Ltv/periscope/android/chat/r;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/periscope/android/chat/r;->j:I

    goto :goto_0

    .line 214
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 227
    :cond_4
    invoke-virtual {p0, p1}, Ltv/periscope/android/chat/r;->b(Ltv/periscope/android/chat/w;)V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ltv/periscope/model/chat/MessageType$Throttle;",
            "Ltv/periscope/android/chat/j",
            "<",
            "Ltv/periscope/android/chat/w;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ltv/periscope/model/chat/MessageType$Throttle;",
            "Ltv/periscope/android/chat/j",
            "<",
            "Ltv/periscope/android/chat/w;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    const-wide/16 v2, 0x64

    .line 106
    iget-boolean v0, p0, Ltv/periscope/android/chat/r;->i:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Ltv/periscope/android/chat/r;->f()V

    .line 110
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/chat/j;

    .line 111
    iget-object v1, v0, Ltv/periscope/android/chat/j;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/periscope/android/chat/w;

    .line 112
    iget-object v0, v0, Ltv/periscope/android/chat/j;->b:Ltv/periscope/model/chat/MessageType$Throttle;

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/chat/r;->a(Ljava/lang/Object;Ltv/periscope/model/chat/MessageType$Throttle;)V

    goto :goto_0

    .line 117
    :cond_1
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/chat/r;->k:Ltv/periscope/android/chat/f;

    .line 119
    iget-object v1, p0, Ltv/periscope/android/chat/r;->l:Ljava/lang/String;

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v4, p0, Ltv/periscope/android/chat/r;->g:Ltv/periscope/android/player/e;

    invoke-interface {v4, v0}, Ltv/periscope/android/player/e;->a(Ltv/periscope/android/chat/f;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    invoke-direct {p0, v0, v1}, Ltv/periscope/android/chat/r;->b(Ltv/periscope/android/chat/f;Ljava/lang/String;)V

    .line 124
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/chat/j;

    .line 125
    iget-object v1, v0, Ltv/periscope/android/chat/j;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/periscope/android/chat/w;

    .line 126
    iget-object v5, v0, Ltv/periscope/android/chat/j;->b:Ltv/periscope/model/chat/MessageType$Throttle;

    invoke-virtual {p0, v5}, Ltv/periscope/android/chat/r;->a(Ltv/periscope/model/chat/MessageType$Throttle;)V

    .line 127
    if-eqz v1, :cond_5

    .line 128
    invoke-virtual {v0}, Ltv/periscope/android/chat/j;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    invoke-direct {p0, v1}, Ltv/periscope/android/chat/r;->d(Ltv/periscope/android/chat/w;)V

    .line 130
    invoke-virtual {v0}, Ltv/periscope/android/chat/j;->c()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    move-wide v2, v0

    .line 136
    goto :goto_1

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 132
    :cond_2
    iget-object v5, v0, Ltv/periscope/android/chat/j;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v0}, Ltv/periscope/android/chat/j;->b()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_2

    .line 138
    :cond_3
    const-wide/16 v2, 0x1f4

    .line 141
    :cond_4
    invoke-virtual {p0, v2, v3}, Ltv/periscope/android/chat/r;->a(J)V

    .line 142
    return-void

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method public declared-synchronized a(Ltv/periscope/android/chat/f;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ltv/periscope/android/chat/r;->k:Ltv/periscope/android/chat/f;

    .line 98
    iput-object p2, p0, Ltv/periscope/android/chat/r;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ltv/periscope/android/chat/x;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Ltv/periscope/android/chat/r;->h:Ltv/periscope/android/chat/x;

    .line 76
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p1, Ltv/periscope/android/chat/w;

    invoke-virtual {p0, p1}, Ltv/periscope/android/chat/r;->a(Ltv/periscope/android/chat/w;)Z

    move-result v0

    return v0
.end method

.method public a(Ltv/periscope/android/chat/w;)Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p1, Ltv/periscope/android/chat/w;->a:Ltv/periscope/model/chat/MessageType;

    sget-object v1, Ltv/periscope/model/chat/MessageType;->b:Ltv/periscope/model/chat/MessageType;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Ltv/periscope/android/chat/w;->a:Ltv/periscope/model/chat/MessageType;

    sget-object v1, Ltv/periscope/model/chat/MessageType;->c:Ltv/periscope/model/chat/MessageType;

    if-eq v0, v1, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ltv/periscope/android/chat/r;->c(Ltv/periscope/android/chat/w;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ltv/periscope/model/chat/MessageType$Throttle;Ljava/util/Queue;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p3, Ltv/periscope/android/chat/w;

    invoke-virtual {p0, p1, p2, p3}, Ltv/periscope/android/chat/r;->a(Ltv/periscope/model/chat/MessageType$Throttle;Ljava/util/Queue;Ltv/periscope/android/chat/w;)Z

    move-result v0

    return v0
.end method

.method public a(Ltv/periscope/model/chat/MessageType$Throttle;Ljava/util/Queue;Ltv/periscope/android/chat/w;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/periscope/model/chat/MessageType$Throttle;",
            "Ljava/util/Queue",
            "<",
            "Ltv/periscope/android/chat/w;",
            ">;",
            "Ltv/periscope/android/chat/w;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 180
    sget-object v1, Ltv/periscope/model/chat/MessageType$Throttle;->c:Ltv/periscope/model/chat/MessageType$Throttle;

    if-eq p1, v1, :cond_1

    sget-object v1, Ltv/periscope/model/chat/MessageType$Throttle;->b:Ltv/periscope/model/chat/MessageType$Throttle;

    if-eq p1, v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result v1

    iget v2, p1, Ltv/periscope/model/chat/MessageType$Throttle;->minQueueSizeForDrop:I

    if-le v1, v2, :cond_0

    .line 186
    invoke-virtual {p3}, Ltv/periscope/android/chat/w;->a()J

    move-result-wide v2

    iget-object v1, p0, Ltv/periscope/android/chat/r;->g:Ltv/periscope/android/player/e;

    invoke-interface {v1}, Ltv/periscope/android/player/e;->q()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 191
    iget-wide v4, p1, Ltv/periscope/model/chat/MessageType$Throttle;->deliveryThresholdMs:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-super {p0}, Ltv/periscope/android/chat/h;->b()V

    .line 82
    iget-object v0, p0, Ltv/periscope/android/chat/r;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 83
    iput-object v1, p0, Ltv/periscope/android/chat/r;->g:Ltv/periscope/android/player/e;

    .line 84
    iput-object v1, p0, Ltv/periscope/android/chat/r;->h:Ltv/periscope/android/chat/x;

    .line 85
    return-void
.end method

.method public b(Ltv/periscope/android/chat/w;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p1, Ltv/periscope/android/chat/w;->a:Ltv/periscope/model/chat/MessageType;

    iget-object v0, v0, Ltv/periscope/model/chat/MessageType;->throttle:Ltv/periscope/model/chat/MessageType$Throttle;

    invoke-virtual {p0, v0, p1}, Ltv/periscope/android/chat/r;->b(Ltv/periscope/model/chat/MessageType$Throttle;Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method protected c(Ltv/periscope/android/chat/w;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 243
    iget-boolean v2, p0, Ltv/periscope/android/chat/r;->f:Z

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Ltv/periscope/android/chat/r;->g:Ltv/periscope/android/player/e;

    invoke-interface {v2}, Ltv/periscope/android/player/e;->q()J

    move-result-wide v2

    .line 245
    invoke-virtual {p1}, Ltv/periscope/android/chat/w;->a()J

    move-result-wide v4

    .line 247
    const-wide/16 v6, 0x0

    cmp-long v6, v6, v2

    if-eqz v6, :cond_1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 247
    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {p1}, Ltv/periscope/android/chat/w;->b()J

    move-result-wide v2

    iget-object v4, p0, Ltv/periscope/android/chat/r;->g:Ltv/periscope/android/player/e;

    invoke-interface {v4}, Ltv/periscope/android/player/e;->d()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Ltv/periscope/android/chat/h;->d()V

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Ltv/periscope/android/chat/r;->j:I

    .line 257
    iget-object v0, p0, Ltv/periscope/android/chat/r;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/chat/r;->i:Z

    .line 89
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/chat/r;->i:Z

    .line 93
    invoke-virtual {p0}, Ltv/periscope/android/chat/r;->g()V

    .line 94
    return-void
.end method
