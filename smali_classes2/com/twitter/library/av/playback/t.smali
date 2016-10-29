.class public Lcom/twitter/library/av/playback/t;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/av/playback/ExoPlayerHelper;

.field private final b:Lcom/twitter/library/av/playback/ac;


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/ac;Lcom/twitter/library/av/playback/ExoPlayerHelper;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/twitter/library/av/playback/t;->a:Lcom/twitter/library/av/playback/ExoPlayerHelper;

    .line 73
    iput-object p1, p0, Lcom/twitter/library/av/playback/t;->b:Lcom/twitter/library/av/playback/ac;

    .line 74
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/library/av/playback/r;
    .locals 5

    .prologue
    .line 78
    const-string/jumbo v0, "android_media_playback_enable_hls_subtitle_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 80
    if-eqz v1, :cond_0

    const/4 v0, 0x3

    .line 81
    :goto_0
    invoke-static {}, Lcom/twitter/library/av/playback/a;->a()I

    move-result v2

    const/16 v3, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v0

    .line 82
    new-instance v2, Lcom/twitter/library/av/playback/r;

    iget-object v3, p0, Lcom/twitter/library/av/playback/t;->b:Lcom/twitter/library/av/playback/ac;

    iget-object v4, p0, Lcom/twitter/library/av/playback/t;->a:Lcom/twitter/library/av/playback/ExoPlayerHelper;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/twitter/library/av/playback/r;-><init>(Lcom/twitter/library/av/playback/ac;Lcom/twitter/library/av/playback/ExoPlayerHelper;Lcom/google/android/exoplayer/ExoPlayer;Z)V

    return-object v2

    .line 80
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
