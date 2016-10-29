.class public Lbws;
.super Lbwl;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/model/livevideo/a;

.field private final b:J

.field private final c:Lbwt;

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/twitter/model/livevideo/a;JLbwt;)V
    .locals 6

    .prologue
    .line 49
    const-string/jumbo v0, "live_video_use_live_stream_acquisition_android_enabled"

    const/4 v1, 0x0

    .line 50
    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 49
    invoke-direct/range {v0 .. v5}, Lbws;-><init>(Lcom/twitter/model/livevideo/a;JLbwt;Z)V

    .line 51
    return-void
.end method

.method constructor <init>(Lcom/twitter/model/livevideo/a;JLbwt;Z)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lbwl;-><init>()V

    .line 58
    iput-object p1, p0, Lbws;->a:Lcom/twitter/model/livevideo/a;

    .line 59
    iput-object p4, p0, Lbws;->c:Lbwt;

    .line 60
    iput-boolean p5, p0, Lbws;->d:Z

    .line 61
    iput-wide p2, p0, Lbws;->b:J

    .line 62
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/twitter/internal/network/i;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/av/playback/ba;Lcom/twitter/library/av/l;)Lcom/twitter/model/av/AVMediaPlaylist;
    .locals 8

    .prologue
    .line 69
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/telephony/TelephonyUtil;->e()Lcom/twitter/util/network/c;

    move-result-object v1

    .line 71
    iget-boolean v0, p0, Lbws;->d:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lbws;->c:Lbwt;

    iget-object v2, p0, Lbws;->a:Lcom/twitter/model/livevideo/a;

    iget-wide v2, v2, Lcom/twitter/model/livevideo/a;->b:J

    invoke-interface {v0, v2, v3, p1}, Lbwt;->a(JLandroid/content/Context;)Lcom/twitter/model/av/m;

    move-result-object v3

    .line 74
    if-nez v3, :cond_0

    .line 75
    iget-object v0, p0, Lbws;->c:Lbwt;

    invoke-interface {v0}, Lbwt;->a()Lbps;

    move-result-object v2

    .line 76
    new-instance v0, Lcom/twitter/library/model/av/LiveVideoPlaylist;

    iget-object v1, v1, Lcom/twitter/util/network/c;->b:Ljava/lang/String;

    iget v3, v2, Lbps;->b:I

    iget v4, v2, Lbps;->b:I

    iget-object v2, v2, Lbps;->c:Ljava/lang/String;

    .line 77
    invoke-static {v4, v2}, Lbws;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/twitter/library/model/av/LiveVideoPlaylist;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v6, Lcom/twitter/library/model/av/LiveVideoPlaylist;

    iget-object v7, v1, Lcom/twitter/util/network/c;->b:Ljava/lang/String;

    new-instance v0, Lcom/twitter/library/av/model/LiveVideoMedia;

    iget-object v1, p0, Lbws;->a:Lcom/twitter/model/livevideo/a;

    iget-wide v1, v1, Lcom/twitter/model/livevideo/a;->b:J

    .line 80
    invoke-virtual {v3}, Lcom/twitter/model/av/m;->a()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lbws;->b:J

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/av/model/LiveVideoMedia;-><init>(JLjava/lang/String;J)V

    invoke-direct {v6, v7, v0}, Lcom/twitter/library/model/av/LiveVideoPlaylist;-><init>(Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V

    move-object v0, v6

    .line 79
    goto :goto_0

    .line 83
    :cond_1
    new-instance v6, Lcom/twitter/library/model/av/LiveVideoPlaylist;

    iget-object v7, v1, Lcom/twitter/util/network/c;->b:Ljava/lang/String;

    new-instance v0, Lcom/twitter/library/av/model/LiveVideoMedia;

    iget-object v1, p0, Lbws;->a:Lcom/twitter/model/livevideo/a;

    iget-wide v1, v1, Lcom/twitter/model/livevideo/a;->b:J

    iget-object v3, p0, Lbws;->a:Lcom/twitter/model/livevideo/a;

    iget-object v3, v3, Lcom/twitter/model/livevideo/a;->c:Ljava/lang/String;

    iget-wide v4, p0, Lbws;->b:J

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/av/model/LiveVideoMedia;-><init>(JLjava/lang/String;J)V

    invoke-direct {v6, v7, v0}, Lcom/twitter/library/model/av/LiveVideoPlaylist;-><init>(Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V

    move-object v0, v6

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/av/playback/ba;Lcom/twitter/internal/network/i;Lcom/twitter/internal/network/HttpOperation;Ljava/util/Map;Lcom/twitter/model/av/DynamicAdInfo;)Lcom/twitter/model/av/AVMediaPlaylist;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/av/playback/ba;",
            "Lcom/twitter/internal/network/i;",
            "Lcom/twitter/internal/network/HttpOperation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twitter/model/av/DynamicAdInfo;",
            ")",
            "Lcom/twitter/model/av/AVMediaPlaylist;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/util/Map;Lcom/twitter/util/network/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twitter/util/network/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    return-void
.end method

.method protected a(Landroid/net/Uri$Builder;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri$Builder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    return-void
.end method
