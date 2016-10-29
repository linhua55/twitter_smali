.class public Ltj;
.super Lbvs;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/av/playback/AVPlayer;

.field private b:Z

.field private c:Z

.field private d:J


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lbvs;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltj;->d:J

    .line 32
    iput-object p1, p0, Ltj;->a:Lcom/twitter/library/av/playback/AVPlayer;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lbvq;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Ltj;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltj;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processErrorEvent(Lbwe;)V
    .locals 1
    .annotation runtime Lbvt;
        a = Lbwe;
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltj;->c:Z

    .line 43
    return-void
.end method

.method public processPlayerRelease(Lbvx;)V
    .locals 6
    .annotation runtime Lbvt;
        a = Lbvx;
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 52
    iget-wide v0, p0, Ltj;->d:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Ltj;->d:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 53
    :goto_0
    iput-wide v4, p0, Ltj;->d:J

    .line 54
    iget-object v1, p0, Ltj;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const-string/jumbo v2, "playback_abandoned"

    new-instance v3, Lcom/twitter/library/av/e;

    invoke-direct {v3}, Lcom/twitter/library/av/e;-><init>()V

    invoke-virtual {v3, v0}, Lcom/twitter/library/av/e;->a(Ljava/lang/Long;)Lcom/twitter/library/av/e;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Lcom/twitter/library/av/e;)V

    .line 55
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processShowEvent(Lbwh;)V
    .locals 2
    .annotation runtime Lbvt;
        a = Lbwh;
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ltj;->d:J

    .line 48
    return-void
.end method

.method public processTick(Lbwi;)V
    .locals 1
    .annotation runtime Lbvt;
        a = Lbwi;
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltj;->b:Z

    .line 38
    return-void
.end method
