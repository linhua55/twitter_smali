.class public Ltv/periscope/android/exoplayer/player/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer$Listener;
.implements Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
.implements Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
.implements Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;
.implements Lcom/google/android/exoplayer/text/TextRenderer;
.implements Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;
.implements Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/ExoPlayer$Listener;",
        "Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;",
        "Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;",
        "Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;",
        "Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;",
        "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
        "Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;",
        "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/exoplayer/metadata/id3/Id3Frame;",
        ">;>;",
        "Lcom/google/android/exoplayer/text/TextRenderer;",
        "Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;",
        "Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;"
    }
.end annotation


# instance fields
.field private final a:Ltv/periscope/android/exoplayer/player/k;

.field private final b:Ldoh;

.field private final c:Lcom/google/android/exoplayer/ExoPlayer;

.field private final d:Lcom/google/android/exoplayer/util/PlayerControl;

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ltv/periscope/android/exoplayer/player/j;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Landroid/view/Surface;

.field private l:Lcom/google/android/exoplayer/TrackRenderer;

.field private m:Lcom/google/android/exoplayer/TrackRenderer;

.field private n:Lcom/google/android/exoplayer/CodecCounters;

.field private o:Lcom/google/android/exoplayer/chunk/Format;

.field private p:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

.field private q:Ltv/periscope/android/exoplayer/player/f;

.field private r:Ltv/periscope/android/exoplayer/player/g;

.field private s:Ltv/periscope/android/exoplayer/player/i;

.field private t:Ltv/periscope/android/exoplayer/player/h;


