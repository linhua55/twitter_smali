.class public Lcom/twitter/library/av/playback/z;
.super Lcom/twitter/library/av/playback/a;
.source "Twttr"


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/ac;)V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x2

    .line 34
    invoke-static {}, Lcom/twitter/library/av/playback/z;->a()I

    move-result v1

    const/16 v2, 0x7d0

    .line 32
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/twitter/library/av/playback/z;-><init>(Lcom/twitter/library/av/playback/ac;Lcom/google/android/exoplayer/ExoPlayer;)V

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/twitter/library/av/playback/ac;Lcom/google/android/exoplayer/ExoPlayer;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/av/playback/a;-><init>(Lcom/twitter/library/av/playback/ac;Lcom/google/android/exoplayer/ExoPlayer;)V

    .line 29
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 40
    iget-object v0, p0, Lcom/twitter/library/av/playback/z;->f:Lcom/twitter/model/av/AVMedia;

    invoke-interface {v0}, Lcom/twitter/model/av/AVMedia;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 41
    new-instance v3, Lcom/twitter/library/av/playback/i;

    const/16 v0, 0x2000

    const/16 v2, 0xc9

    invoke-direct {v3, v0, v2}, Lcom/twitter/library/av/playback/i;-><init>(II)V

    .line 42
    invoke-virtual {v3, p0}, Lcom/twitter/library/av/playback/i;->a(Lcom/twitter/library/av/playback/j;)V

    .line 43
    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    const/4 v0, 0x0

    invoke-direct {v2, p1, v0, p2}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 44
    new-instance v6, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;

    invoke-direct {v6}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;-><init>()V

    .line 45
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    const/high16 v4, 0x190000

    new-array v5, v9, [Lcom/google/android/exoplayer/extractor/Extractor;

    aput-object v6, v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;I[Lcom/google/android/exoplayer/extractor/Extractor;)V

    .line 47
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    sget-object v4, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const-wide/16 v6, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/z;->o()Landroid/os/Handler;

    move-result-object v8

    move-object v2, p1

    move-object v3, v0

    move v5, v9

    move-object v9, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 57
    new-instance v2, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v3, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    .line 58
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/z;->o()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4, p0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/twitter/library/av/playback/z;->b(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/twitter/library/av/playback/z;->a(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 62
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/z;->h()V

    .line 63
    return-void
.end method

.method public onPlayerSeekComplete()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
