.class public Lbwm;
.super Lbwl;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lbwl;-><init>()V

    return-void
.end method

.method private b(Lcom/twitter/internal/network/HttpOperation;)Lcom/twitter/model/av/AudioPlaylist;
    .locals 3

    .prologue
    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->l()Lcom/twitter/internal/network/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->l()Lcom/twitter/internal/network/k;

    move-result-object v0

    iget v0, v0, Lcom/twitter/internal/network/k;->a:I

    .line 66
    :goto_0
    new-instance v1, Lcom/twitter/model/av/AudioPlaylist;

    invoke-static {p1}, Lbwm;->a(Lcom/twitter/internal/network/HttpOperation;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/twitter/model/av/AudioPlaylist;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 65
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/twitter/internal/network/i;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/twitter/library/av/model/parser/a;

    invoke-direct {v0, p1}, Lcom/twitter/library/av/model/parser/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected synthetic a(Lcom/twitter/library/av/playback/ba;Lcom/twitter/internal/network/i;Lcom/twitter/internal/network/HttpOperation;Ljava/util/Map;Lcom/twitter/model/av/DynamicAdInfo;)Lcom/twitter/model/av/AVMediaPlaylist;
    .locals 1

    .prologue
    .line 29
    invoke-virtual/range {p0 .. p5}, Lbwm;->b(Lcom/twitter/library/av/playback/ba;Lcom/twitter/internal/network/i;Lcom/twitter/internal/network/HttpOperation;Ljava/util/Map;Lcom/twitter/model/av/DynamicAdInfo;)Lcom/twitter/model/av/AudioPlaylist;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 84
    const-string/jumbo v0, "audio_configurations_client_user_id_playlist_request_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/twitter/library/av/g;->a()Lcom/twitter/library/av/g;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    .line 89
    invoke-static {p3}, Lcom/twitter/model/av/AudioPlaylist;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Lcom/twitter/library/av/g;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lbwl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Ljava/util/Map;Lcom/twitter/util/network/c;)V
    .locals 2
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
    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v1, "locale"

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
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
    .line 71
    return-void
.end method

.method protected b(Lcom/twitter/library/av/playback/ba;Lcom/twitter/internal/network/i;Lcom/twitter/internal/network/HttpOperation;Ljava/util/Map;Lcom/twitter/model/av/DynamicAdInfo;)Lcom/twitter/model/av/AudioPlaylist;
    .locals 2
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
            "Lcom/twitter/model/av/AudioPlaylist;"
        }
    .end annotation

    .prologue
    .line 54
    check-cast p2, Lcom/twitter/library/av/model/parser/a;

    .line 55
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/twitter/library/av/model/parser/a;->a:Lcom/twitter/model/av/AudioPlaylist;

    .line 57
    :goto_0
    invoke-direct {p0, p3}, Lbwm;->b(Lcom/twitter/internal/network/HttpOperation;)Lcom/twitter/model/av/AudioPlaylist;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/AudioPlaylist;

    .line 58
    invoke-virtual {p1}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/library/av/playback/AVDataSource;->h()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/twitter/model/av/AudioPlaylist;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 59
    return-object v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
