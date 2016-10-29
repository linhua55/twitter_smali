.class public Lti;
.super Lbvv;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/av/playback/AVPlayer;

.field private final b:Lcom/twitter/library/av/playback/cj;


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/twitter/library/av/playback/cj;

    invoke-direct {v0}, Lcom/twitter/library/av/playback/cj;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lti;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/playback/cj;)V

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/playback/cj;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lbvv;-><init>(Lcom/twitter/model/av/AVMedia;)V

    .line 33
    iput-object p1, p0, Lti;->a:Lcom/twitter/library/av/playback/AVPlayer;

    .line 34
    iput-object p3, p0, Lti;->b:Lcom/twitter/library/av/playback/cj;

    .line 35
    return-void
.end method

.method static a(JJZ)Z
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    sub-long v4, p0, p2

    .line 127
    if-eqz p4, :cond_1

    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    move v2, v0

    .line 128
    :goto_0
    if-eqz v2, :cond_3

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 127
    goto :goto_0

    :cond_1
    cmp-long v2, v4, v2

    if-ltz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 128
    goto :goto_1
.end method


# virtual methods
.method a(Lcom/twitter/library/av/playback/bl;Lcom/twitter/library/av/playback/cj;)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x1

    .line 67
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-wide v4, p1, Lcom/twitter/library/av/playback/bl;->c:J

    .line 72
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_7

    move v0, v1

    .line 73
    :goto_1
    const-wide/16 v6, 0x4

    div-long v6, v4, v6

    .line 74
    iget-wide v8, p1, Lcom/twitter/library/av/playback/bl;->b:J

    .line 76
    iget-boolean v3, p2, Lcom/twitter/library/av/playback/cj;->a:Z

    if-nez v3, :cond_2

    .line 77
    iput-boolean v1, p2, Lcom/twitter/library/av/playback/cj;->a:Z

    .line 78
    iget-object v3, p0, Lti;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const-string/jumbo v10, "playback_start"

    iget-object v11, p0, Lti;->c:Lcom/twitter/model/av/AVMedia;

    invoke-virtual {v3, v10, v12, v11}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V

    .line 81
    :cond_2
    if-nez v0, :cond_0

    .line 82
    iget-boolean v0, p2, Lcom/twitter/library/av/playback/cj;->b:Z

    if-nez v0, :cond_3

    .line 83
    invoke-static {v8, v9, v6, v7, v2}, Lti;->a(JJZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iput-boolean v1, p2, Lcom/twitter/library/av/playback/cj;->b:Z

    .line 85
    iget-object v0, p0, Lti;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const-string/jumbo v3, "playback_25"

    iget-object v10, p0, Lti;->c:Lcom/twitter/model/av/AVMedia;

    invoke-virtual {v0, v3, v12, v10}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V

    .line 88
    :cond_3
    iget-boolean v0, p2, Lcom/twitter/library/av/playback/cj;->c:Z

    if-nez v0, :cond_4

    const-wide/16 v10, 0x2

    mul-long/2addr v10, v6

    .line 89
    invoke-static {v8, v9, v10, v11, v2}, Lti;->a(JJZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    iput-boolean v1, p2, Lcom/twitter/library/av/playback/cj;->c:Z

    .line 91
    iget-object v0, p0, Lti;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const-string/jumbo v3, "playback_50"

    iget-object v10, p0, Lti;->c:Lcom/twitter/model/av/AVMedia;

    invoke-virtual {v0, v3, v12, v10}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V

    .line 94
    :cond_4
    iget-boolean v0, p2, Lcom/twitter/library/av/playback/cj;->d:Z

    if-nez v0, :cond_5

    const-wide/16 v10, 0x3

    mul-long/2addr v6, v10

    .line 95
    invoke-static {v8, v9, v6, v7, v2}, Lti;->a(JJZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    iput-boolean v1, p2, Lcom/twitter/library/av/playback/cj;->d:Z

    .line 97
    iget-object v0, p0, Lti;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const-string/jumbo v2, "playback_75"

    iget-object v3, p0, Lti;->c:Lcom/twitter/model/av/AVMedia;

    invoke-virtual {v0, v2, v12, v3}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V

    .line 100
    :cond_5
    long-to-double v2, v4

    const-wide v6, 0x3fee666666666666L    # 0.95

    mul-double/2addr v2, v6

    double-to-long v2, v2

    .line 101
    iget-boolean v0, p2, Lcom/twitter/library/av/playback/cj;->e:Z

    if-nez v0, :cond_6

    .line 102
    invoke-static {v8, v9, v2, v3, v1}, Lti;->a(JJZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    iput-boolean v1, p2, Lcom/twitter/library/av/playback/cj;->e:Z

    .line 104
    iget-object v0, p0, Lti;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const-string/jumbo v2, "playback_95"

    iget-object v3, p0, Lti;->c:Lcom/twitter/model/av/AVMedia;

    invoke-virtual {v0, v2, v12, v3}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V

    .line 107
    :cond_6
    iget-boolean v0, p2, Lcom/twitter/library/av/playback/cj;->f:Z

    if-nez v0, :cond_0

    .line 108
    invoke-static {v8, v9, v4, v5, v1}, Lti;->a(JJZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iput-boolean v1, p2, Lcom/twitter/library/av/playback/cj;->f:Z

    .line 110
    iget-object v0, p0, Lti;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const-string/jumbo v1, "playback_complete"

    iget-object v2, p0, Lti;->c:Lcom/twitter/model/av/AVMedia;

    invoke-virtual {v0, v1, v12, v2}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 72
    goto/16 :goto_1
.end method

.method public processLoop(Lbwb;)V
    .locals 1
    .annotation runtime Lbvt;
        a = Lbwb;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lti;->c:Lcom/twitter/model/av/AVMedia;

    invoke-interface {v0}, Lcom/twitter/model/av/AVMedia;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lti;->b:Lcom/twitter/library/av/playback/cj;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/cj;->a()V

    .line 57
    :cond_0
    return-void
.end method

.method public processPlay(Lbwd;)V
    .locals 1
    .annotation runtime Lbvt;
        a = Lbwd;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lti;->b:Lcom/twitter/library/av/playback/cj;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/cj;->a()V

    .line 50
    return-void
.end method

.method public processReplay(Lbwf;)V
    .locals 1
    .annotation runtime Lbvt;
        a = Lbwf;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lti;->b:Lcom/twitter/library/av/playback/cj;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/cj;->a()V

    .line 45
    return-void
.end method

.method public processTick(Lbwi;)V
    .locals 2
    .annotation runtime Lbvt;
        a = Lbwi;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p1, Lbwi;->b:Lcom/twitter/library/av/playback/bl;

    iget-object v1, p0, Lti;->b:Lcom/twitter/library/av/playback/cj;

    invoke-virtual {p0, v0, v1}, Lti;->a(Lcom/twitter/library/av/playback/bl;Lcom/twitter/library/av/playback/cj;)V

    .line 40
    return-void
.end method
