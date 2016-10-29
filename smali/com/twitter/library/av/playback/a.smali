.class public abstract Lcom/twitter/library/av/playback/a;
.super Lcom/twitter/library/av/playback/bp;
.source "Twttr"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer$Listener;
.implements Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
.implements Lcom/twitter/library/av/playback/j;


# instance fields
.field private final a:Lcom/google/android/exoplayer/ExoPlayer;

.field private final o:Landroid/os/Handler;

.field private p:Lcom/google/android/exoplayer/TrackRenderer;

.field private q:Lcom/google/android/exoplayer/TrackRenderer;

.field private r:Lcom/google/android/exoplayer/TrackRenderer;

.field private s:I

.field private t:I

.field private u:I

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/Exception;

.field private x:Z

.field private volatile y:J

.field private z:I


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/ac;Lcom/google/android/exoplayer/ExoPlayer;)V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/twitter/library/av/playback/bp;-><init>(Lcom/twitter/library/av/playback/ac;)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/library/av/playback/a;->s:I

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/av/playback/a;->v:Ljava/lang/ref/WeakReference;

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/library/av/playback/a;->y:J

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/library/av/playback/a;->o:Landroid/os/Handler;

    .line 62
    iput-object p2, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    .line 63
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    new-instance v1, Lcom/twitter/library/av/playback/c;

    iget-object v2, p0, Lcom/twitter/library/av/playback/a;->o:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/twitter/library/av/playback/c;-><init>(Lcom/google/android/exoplayer/ExoPlayer$Listener;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->addListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V

    .line 64
    return-void
.end method

.method static a()I
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x3e8

    return v0
.end method

.method static synthetic a(Lcom/twitter/library/av/playback/a;)Lcom/google/android/exoplayer/ExoPlayer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->q:Lcom/google/android/exoplayer/TrackRenderer;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/twitter/library/av/playback/a;->q:Lcom/google/android/exoplayer/TrackRenderer;

    const/4 v2, 0x1

    .line 254
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 253
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 256
    :cond_0
    return-void
.end method

.method protected a(J)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    .line 207
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 143
    invoke-static {p1}, Lcom/twitter/library/network/at;->a(Landroid/content/Context;)Lcom/twitter/library/network/at;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/library/network/at;->e:Lcom/twitter/library/network/ax;

    invoke-virtual {v0}, Lcom/twitter/library/network/ax;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/twitter/library/av/playback/a;->f:Lcom/twitter/model/av/AVMedia;

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/library/av/playback/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V

    .line 145
    return-void
.end method

.method abstract a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V
.end method

.method public a(Landroid/view/Surface;)V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 231
    :cond_0
    const-string/jumbo v0, "AVMediaExoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSurface(Surface)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->p:Lcom/google/android/exoplayer/TrackRenderer;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 234
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/twitter/library/av/playback/a;->p:Lcom/google/android/exoplayer/TrackRenderer;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_0

    .line 236
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/av/playback/a;->v:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/twitter/library/av/playback/a;->p:Lcom/google/android/exoplayer/TrackRenderer;

    .line 390
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/a;->u()V

    .line 477
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    const-string/jumbo v1, "Allocation Failure"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/a;->onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V

    .line 478
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/a;->b()Lcom/twitter/library/av/playback/ab;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/ab;->f()Lcom/twitter/library/av/playback/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/al;->a()V

    .line 261
    invoke-super {p0, p1}, Lcom/twitter/library/av/playback/bp;->a(Z)V

    .line 262
    return-void
.end method

.method protected a(ZLjava/lang/Exception;)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/library/av/playback/a;->a(ZLjava/lang/Exception;I)V

    .line 169
    return-void
.end method

.method protected a(ZLjava/lang/Exception;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 180
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/a;->b()Lcom/twitter/library/av/playback/ab;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/ab;->f()Lcom/twitter/library/av/playback/al;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/twitter/library/av/playback/al;->a(ZLjava/lang/Exception;)V

    .line 181
    const-string/jumbo v0, "Unable to open content %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/library/av/playback/a;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string/jumbo v1, "AVMediaExoPlayer"

    invoke-static {v1, v0, p2}, Lcjw;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    iput v4, p0, Lcom/twitter/library/av/playback/a;->s:I

    .line 185
    iput-object p2, p0, Lcom/twitter/library/av/playback/a;->w:Ljava/lang/Exception;

    .line 187
    iput p3, p0, Lcom/twitter/library/av/playback/a;->z:I

    .line 189
    invoke-virtual {p0, p1, p3, v0}, Lcom/twitter/library/av/playback/a;->a(ZILjava/lang/String;)V

    .line 190
    return-void
.end method

.method public b()Lcom/twitter/library/av/playback/ab;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->c:Lcom/twitter/library/av/playback/ab;

    return-object v0
.end method

.method public b(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/twitter/library/av/playback/a;->q:Lcom/google/android/exoplayer/TrackRenderer;

    .line 394
    return-void
.end method

.method protected c()J
    .locals 4

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/twitter/library/av/playback/a;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/av/playback/a;->y:J

    .line 117
    :cond_0
    iget-wide v0, p0, Lcom/twitter/library/av/playback/a;->y:J

    return-wide v0
.end method

.method public c(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/twitter/library/av/playback/a;->r:Lcom/google/android/exoplayer/TrackRenderer;

    .line 398
    return-void
.end method

.method protected d()J
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/twitter/library/av/playback/a;->z:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->w:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->w:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 149
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->r:Lcom/google/android/exoplayer/TrackRenderer;

    if-eqz v0, :cond_1

    .line 150
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/exoplayer/TrackRenderer;

    iget-object v1, p0, Lcom/twitter/library/av/playback/a;->p:Lcom/google/android/exoplayer/TrackRenderer;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/twitter/library/av/playback/a;->q:Lcom/google/android/exoplayer/TrackRenderer;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/twitter/library/av/playback/a;->r:Lcom/google/android/exoplayer/TrackRenderer;

    aput-object v1, v0, v4

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/ExoPlayer;->prepare([Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 156
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/a;->l()Landroid/view/Surface;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v2, p0, Lcom/twitter/library/av/playback/a;->p:Lcom/google/android/exoplayer/TrackRenderer;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 160
    :cond_0
    return-void

    .line 152
    :cond_1
    new-array v0, v4, [Lcom/google/android/exoplayer/TrackRenderer;

    iget-object v1, p0, Lcom/twitter/library/av/playback/a;->p:Lcom/google/android/exoplayer/TrackRenderer;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/twitter/library/av/playback/a;->q:Lcom/google/android/exoplayer/TrackRenderer;

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/a;->b(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 195
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 196
    return-void
.end method

.method protected j()V
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->g:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/a;->b(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 201
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 202
    return-void
.end method

.method protected k()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/ExoPlayer;->removeListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V

    .line 212
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->n:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/library/av/playback/b;

    invoke-direct {v1, p0}, Lcom/twitter/library/av/playback/b;-><init>(Lcom/twitter/library/av/playback/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method

.method public l()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method

.method protected m()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method protected n()V
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    .line 373
    :cond_0
    return-void
.end method

.method protected o()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->o:Landroid/os/Handler;

    return-object v0
.end method

.method public onAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/library/av/playback/a;->a(ZLjava/lang/Exception;)V

    .line 461
    return-void
.end method

.method public onAudioTrackUnderrun(IJJ)V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public onAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/library/av/playback/a;->a(ZLjava/lang/Exception;)V

    .line 466
    return-void
.end method

.method public onCryptoError(Landroid/media/MediaCodec$CryptoException;)V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/library/av/playback/a;->a(ZLjava/lang/Exception;)V

    .line 452
    return-void
.end method

.method public onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/library/av/playback/a;->a(ZLjava/lang/Exception;)V

    .line 447
    return-void
.end method

.method public onDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public onDrawnToSurface(Landroid/view/Surface;)V
    .locals 3

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/a;->G()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-ne v0, v1, :cond_1

    .line 434
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->g:Lcom/twitter/library/av/s;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->g:Lcom/twitter/library/av/s;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/twitter/library/av/s;->b(II)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/av/playback/a;->x:Z

    goto :goto_0
.end method

.method public onDroppedFrames(IJ)V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public onPlayWhenReadyCommitted()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/twitter/library/av/playback/a;->a(ZLjava/lang/Exception;)V

    .line 382
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/a;->b()Lcom/twitter/library/av/playback/ab;

    move-result-object v2

    invoke-interface {v2}, Lcom/twitter/library/av/playback/ab;->f()Lcom/twitter/library/av/playback/al;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/twitter/library/av/playback/al;->a(ZI)V

    .line 269
    iget v2, p0, Lcom/twitter/library/av/playback/a;->s:I

    .line 270
    iput p2, p0, Lcom/twitter/library/av/playback/a;->s:I

    .line 276
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-eq p2, v6, :cond_0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    .line 278
    :cond_0
    sget-object v3, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->e:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v3}, Lcom/twitter/library/av/playback/a;->a(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 279
    iget-object v3, p0, Lcom/twitter/library/av/playback/a;->g:Lcom/twitter/library/av/s;

    if-eqz v3, :cond_1

    .line 280
    iget-object v3, p0, Lcom/twitter/library/av/playback/a;->g:Lcom/twitter/library/av/s;

    iget v4, p0, Lcom/twitter/library/av/playback/a;->t:I

    iget v5, p0, Lcom/twitter/library/av/playback/a;->u:I

    invoke-interface {v3, v4, v5, v1, v1}, Lcom/twitter/library/av/s;->a(IIZZ)V

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/a;->y()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 363
    :cond_2
    :goto_0
    return-void

    .line 292
    :cond_3
    packed-switch p2, :pswitch_data_0

    .line 356
    :cond_4
    :goto_1
    if-ne v2, v6, :cond_2

    if-eq p2, v6, :cond_2

    .line 357
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->g:Lcom/twitter/library/av/s;

    if-eqz v0, :cond_5

    .line 358
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->g:Lcom/twitter/library/av/s;

    const/16 v2, 0x2be

    invoke-interface {v0, v2, v1}, Lcom/twitter/library/av/s;->b(II)V

    .line 361
    :cond_5
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->d:Lbvr;

    new-instance v1, Lbvz;

    iget-object v2, p0, Lcom/twitter/library/av/playback/a;->f:Lcom/twitter/model/av/AVMedia;

    invoke-direct {v1, v2}, Lbvz;-><init>(Lcom/twitter/model/av/AVMedia;)V

    invoke-virtual {v0, v1}, Lbvr;->a(Lbvq;)V

    goto :goto_0

    .line 294
    :pswitch_0
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->c:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/a;->a(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    goto :goto_1

    .line 298
    :pswitch_1
    sget-object v3, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->h:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v3}, Lcom/twitter/library/av/playback/a;->a(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 299
    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/a;->c(Z)V

    .line 300
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->h:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_4

    .line 301
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->h:Landroid/media/MediaPlayer$OnCompletionListener;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_1

    .line 306
    :pswitch_2
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->d:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/a;->a(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    goto :goto_1

    .line 310
    :pswitch_3
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/a;->H()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v3

    sget-object v4, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-eq v3, v4, :cond_6

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/a;->G()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v3

    sget-object v4, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-ne v3, v4, :cond_7

    .line 311
    :cond_6
    iget-object v3, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 313
    :cond_7
    if-eq v2, v6, :cond_9

    .line 315
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/a;->G()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v0

    sget-object v3, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->a:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-eq v0, v3, :cond_9

    .line 316
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->g:Lcom/twitter/library/av/s;

    if-eqz v0, :cond_8

    .line 317
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->g:Lcom/twitter/library/av/s;

    const/16 v3, 0x2bd

    invoke-interface {v0, v3, v1}, Lcom/twitter/library/av/s;->b(II)V

    .line 319
    :cond_8
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->d:Lbvr;

    new-instance v3, Lbwa;

    iget-object v4, p0, Lcom/twitter/library/av/playback/a;->f:Lcom/twitter/model/av/AVMedia;

    invoke-direct {v3, v4}, Lbwa;-><init>(Lcom/twitter/model/av/AVMedia;)V

    invoke-virtual {v0, v3}, Lbvr;->a(Lbvq;)V

    .line 321
    :cond_9
    invoke-virtual {p0, v1}, Lcom/twitter/library/av/playback/a;->c(Z)V

    goto :goto_1

    .line 325
    :pswitch_4
    if-eqz p1, :cond_c

    .line 326
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/a;->a(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 327
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->k:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/a;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    .line 330
    iget-boolean v0, p0, Lcom/twitter/library/av/playback/a;->x:Z

    if-eqz v0, :cond_a

    .line 331
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->g:Lcom/twitter/library/av/s;

    invoke-interface {v0, v6, v1}, Lcom/twitter/library/av/s;->b(II)V

    .line 332
    iput-boolean v1, p0, Lcom/twitter/library/av/playback/a;->x:Z

    .line 334
    :cond_a
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->g:Lcom/twitter/library/av/s;

    if-eqz v0, :cond_b

    .line 335
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->g:Lcom/twitter/library/av/s;

    iget-object v3, p0, Lcom/twitter/library/av/playback/a;->k:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    invoke-interface {v0, v3}, Lcom/twitter/library/av/s;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    .line 339
    :cond_b
    sget-object v0, Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;->b:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    iput-object v0, p0, Lcom/twitter/library/av/playback/a;->k:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    .line 340
    invoke-virtual {p0, v1}, Lcom/twitter/library/av/playback/a;->b(Z)V

    goto/16 :goto_1

    .line 341
    :cond_c
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/a;->H()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v3

    sget-object v4, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-ne v3, v4, :cond_4

    .line 343
    iget-object v3, p0, Lcom/twitter/library/av/playback/a;->k:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    sget-object v4, Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;->a:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    if-ne v3, v4, :cond_d

    :goto_2
    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/a;->b(Z)V

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_2

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1

    .prologue
    .line 420
    iput p1, p0, Lcom/twitter/library/av/playback/a;->t:I

    .line 421
    iput p2, p0, Lcom/twitter/library/av/playback/a;->u:I

    .line 423
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->g:Lcom/twitter/library/av/s;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/library/av/playback/a;->t:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/twitter/library/av/playback/a;->u:I

    if-lez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->g:Lcom/twitter/library/av/s;

    invoke-interface {v0, p1, p2}, Lcom/twitter/library/av/s;->a(II)V

    .line 426
    :cond_0
    return-void
.end method

.method protected p()Lcom/google/android/exoplayer/ExoPlayer;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->a:Lcom/google/android/exoplayer/ExoPlayer;

    return-object v0
.end method

.method public q()Lcom/google/android/exoplayer/TrackRenderer;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/twitter/library/av/playback/a;->q:Lcom/google/android/exoplayer/TrackRenderer;

    return-object v0
.end method