# direct methods
.method public constructor <init>(Ltv/periscope/android/exoplayer/player/k;)V
    .locals 1

    .prologue
    .line 218
    new-instance v0, Ldoh;

    invoke-direct {v0}, Ldoh;-><init>()V

    invoke-direct {p0, p1, v0}, Ltv/periscope/android/exoplayer/player/e;-><init>(Ltv/periscope/android/exoplayer/player/k;Ldoh;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Ltv/periscope/android/exoplayer/player/k;Ldoh;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Ltv/periscope/android/exoplayer/player/e;->a:Ltv/periscope/android/exoplayer/player/k;

    .line 223
    iput-object p2, p0, Ltv/periscope/android/exoplayer/player/e;->b:Ldoh;

    .line 224
    const/4 v0, 0x4

    const/16 v1, 0x3e8

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    .line 225
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/ExoPlayer;->addListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V

    .line 226
    new-instance v0, Lcom/google/android/exoplayer/util/PlayerControl;

    iget-object v1, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/PlayerControl;-><init>(Lcom/google/android/exoplayer/ExoPlayer;)V

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->d:Lcom/google/android/exoplayer/util/PlayerControl;

    .line 227
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->e:Landroid/os/Handler;

    .line 228
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 229
    iput v3, p0, Ltv/periscope/android/exoplayer/player/e;->h:I

    .line 230
    iput v3, p0, Ltv/periscope/android/exoplayer/player/e;->g:I

    .line 232
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/ExoPlayer;->setSelectedTrack(II)V

    .line 233
    return-void
.end method

.method private b(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 646
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->l:Lcom/google/android/exoplayer/TrackRenderer;

    if-nez v0, :cond_0

    .line 657
    :goto_0
    return-void

    .line 650
    :cond_0
    if-eqz p1, :cond_1

    .line 651
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Ltv/periscope/android/exoplayer/player/e;->l:Lcom/google/android/exoplayer/TrackRenderer;

    iget-object v2, p0, Ltv/periscope/android/exoplayer/player/e;->k:Landroid/view/Surface;

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/exoplayer/ExoPlayer;->blockingSendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Ltv/periscope/android/exoplayer/player/e;->l:Lcom/google/android/exoplayer/TrackRenderer;

    iget-object v2, p0, Ltv/periscope/android/exoplayer/player/e;->k:Landroid/view/Surface;

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 634
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v1

    .line 635
    invoke-virtual {p0}, Ltv/periscope/android/exoplayer/player/e;->f()I

    move-result v2

    .line 636
    iget-boolean v0, p0, Ltv/periscope/android/exoplayer/player/e;->i:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Ltv/periscope/android/exoplayer/player/e;->h:I

    if-eq v0, v2, :cond_2

    .line 637
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/exoplayer/player/j;

    .line 638
    invoke-interface {v0, v1, v2}, Ltv/periscope/android/exoplayer/player/j;->a(ZI)V

    goto :goto_0

    .line 640
    :cond_1
    iput-boolean v1, p0, Ltv/periscope/android/exoplayer/player/e;->i:Z

    .line 641
    iput v2, p0, Ltv/periscope/android/exoplayer/player/e;->h:I

    .line 643
    :cond_2
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/periscope/android/exoplayer/player/e;->a(F)V

    .line 672
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->getSelectedTrack(I)I

    move-result v0

    return v0
.end method

.method a()Ldoh;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->b:Ldoh;

    return-object v0
.end method

.method public a(F)V
    .locals 4

    .prologue
    .line 660
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->m:Lcom/google/android/exoplayer/TrackRenderer;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Ltv/periscope/android/exoplayer/player/e;->m:Lcom/google/android/exoplayer/TrackRenderer;

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 663
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    .line 392
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 272
    iput-object p1, p0, Ltv/periscope/android/exoplayer/player/e;->k:Landroid/view/Surface;

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/periscope/android/exoplayer/player/e;->b(Z)V

    .line 274
    return-void
.end method

.method a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    invoke-interface {v0, p1}, Ltv/periscope/android/exoplayer/player/i;->b(Ljava/lang/Exception;)V

    .line 379
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/exoplayer/player/j;

    .line 380
    invoke-interface {v0, p1}, Ltv/periscope/android/exoplayer/player/j;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 382
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Ltv/periscope/android/exoplayer/player/e;->g:I

    .line 383
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/e;->k()V

    .line 384
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
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
    .line 581
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->r:Ltv/periscope/android/exoplayer/player/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ltv/periscope/android/exoplayer/player/e;->a(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 582
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->r:Ltv/periscope/android/exoplayer/player/g;

    invoke-interface {v0, p1}, Ltv/periscope/android/exoplayer/player/g;->a(Ljava/util/List;)V

    .line 584
    :cond_0
    return-void
.end method

.method public a(Ltv/periscope/android/exoplayer/player/f;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Ltv/periscope/android/exoplayer/player/e;->q:Ltv/periscope/android/exoplayer/player/f;

    .line 265
    return-void
.end method

.method public a(Ltv/periscope/android/exoplayer/player/g;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Ltv/periscope/android/exoplayer/player/e;->r:Ltv/periscope/android/exoplayer/player/g;

    .line 269
    return-void
.end method

.method public a(Ltv/periscope/android/exoplayer/player/h;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    .line 261
    return-void
.end method

.method public a(Ltv/periscope/android/exoplayer/player/i;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    .line 257
    return-void
.end method

.method public a(Ltv/periscope/android/exoplayer/player/j;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 388
    return-void
.end method

.method a([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 347
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 348
    aget-object v2, p1, v0

    if-nez v2, :cond_0

    .line 350
    new-instance v2, Lcom/google/android/exoplayer/DummyTrackRenderer;

    invoke-direct {v2}, Lcom/google/android/exoplayer/DummyTrackRenderer;-><init>()V

    aput-object v2, p1, v0

    .line 347
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_1
    aget-object v0, p1, v1

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->l:Lcom/google/android/exoplayer/TrackRenderer;

    .line 355
    aget-object v0, p1, v3

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->m:Lcom/google/android/exoplayer/TrackRenderer;

    .line 356
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->l:Lcom/google/android/exoplayer/TrackRenderer;

    instance-of v0, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->l:Lcom/google/android/exoplayer/TrackRenderer;

    check-cast v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    :goto_1
    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->n:Lcom/google/android/exoplayer/CodecCounters;

    .line 360
    iput-object p2, p0, Ltv/periscope/android/exoplayer/player/e;->p:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    .line 361
    invoke-direct {p0, v1}, Ltv/periscope/android/exoplayer/player/e;->b(Z)V

    .line 362
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->prepare([Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 363
    const/4 v0, 0x3

    iput v0, p0, Ltv/periscope/android/exoplayer/player/e;->g:I

    .line 365
    iget-boolean v0, p0, Ltv/periscope/android/exoplayer/player/e;->j:Z

    if-eqz v0, :cond_2

    .line 366
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/e;->l()V

    .line 368
    :cond_2
    return-void

    .line 356
    :cond_3
    aget-object v0, p1, v3

    instance-of v0, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    if-eqz v0, :cond_4

    aget-object v0, p1, v3

    check-cast v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()Lcom/google/android/exoplayer/ExoPlayer;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    return-object v0
.end method

.method public b(Ltv/periscope/android/exoplayer/player/j;)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    iget v0, p0, Ltv/periscope/android/exoplayer/player/e;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->stop()V

    .line 326
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->a:Ltv/periscope/android/exoplayer/player/k;

    invoke-interface {v0}, Ltv/periscope/android/exoplayer/player/k;->a()V

    .line 327
    iput-object v2, p0, Ltv/periscope/android/exoplayer/player/e;->o:Lcom/google/android/exoplayer/chunk/Format;

    .line 328
    iput-object v2, p0, Ltv/periscope/android/exoplayer/player/e;->l:Lcom/google/android/exoplayer/TrackRenderer;

    .line 329
    iput-object v2, p0, Ltv/periscope/android/exoplayer/player/e;->m:Lcom/google/android/exoplayer/TrackRenderer;

    .line 330
    const/4 v0, 0x2

    iput v0, p0, Ltv/periscope/android/exoplayer/player/e;->g:I

    .line 331
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/e;->k()V

    .line 332
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->a:Ltv/periscope/android/exoplayer/player/k;

    invoke-interface {v0, p0}, Ltv/periscope/android/exoplayer/player/k;->a(Ltv/periscope/android/exoplayer/player/e;)V

    .line 333
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->stop()V

    .line 337
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->a:Ltv/periscope/android/exoplayer/player/k;

    invoke-interface {v0}, Ltv/periscope/android/exoplayer/player/k;->a()V

    .line 396
    const/4 v0, 0x1

    iput v0, p0, Ltv/periscope/android/exoplayer/player/e;->g:I

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->k:Landroid/view/Surface;

    .line 398
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->release()V

    .line 399
    return-void
.end method

.method public f()I
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 402
    iget v1, p0, Ltv/periscope/android/exoplayer/player/e;->g:I

    if-ne v1, v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    iget-object v1, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v1

    .line 406
    iget v2, p0, Ltv/periscope/android/exoplayer/player/e;->g:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    :cond_2
    move v0, v1

    .line 411
    goto :goto_0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBandwidthMeter()Lcom/google/android/exoplayer/upstream/BandwidthMeter;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->p:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    return-object v0
.end method

.method public getCodecCounters()Lcom/google/android/exoplayer/CodecCounters;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->n:Lcom/google/android/exoplayer/CodecCounters;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFormat()Lcom/google/android/exoplayer/chunk/Format;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->o:Lcom/google/android/exoplayer/chunk/Format;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->c:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method i()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/exoplayer/player/e;->j:Z

    .line 667
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/e;->l()V

    .line 668
    return-void
.end method

.method public onAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    invoke-interface {v0, p1}, Ltv/periscope/android/exoplayer/player/i;->a(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V

    .line 534
    :cond_0
    return-void
.end method

.method public onAudioTrackUnderrun(IJJ)V
    .locals 6

    .prologue
    .line 545
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Ltv/periscope/android/exoplayer/player/i;->b(IJJ)V

    .line 548
    :cond_0
    return-void
.end method

.method public onAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    invoke-interface {v0, p1}, Ltv/periscope/android/exoplayer/player/i;->a(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V

    .line 541
    :cond_0
    return-void
.end method

.method public onAvailableRangeChanged(ILcom/google/android/exoplayer/TimeRange;)V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/exoplayer/player/h;->a(ILcom/google/android/exoplayer/TimeRange;)V

    .line 591
    :cond_0
    return-void
.end method

.method public onBandwidthSample(IJJ)V
    .locals 6

    .prologue
    .line 491
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Ltv/periscope/android/exoplayer/player/h;->a(IJJ)V

    .line 494
    :cond_0
    return-void
.end method

.method public onCryptoError(Landroid/media/MediaCodec$CryptoException;)V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    invoke-interface {v0, p1}, Ltv/periscope/android/exoplayer/player/i;->a(Landroid/media/MediaCodec$CryptoException;)V

    .line 555
    :cond_0
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->q:Ltv/periscope/android/exoplayer/player/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ltv/periscope/android/exoplayer/player/e;->a(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 575
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->q:Ltv/periscope/android/exoplayer/player/f;

    invoke-interface {v0, p1}, Ltv/periscope/android/exoplayer/player/f;->b(Ljava/util/List;)V

    .line 577
    :cond_0
    return-void
.end method

.method public onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    invoke-interface {v0, p1}, Ltv/periscope/android/exoplayer/player/i;->a(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 527
    :cond_0
    return-void
.end method

.method public onDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    .prologue
    .line 560
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Ltv/periscope/android/exoplayer/player/h;->a(Ljava/lang/String;JJ)V

    .line 563
    :cond_0
    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    if-nez p1, :cond_2

    .line 503
    iput-object p2, p0, Ltv/periscope/android/exoplayer/player/e;->o:Lcom/google/android/exoplayer/chunk/Format;

    .line 504
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    invoke-interface {v0, p2, p3, p4, p5}, Ltv/periscope/android/exoplayer/player/h;->a(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    goto :goto_0

    .line 505
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 506
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    invoke-interface {v0, p2, p3, p4, p5}, Ltv/periscope/android/exoplayer/player/h;->b(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    goto :goto_0
.end method

.method public onDrawnToSurface(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    invoke-interface {v0, p1}, Ltv/periscope/android/exoplayer/player/h;->a(Landroid/view/Surface;)V

    .line 603
    :cond_0
    return-void
.end method

.method public onDrmKeysLoaded()V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method public onDrmSessionManagerError(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    invoke-interface {v0, p1}, Ltv/periscope/android/exoplayer/player/i;->c(Ljava/lang/Exception;)V

    .line 520
    :cond_0
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    invoke-interface {v0, p1, p2, p3}, Ltv/periscope/android/exoplayer/player/h;->a(IJ)V

    .line 487
    :cond_0
    return-void
.end method

.method public onLoadCanceled(IJ)V
    .locals 0

    .prologue
    .line 626
    return-void
.end method

.method public onLoadCompleted(IJIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .locals 19

    .prologue
    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    if-eqz v2, :cond_0

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-interface/range {v3 .. v17}, Ltv/periscope/android/exoplayer/player/h;->a(IJIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    .line 621
    :cond_0
    return-void
.end method

.method public onLoadError(ILjava/io/IOException;)V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->s:Ltv/periscope/android/exoplayer/player/i;

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/exoplayer/player/i;->a(ILjava/io/IOException;)V

    .line 570
    :cond_0
    return-void
.end method

.method public onLoadStarted(IJIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 13

    .prologue
    .line 608
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    if-eqz v0, :cond_0

    .line 609
    iget-object v1, p0, Ltv/periscope/android/exoplayer/player/e;->t:Ltv/periscope/android/exoplayer/player/h;

    move v2, p1

    move-wide v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-interface/range {v1 .. v11}, Ltv/periscope/android/exoplayer/player/h;->a(IJIILcom/google/android/exoplayer/chunk/Format;JJ)V

    .line 612
    :cond_0
    return-void
.end method

.method public synthetic onMetadata(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ltv/periscope/android/exoplayer/player/e;->a(Ljava/util/List;)V

    return-void
.end method

.method public onPlayWhenReadyCommitted()V
    .locals 0

    .prologue
    .line 596
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V
    .locals 2

    .prologue
    .line 461
    const/4 v0, 0x1

    iput v0, p0, Ltv/periscope/android/exoplayer/player/e;->g:I

    .line 462
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/exoplayer/player/j;

    .line 463
    invoke-interface {v0, p1}, Ltv/periscope/android/exoplayer/player/j;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 465
    :cond_0
    return-void
.end method

.method public onPlayerSeekComplete()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/exoplayer/player/j;

    .line 470
    invoke-interface {v0}, Ltv/periscope/android/exoplayer/player/j;->c()V

    goto :goto_0

    .line 472
    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/e;->k()V

    .line 457
    return-void
.end method

.method public onUpstreamDiscarded(IJJ)V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/e;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/exoplayer/player/j;

    .line 478
    invoke-interface {v0, p1, p2, p3, p4}, Ltv/periscope/android/exoplayer/player/j;->a(IIIF)V

    goto :goto_0

    .line 480
    :cond_0
    return-void
.end method
