.class public Ltl;
.super Lbvs;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/library/av/playback/AVPlayer;

.field private b:Z

.field private c:J


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lbvs;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltl;->b:Z

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltl;->c:J

    .line 31
    iput-object p1, p0, Ltl;->a:Lcom/twitter/library/av/playback/AVPlayer;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lbvq;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Ltl;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processPlaybackError(Lbwe;)V
    .locals 6
    .annotation runtime Lbvt;
        a = Lbwe;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-wide v2, p0, Ltl;->c:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Ltl;->c:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 43
    :goto_0
    iget-object v2, p0, Ltl;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const-string/jumbo v3, "playback_startup_error"

    iget-object v4, p1, Lbwe;->b:Ljava/lang/String;

    new-instance v5, Lcom/twitter/library/av/e;

    invoke-direct {v5}, Lcom/twitter/library/av/e;-><init>()V

    .line 44
    invoke-virtual {v5, v0}, Lcom/twitter/library/av/e;->a(Ljava/lang/Long;)Lcom/twitter/library/av/e;

    move-result-object v0

    .line 43
    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/e;)V

    .line 45
    return-void

    :cond_0
    move-object v0, v1

    .line 42
    goto :goto_0
.end method

.method public processShowEvent(Lbwh;)V
    .locals 2
    .annotation runtime Lbvt;
        a = Lbwh;
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ltl;->c:J

    .line 37
    return-void
.end method

.method public processTickEvent(Lbwi;)V
    .locals 1
    .annotation runtime Lbvt;
        a = Lbwi;
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltl;->b:Z

    .line 50
    return-void
.end method
