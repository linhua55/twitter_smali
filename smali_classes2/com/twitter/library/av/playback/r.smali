.class public Lcom/twitter/library/av/playback/r;
.super Lcom/twitter/library/av/playback/a;
.source "Twttr"


# instance fields
.field a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final o:Lcom/twitter/library/av/playback/ExoPlayerHelper;

.field private final p:Landroid/content/Context;

.field private final q:Z


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/ac;Lcom/twitter/library/av/playback/ExoPlayerHelper;Lcom/google/android/exoplayer/ExoPlayer;Z)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p3}, Lcom/twitter/library/av/playback/a;-><init>(Lcom/twitter/library/av/playback/ac;Lcom/google/android/exoplayer/ExoPlayer;)V

    .line 90
    iput-object p2, p0, Lcom/twitter/library/av/playback/r;->o:Lcom/twitter/library/av/playback/ExoPlayerHelper;

    .line 91
    iput-boolean p4, p0, Lcom/twitter/library/av/playback/r;->q:Z

    .line 92
    iget-object v0, p1, Lcom/twitter/library/av/playback/ac;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/playback/r;->p:Landroid/content/Context;

    .line 93
    return-void
.end method

.method static r()Z
    .locals 2

    .prologue
    .line 125
    const-string/jumbo v0, "android_media_playback_use_hls_exoplayer"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;)V
    .locals 15

    .prologue
    .line 130
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    if-eqz v2, :cond_0

    move-object/from16 v2, p3

    .line 131
    check-cast v2, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    .line 134
    :try_start_0
    iget-object v2, v2, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 135
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I
    :try_end_0
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 140
    array-length v2, v2

    if-nez v2, :cond_0

    .line 141
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "No variants selected."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/twitter/library/av/playback/r;->a(ZLjava/lang/Exception;)V

    .line 190
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v2

    .line 137
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/twitter/library/av/playback/r;->a(ZLjava/lang/Exception;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/r;->o()Landroid/os/Handler;

    move-result-object v12

    .line 147
    new-instance v7, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    const/4 v2, 0x0

    invoke-direct {v7, v12, v2}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 148
    new-instance v9, Lcom/twitter/library/av/playback/i;

    const/16 v2, 0x2000

    const/16 v3, 0xc9

    invoke-direct {v9, v2, v3}, Lcom/twitter/library/av/playback/i;-><init>(II)V

    .line 151
    new-instance v2, Lcom/twitter/library/av/playback/i;

    const/16 v3, 0x2000

    const/16 v4, 0x29

    invoke-direct {v2, v3, v4}, Lcom/twitter/library/av/playback/i;-><init>(II)V

    .line 154
    invoke-virtual {v9, p0}, Lcom/twitter/library/av/playback/i;->a(Lcom/twitter/library/av/playback/j;)V

    .line 155
    invoke-virtual {v2, p0}, Lcom/twitter/library/av/playback/i;->a(Lcom/twitter/library/av/playback/j;)V

    .line 157
    iget-object v2, p0, Lcom/twitter/library/av/playback/r;->o:Lcom/twitter/library/av/playback/ExoPlayerHelper;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v7, v1}, Lcom/twitter/library/av/playback/ExoPlayerHelper;->a(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/DataSource;

    move-result-object v4

    .line 158
    new-instance v8, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

    invoke-direct {v8}, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;-><init>()V

    .line 161
    new-instance v2, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    const/4 v3, 0x1

    .line 163
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->newDefaultInstance(Landroid/content/Context;)Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    move-result-object v6

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;)V

    .line 164
    new-instance v5, Lcom/google/android/exoplayer/DefaultLoadControl;

    invoke-direct {v5, v9}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 165
    new-instance v3, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    const/high16 v6, 0x190000

    new-instance v8, Lcom/twitter/library/av/playback/v;

    invoke-direct {v8, p0}, Lcom/twitter/library/av/playback/v;-><init>(Lcom/twitter/library/av/playback/r;)V

    const/4 v9, 0x0

    move-object v4, v2

    move-object v7, v12

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 171
    new-instance v5, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    sget-object v8, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/4 v9, 0x1

    const-wide/16 v10, 0x1388

    new-instance v13, Lcom/twitter/library/av/playback/x;

    invoke-direct {v13, p0}, Lcom/twitter/library/av/playback/x;-><init>(Lcom/twitter/library/av/playback/r;)V

    const/4 v14, -0x1

    move-object/from16 v6, p1

    move-object v7, v3

    invoke-direct/range {v5 .. v14}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 176
    new-instance v7, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v9, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v8, v3

    move-object v13, p0

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    .line 179
    iget-boolean v2, p0, Lcom/twitter/library/av/playback/r;->q:Z

    if-eqz v2, :cond_1

    .line 182
    new-instance v2, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;

    new-instance v4, Lcom/twitter/library/av/playback/w;

    invoke-direct {v4, p0}, Lcom/twitter/library/av/playback/w;-><init>(Lcom/twitter/library/av/playback/r;)V

    .line 183
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v2, v3, v4, v6}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;)V

    .line 184
    invoke-virtual {p0, v2}, Lcom/twitter/library/av/playback/r;->c(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 187
    :cond_1
    invoke-virtual {p0, v7}, Lcom/twitter/library/av/playback/r;->b(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 188
    invoke-virtual {p0, v5}, Lcom/twitter/library/av/playback/r;->a(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 189
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/r;->h()V

    goto/16 :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V
    .locals 6

    .prologue
    .line 97
    iput-object p2, p0, Lcom/twitter/library/av/playback/r;->a:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/twitter/library/av/playback/r;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/RuntimeException;

    sget v2, Lbkb;->av_playback_forbidden_device:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/av/playback/r;->a(ZLjava/lang/Exception;)V

    .line 122
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string/jumbo v0, "AVMediaExoPlayerHls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openMedia() called with: userAgent = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], avMedia = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 104
    iget-object v0, p0, Lcom/twitter/library/av/playback/r;->o:Lcom/twitter/library/av/playback/ExoPlayerHelper;

    iget-object v3, p0, Lcom/twitter/library/av/playback/r;->e:Ljava/lang/String;

    new-instance v4, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {v4}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;-><init>()V

    new-instance v5, Lcom/twitter/library/av/playback/s;

    invoke-direct {v5, p0, v1, p2}, Lcom/twitter/library/av/playback/s;-><init>(Lcom/twitter/library/av/playback/r;Landroid/content/Context;Ljava/lang/String;)V

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/av/playback/ExoPlayerHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    goto :goto_0
.end method

.method public onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V
    .locals 4

    .prologue
    .line 194
    const-string/jumbo v0, "AVMediaExoPlayerHls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayerError() called with: error = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v0, "live_video_force_skip_forward_android_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {p1}, Lcom/google/android/exoplayer/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/exoplayer/BehindLiveWindowException;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/r;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/r;->u()V

    .line 202
    iget-object v0, p0, Lcom/twitter/library/av/playback/r;->d:Lbvr;

    new-instance v1, Lcom/twitter/library/av/playback/u;

    iget-object v2, p0, Lcom/twitter/library/av/playback/r;->f:Lcom/twitter/model/av/AVMedia;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/av/playback/u;-><init>(Lcom/twitter/model/av/AVMedia;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lbvr;->a(Lbvq;)V

    .line 203
    iget-object v0, p0, Lcom/twitter/library/av/playback/r;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/twitter/library/av/playback/r;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/library/av/playback/r;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/library/av/playback/r;->f:Lcom/twitter/model/av/AVMedia;

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/library/av/playback/r;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/library/av/playback/a;->onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-super {p0, p1}, Lcom/twitter/library/av/playback/a;->onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V

    goto :goto_0
.end method

.method public onPlayerSeekComplete()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method
