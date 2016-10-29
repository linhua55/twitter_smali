.class public Lcom/twitter/library/av/playback/p;
.super Lcom/twitter/library/av/playback/a;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/av/playback/ExoPlayerHelper;


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/ac;Lcom/twitter/library/av/playback/ExoPlayerHelper;)V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x2

    .line 39
    invoke-static {}, Lcom/twitter/library/av/playback/p;->a()I

    move-result v1

    const/16 v2, 0x7d0

    .line 37
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/library/av/playback/p;-><init>(Lcom/twitter/library/av/playback/ac;Lcom/twitter/library/av/playback/ExoPlayerHelper;Lcom/google/android/exoplayer/ExoPlayer;)V

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/twitter/library/av/playback/ac;Lcom/twitter/library/av/playback/ExoPlayerHelper;Lcom/google/android/exoplayer/ExoPlayer;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p3}, Lcom/twitter/library/av/playback/a;-><init>(Lcom/twitter/library/av/playback/ac;Lcom/google/android/exoplayer/ExoPlayer;)V

    .line 31
    iput-object p2, p0, Lcom/twitter/library/av/playback/p;->a:Lcom/twitter/library/av/playback/ExoPlayerHelper;

    .line 32
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V
    .locals 10

    .prologue
    const/16 v1, 0x2000

    .line 62
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/p;->o()Landroid/os/Handler;

    move-result-object v4

    .line 63
    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    const/4 v0, 0x0

    invoke-direct {v2, v4, v0}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 64
    new-instance v6, Lcom/twitter/library/av/playback/i;

    const/16 v0, 0xc9

    invoke-direct {v6, v1, v0}, Lcom/twitter/library/av/playback/i;-><init>(II)V

    .line 67
    new-instance v8, Lcom/twitter/library/av/playback/i;

    const/16 v0, 0x29

    invoke-direct {v8, v1, v0}, Lcom/twitter/library/av/playback/i;-><init>(II)V

    .line 70
    invoke-virtual {v6, p0}, Lcom/twitter/library/av/playback/i;->a(Lcom/twitter/library/av/playback/j;)V

    .line 71
    invoke-virtual {v8, p0}, Lcom/twitter/library/av/playback/i;->a(Lcom/twitter/library/av/playback/j;)V

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/p;->a:Lcom/twitter/library/av/playback/ExoPlayerHelper;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p0

    move-object v7, p3

    .line 74
    invoke-virtual/range {v0 .. v7}, Lcom/twitter/library/av/playback/ExoPlayerHelper;->a(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;Lcom/google/android/exoplayer/upstream/Allocator;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)Lcom/google/android/exoplayer/TrackRenderer;

    move-result-object v9

    .line 76
    iget-object v0, p0, Lcom/twitter/library/av/playback/p;->a:Lcom/twitter/library/av/playback/ExoPlayerHelper;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p0

    move-object v6, v8

    move-object v7, p3

    .line 77
    invoke-virtual/range {v0 .. v7}, Lcom/twitter/library/av/playback/ExoPlayerHelper;->a(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/upstream/Allocator;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)Lcom/google/android/exoplayer/TrackRenderer;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v9}, Lcom/twitter/library/av/playback/p;->a(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/p;->b(Lcom/google/android/exoplayer/TrackRenderer;)V
    :try_end_0
    .catch Lcom/twitter/library/av/playback/ExoPlayerHelper$BuildRendererException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/p;->h()V

    .line 85
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/library/av/playback/p;->a(ZLjava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V
    .locals 6

    .prologue
    .line 45
    iget-object v0, p0, Lcom/twitter/library/av/playback/p;->a:Lcom/twitter/library/av/playback/ExoPlayerHelper;

    invoke-interface {p3}, Lcom/twitter/model/av/AVMedia;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;

    invoke-direct {v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;-><init>()V

    new-instance v5, Lcom/twitter/library/av/playback/q;

    invoke-direct {v5, p0, p1, p2}, Lcom/twitter/library/av/playback/q;-><init>(Lcom/twitter/library/av/playback/p;Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/av/playback/ExoPlayerHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 58
    return-void
.end method

.method public onPlayerSeekComplete()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
