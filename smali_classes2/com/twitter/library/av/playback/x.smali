.class Lcom/twitter/library/av/playback/x;
.super Lcom/twitter/library/av/playback/cb;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/av/playback/r;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/r;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/twitter/library/av/playback/x;->a:Lcom/twitter/library/av/playback/r;

    invoke-direct {p0}, Lcom/twitter/library/av/playback/cb;-><init>()V

    return-void
.end method


# virtual methods
.method public onCryptoError(Landroid/media/MediaCodec$CryptoException;)V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/twitter/library/av/playback/x;->a:Lcom/twitter/library/av/playback/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/twitter/library/av/playback/r;->a(ZLjava/lang/Exception;)V

    .line 250
    return-void
.end method

.method public onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/twitter/library/av/playback/x;->a:Lcom/twitter/library/av/playback/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/twitter/library/av/playback/r;->a(ZLjava/lang/Exception;)V

    .line 245
    return-void
.end method

.method public onDrawnToSurface(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/library/av/playback/x;->a:Lcom/twitter/library/av/playback/r;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/playback/r;->onDrawnToSurface(Landroid/view/Surface;)V

    .line 261
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/twitter/library/av/playback/x;->a:Lcom/twitter/library/av/playback/r;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/twitter/library/av/playback/r;->onVideoSizeChanged(IIIF)V

    .line 256
    return-void
.end method
