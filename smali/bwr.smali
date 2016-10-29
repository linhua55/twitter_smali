.class public Lbwr;
.super Lbwl;
.source "Twttr"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Z

.field private final b:Lcom/twitter/library/av/model/parser/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/twitter/library/av/model/parser/d;->a:Lcom/twitter/library/av/model/parser/d;

    invoke-direct {p0, v0}, Lbwr;-><init>(Lcom/twitter/library/av/model/parser/d;)V

    .line 67
    return-void
.end method

.method constructor <init>(Lcom/twitter/library/av/model/parser/d;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lbwl;-><init>()V

    .line 71
    iput-object p1, p0, Lbwr;->b:Lcom/twitter/library/av/model/parser/d;

    .line 72
    return-void
.end method

.method private a([Lcom/twitter/model/av/Video;)Lcom/twitter/model/av/Video;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 141
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    :cond_1
    array-length v0, p1

    if-le v0, v1, :cond_2

    aget-object v0, p1, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    aget-object v0, p1, v0

    goto :goto_0
.end method

.method private a([Lcom/twitter/model/av/Video;Lcom/twitter/model/av/DynamicAdInfo;)Lcom/twitter/model/av/Video;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 121
    iget-boolean v1, p0, Lbwr;->a:Z

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 126
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/twitter/model/av/DynamicAdInfo;->a:Lcom/twitter/model/av/DynamicAd;

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p2, Lcom/twitter/model/av/DynamicAdInfo;->a:Lcom/twitter/model/av/DynamicAd;

    .line 129
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/util/telephony/TelephonyUtil;->e()Lcom/twitter/util/network/c;

    move-result-object v2

    .line 130
    iget-object v3, p0, Lbwr;->b:Lcom/twitter/library/av/model/parser/d;

    .line 131
    invoke-virtual {v1}, Lcom/twitter/model/av/DynamicAd;->c()Ljava/util/List;

    move-result-object v4

    .line 130
    invoke-virtual {v3, v4, v2}, Lcom/twitter/library/av/model/parser/d;->a(Ljava/util/List;Lcom/twitter/util/network/c;)Lcom/twitter/util/collection/ab;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/model/av/DynamicAd;->a(Ljava/lang/String;)Lcom/twitter/model/av/Video;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_2
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    goto :goto_0
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;)Lcom/twitter/internal/network/i;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lbwr;->e(Landroid/content/Context;)Lcom/twitter/library/av/model/parser/c;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic a(Lcom/twitter/library/av/playback/ba;Lcom/twitter/internal/network/i;Lcom/twitter/internal/network/HttpOperation;Ljava/util/Map;Lcom/twitter/model/av/DynamicAdInfo;)Lcom/twitter/model/av/AVMediaPlaylist;
    .locals 1

    .prologue
    .line 41
    invoke-virtual/range {p0 .. p5}, Lbwr;->b(Lcom/twitter/library/av/playback/ba;Lcom/twitter/internal/network/i;Lcom/twitter/internal/network/HttpOperation;Ljava/util/Map;Lcom/twitter/model/av/DynamicAdInfo;)Lcom/twitter/model/av/VideoPlaylist;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/util/network/DownloadQuality;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lbwr;->c()Ljava/util/List;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lcom/twitter/util/network/DownloadQuality;->a()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 238
    invoke-virtual {p1}, Lcom/twitter/util/network/DownloadQuality;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lbwr;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/util/network/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p1, Lcom/twitter/util/network/c;->a:Lcom/twitter/util/network/DownloadQuality;

    invoke-virtual {p0, v0}, Lbwr;->a(Lcom/twitter/util/network/DownloadQuality;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/util/Map;Lcom/twitter/util/network/c;)V
    .locals 4
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
    .line 179
    iget-object v0, p3, Lcom/twitter/util/network/c;->a:Lcom/twitter/util/network/DownloadQuality;

    .line 185
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 187
    const-string/jumbo v2, "video_multi_bitrate_network_type"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    :try_start_0
    invoke-static {v1}, Lcom/twitter/util/network/DownloadQuality;->valueOf(Ljava/lang/String;)Lcom/twitter/util/network/DownloadQuality;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :cond_0
    :goto_0
    invoke-virtual {p0, p3}, Lbwr;->a(Lcom/twitter/util/network/c;)Ljava/lang/String;

    move-result-object v1

    .line 199
    const-string/jumbo v2, "Detected-Bandwidth"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string/jumbo v1, "Network-Quality-Bucket"

    invoke-virtual {v0}, Lcom/twitter/util/network/DownloadQuality;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v0, "Carrier-Name"

    iget-object v1, p3, Lcom/twitter/util/network/c;->c:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {}, Lbvo;->a()Lbvo;

    move-result-object v0

    .line 210
    const-string/jumbo v1, "Android-Profile-Main"

    invoke-virtual {v0}, Lbvo;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string/jumbo v1, "Android-Profile-High"

    invoke-virtual {v0}, Lbvo;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void

    .line 191
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected a(Landroid/net/Uri$Builder;Ljava/util/Map;)V
    .locals 2
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
    .line 170
    const-string/jumbo v1, "Detected-Bandwidth"

    const-string/jumbo v0, "Detected-Bandwidth"

    .line 171
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 172
    const-string/jumbo v1, "Android-Profile-Main"

    const-string/jumbo v0, "Android-Profile-Main"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 173
    const-string/jumbo v1, "Android-Profile-High"

    const-string/jumbo v0, "Android-Profile-High"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 174
    return-void
.end method

.method protected b(Lcom/twitter/library/av/playback/ba;Lcom/twitter/internal/network/i;Lcom/twitter/internal/network/HttpOperation;Ljava/util/Map;Lcom/twitter/model/av/DynamicAdInfo;)Lcom/twitter/model/av/VideoPlaylist;
    .locals 7
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
            "Lcom/twitter/model/av/VideoPlaylist;"
        }
    .end annotation

    .prologue
    .line 104
    check-cast p2, Lcom/twitter/library/av/model/parser/c;

    .line 105
    const/4 v5, 0x0

    .line 106
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/twitter/internal/network/HttpOperation;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget v0, p2, Lcom/twitter/library/av/model/parser/c;->b:I

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    iput v0, p2, Lcom/twitter/library/av/model/parser/c;->b:I

    .line 110
    :cond_0
    invoke-static {p3}, Lbwr;->a(Lcom/twitter/internal/network/HttpOperation;)Ljava/lang/String;

    move-result-object v5

    .line 113
    :cond_1
    iget-object v0, p2, Lcom/twitter/library/av/model/parser/c;->a:[Lcom/twitter/model/av/Video;

    invoke-direct {p0, v0, p5}, Lbwr;->a([Lcom/twitter/model/av/Video;Lcom/twitter/model/av/DynamicAdInfo;)Lcom/twitter/model/av/Video;

    move-result-object v2

    .line 114
    iget-object v0, p2, Lcom/twitter/library/av/model/parser/c;->a:[Lcom/twitter/model/av/Video;

    invoke-direct {p0, v0}, Lbwr;->a([Lcom/twitter/model/av/Video;)Lcom/twitter/model/av/Video;

    move-result-object v1

    .line 116
    new-instance v0, Lcom/twitter/model/av/VideoPlaylist;

    iget v3, p2, Lcom/twitter/library/av/model/parser/c;->b:I

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/model/av/VideoPlaylist;-><init>(Lcom/twitter/model/av/Video;Lcom/twitter/model/av/Video;ILjava/util/Map;Ljava/lang/String;Lcom/twitter/model/av/DynamicAdInfo;)V

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lbwr;->d()Ljava/lang/String;

    move-result-object v0

    .line 252
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    const-string/jumbo v0, "600"

    .line 256
    :cond_1
    return-object v0
.end method

.method protected c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    const-string/jumbo v0, "amplify_video_bitrate_buckets"

    invoke-static {v0}, Lcom/twitter/config/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    const-string/jumbo v0, "amplify_video_bitrate_default"

    invoke-static {v0}, Lcom/twitter/config/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e(Landroid/content/Context;)Lcom/twitter/library/av/model/parser/c;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/twitter/library/av/model/parser/VideoVmapPlaylistParser;->a()Lcom/twitter/library/av/model/parser/VideoVmapPlaylistParser;

    move-result-object v0

    return-object v0
.end method
