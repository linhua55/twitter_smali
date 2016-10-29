.class public Lte;
.super Lbvv;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/av/playback/AVPlayer;

.field private final b:Ltn;

.field private volatile d:J


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Ltn;

    const-wide/16 v2, 0x7530

    invoke-direct {v0, v2, v3}, Ltn;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Lte;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;Ltn;)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;Ltn;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p2}, Lbvv;-><init>(Lcom/twitter/model/av/AVMedia;)V

    .line 39
    iput-object p1, p0, Lte;->a:Lcom/twitter/library/av/playback/AVPlayer;

    .line 40
    iput-object p3, p0, Lte;->b:Ltn;

    .line 41
    return-void
.end method

.method private declared-synchronized a()J
    .locals 4

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lte;->d:J

    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    iput-wide v0, p0, Lte;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public processTick(Lbwi;)V
    .locals 4
    .annotation runtime Lbvt;
        a = Lbwi;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lte;->b:Ltn;

    invoke-direct {p0}, Lte;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ltn;->a(J)V

    .line 47
    iget-object v0, p0, Lte;->b:Ltn;

    invoke-virtual {v0}, Ltn;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lte;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const-string/jumbo v1, "checkpoint"

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method
