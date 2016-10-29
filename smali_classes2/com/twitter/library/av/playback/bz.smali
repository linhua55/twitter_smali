.class Lcom/twitter/library/av/playback/bz;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/exoplayer/player/g;
.implements Ltv/periscope/android/exoplayer/player/h;
.implements Ltv/periscope/android/exoplayer/player/i;
.implements Ltv/periscope/android/exoplayer/player/j;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/av/playback/bw;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/bw;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIF)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/twitter/library/av/playback/bw;->onVideoSizeChanged(IIIF)V

    .line 182
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bw;->a(Lcom/twitter/library/av/playback/bw;)Ltv/periscope/android/exoplayer/player/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bw;->a(Lcom/twitter/library/av/playback/bw;)Ltv/periscope/android/exoplayer/player/j;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ltv/periscope/android/exoplayer/player/j;->a(IIIF)V

    .line 185
    :cond_0
    return-void
.end method

.method public a(IJ)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/library/av/playback/bw;->onDroppedFrames(IJ)V

    .line 129
    return-void
.end method

.method public a(IJIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public a(IJIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public a(IJJ)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public a(ILcom/google/android/exoplayer/TimeRange;)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public a(ILjava/io/IOException;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public a(Landroid/media/MediaCodec$CryptoException;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/playback/bw;->onCryptoError(Landroid/media/MediaCodec$CryptoException;)V

    .line 217
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/playback/bw;->onDrawnToSurface(Landroid/view/Surface;)V

    .line 162
    return-void
.end method

.method public a(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/playback/bw;->onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 212
    return-void
.end method

.method public a(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/playback/bw;->onAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V

    .line 202
    return-void
.end method

.method public a(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/playback/bw;->onAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V

    .line 207
    return-void
.end method

.method public a(Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bw;->a(Lcom/twitter/library/av/playback/bw;)Ltv/periscope/android/exoplayer/player/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bw;->a(Lcom/twitter/library/av/playback/bw;)Ltv/periscope/android/exoplayer/player/j;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/exoplayer/player/j;->a(Ljava/lang/Exception;)V

    .line 176
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 6

    .prologue
    .line 151
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/av/playback/bw;->onDecoderInitialized(Ljava/lang/String;JJ)V

    .line 152
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/metadata/id3/Id3Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bw;->b(Lcom/twitter/library/av/playback/bw;)Ltv/periscope/android/exoplayer/player/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/periscope/android/exoplayer/player/t;->a(Ljava/util/List;)V

    .line 232
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bw;->c(Lcom/twitter/library/av/playback/bw;)Ltv/periscope/android/exoplayer/player/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bw;->c(Lcom/twitter/library/av/playback/bw;)Ltv/periscope/android/exoplayer/player/g;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/exoplayer/player/g;->a(Ljava/util/List;)V

    .line 235
    :cond_0
    return-void
.end method

.method public a(ZI)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bw;->a(Lcom/twitter/library/av/playback/bw;)Ltv/periscope/android/exoplayer/player/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bw;->a(Lcom/twitter/library/av/playback/bw;)Ltv/periscope/android/exoplayer/player/j;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/exoplayer/player/j;->a(ZI)V

    .line 169
    :cond_0
    return-void
.end method

.method public b(IJJ)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public b(Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bw;->a(Lcom/twitter/library/av/playback/bw;)Ltv/periscope/android/exoplayer/player/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/twitter/library/av/playback/bz;->a:Lcom/twitter/library/av/playback/bw;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bw;->a(Lcom/twitter/library/av/playback/bw;)Ltv/periscope/android/exoplayer/player/j;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/exoplayer/player/j;->c()V

    .line 192
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 227
    return-void
.end method
