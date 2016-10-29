.class public Ltk;
.super Lbvv;
.source "Twttr"


# instance fields
.field volatile a:Ljava/util/Date;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Date;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/library/av/playback/AVPlayer;

.field private final e:Ltn;

.field private f:J

.field private g:J

.field private h:I


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Ltn;

    invoke-static {}, Ltk;->a()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ltn;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Ltk;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;Ltn;)V

    .line 55
    return-void
.end method

.method constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;Ltn;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p2}, Lbvv;-><init>(Lcom/twitter/model/av/AVMedia;)V

    .line 60
    iput-object p1, p0, Ltk;->d:Lcom/twitter/library/av/playback/AVPlayer;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltk;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    iput-object p3, p0, Ltk;->e:Ltn;

    .line 63
    return-void
.end method

.method static a()J
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 168
    const-string/jumbo v0, "live_video_scribe_heartbeat_interval_android"

    const-wide/16 v2, 0x1e

    .line 169
    invoke-static {v0, v2, v3}, Lcom/twitter/config/d;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 171
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Ltk;->a:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 185
    iget-wide v0, p0, Ltk;->g:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 186
    iget-wide v0, p0, Ltk;->f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Ltk;->g:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Ltk;->f:J

    .line 187
    iput-wide v6, p0, Ltk;->g:J

    .line 189
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 195
    invoke-direct {p0}, Ltk;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Ltk;->e:Ltn;

    invoke-virtual {v0}, Ltn;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltk;->b(J)V

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method a(J)Ljava/util/Date;
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Ltk;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ac;

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 130
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v0, v1

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(J)V
    .locals 13
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 145
    invoke-virtual {p0, p1, p2}, Ltk;->a(J)Ljava/util/Date;

    move-result-object v0

    .line 146
    iget-object v2, p0, Ltk;->a:Ljava/util/Date;

    .line 148
    invoke-direct {p0}, Ltk;->d()V

    .line 150
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 151
    iget-object v1, p0, Ltk;->e:Ltn;

    invoke-virtual {v1}, Ltn;->c()V

    .line 152
    new-instance v9, Lcom/twitter/library/av/e;

    invoke-direct {v9}, Lcom/twitter/library/av/e;-><init>()V

    .line 153
    new-instance v1, Lbvn;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 154
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget v6, p0, Ltk;->h:I

    iget-wide v7, p0, Ltk;->f:J

    invoke-direct/range {v1 .. v8}, Lbvn;-><init>(JJIJ)V

    .line 153
    invoke-virtual {v9, v1}, Lcom/twitter/library/av/e;->a(Lbvn;)Lcom/twitter/library/av/e;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Ltk;->a:Ljava/util/Date;

    .line 157
    iput-wide v10, p0, Ltk;->f:J

    .line 158
    iput-wide v10, p0, Ltk;->g:J

    .line 159
    iget-object v0, p0, Ltk;->d:Lcom/twitter/library/av/playback/AVPlayer;

    const-string/jumbo v1, "heartbeat"

    invoke-virtual {v0, v1, v9}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Lcom/twitter/library/av/e;)V

    .line 161
    :cond_0
    return-void
.end method

.method public processBitrateChange(Lbvy;)V
    .locals 1
    .annotation runtime Lbvt;
        a = Lbvy;
    .end annotation

    .prologue
    .line 105
    iget v0, p1, Lbvy;->b:I

    iput v0, p0, Ltk;->h:I

    .line 106
    return-void
.end method

.method public processBufferingEnded(Lbvz;)V
    .locals 0
    .annotation runtime Lbvt;
        a = Lbvz;
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Ltk;->d()V

    .line 116
    return-void
.end method

.method public processBufferingStarted(Lbwa;)V
    .locals 2
    .annotation runtime Lbvt;
        a = Lbwa;
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ltk;->g:J

    .line 111
    return-void
.end method

.method public processForcedSkipForward(Lcom/twitter/library/av/playback/u;)V
    .locals 2
    .annotation runtime Lbvt;
        a = Lcom/twitter/library/av/playback/u;
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ltk;->e()V

    .line 98
    iget-object v0, p0, Ltk;->e:Ltn;

    invoke-virtual {v0}, Ltn;->e()V

    .line 100
    iget-object v0, p0, Ltk;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public processMediaRelease(Lbvw;)V
    .locals 0
    .annotation runtime Lbvt;
        a = Lbvw;
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ltk;->e()V

    .line 87
    return-void
.end method

.method public processPause(Lbwc;)V
    .locals 0
    .annotation runtime Lbvt;
        a = Lbwc;
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ltk;->e()V

    .line 82
    return-void
.end method

.method public processProgramDateTimeUpdate(Lcom/twitter/library/av/playback/y;)V
    .locals 4
    .annotation runtime Lbvt;
        a = Lcom/twitter/library/av/playback/y;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Ltk;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p1, Lcom/twitter/library/av/playback/y;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/library/av/playback/y;->b:Ljava/util/Date;

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public processTick(Lbwi;)V
    .locals 4
    .annotation runtime Lbvt;
        a = Lbwi;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Ltk;->e:Ltn;

    iget-object v1, p1, Lbwi;->b:Lcom/twitter/library/av/playback/bl;

    iget-wide v2, v1, Lcom/twitter/library/av/playback/bl;->b:J

    invoke-virtual {v0, v2, v3}, Ltn;->a(J)V

    .line 69
    invoke-direct {p0}, Ltk;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Ltk;->e:Ltn;

    invoke-virtual {v0}, Ltn;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Ltk;->e:Ltn;

    invoke-virtual {v0}, Ltn;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltk;->b(J)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Ltk;->e:Ltn;

    invoke-virtual {v0}, Ltn;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltk;->a(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ltk;->a:Ljava/util/Date;

    .line 75
    iget-object v0, p0, Ltk;->e:Ltn;

    invoke-virtual {v0}, Ltn;->a()V

    goto :goto_0
.end method
