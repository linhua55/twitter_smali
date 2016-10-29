.class public Lbwx;
.super Lbwl;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/twitter/util/telephony/TelephonyUtil;


# direct methods
.method public constructor <init>(Lcom/twitter/library/api/periscope/PeriscopeCapiModel;Ljava/lang/String;Lcom/twitter/util/telephony/TelephonyUtil;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lbwl;-><init>()V

    .line 33
    iput-object p1, p0, Lbwx;->a:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    .line 34
    iput-object p2, p0, Lbwx;->b:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lbwx;->c:Lcom/twitter/util/telephony/TelephonyUtil;

    .line 36
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/twitter/internal/network/i;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/av/playback/ba;)Lcom/twitter/model/av/AVMediaPlaylist;
    .locals 10

    .prologue
    .line 49
    iget-object v0, p0, Lbwx;->b:Ljava/lang/String;

    invoke-static {v0}, Ltv/periscope/android/library/g;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    iget-object v0, p0, Lbwx;->c:Lcom/twitter/util/telephony/TelephonyUtil;

    invoke-virtual {v0}, Lcom/twitter/util/telephony/TelephonyUtil;->e()Lcom/twitter/util/network/c;

    move-result-object v4

    .line 51
    iget-object v0, p0, Lbwx;->a:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v0}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/twitter/library/av/model/PeriscopePlaylist;

    iget-object v1, p0, Lbwx;->a:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v1}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbwx;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/twitter/util/network/c;->b:Ljava/lang/String;

    iget-object v5, p0, Lbwx;->a:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    .line 53
    invoke-virtual {v5}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->k()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/av/model/PeriscopePlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lbwx;->a:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    iget-object v6, v0, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->a:Ljava/lang/Object;

    monitor-enter v6

    .line 57
    :try_start_0
    iget-object v0, p0, Lbwx;->a:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    iget-object v0, v0, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Lbwx;->b()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 58
    iget-object v0, p0, Lbwx;->a:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v0}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    new-instance v0, Lcom/twitter/library/av/model/PeriscopePlaylist;

    iget-object v1, p0, Lbwx;->a:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v1}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbwx;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/twitter/util/network/c;->b:Ljava/lang/String;

    iget-object v5, p0, Lbwx;->a:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    .line 60
    invoke-virtual {v5}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->k()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/av/model/PeriscopePlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v6

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    :cond_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    new-instance v0, Lcom/twitter/model/av/InvalidPlaylist;

    invoke-direct {v0}, Lcom/twitter/model/av/InvalidPlaylist;-><init>()V

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
    .line 74
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
    .line 93
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
    .line 87
    return-void
.end method

.method public b()J
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lbwx;->a:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v0}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method
