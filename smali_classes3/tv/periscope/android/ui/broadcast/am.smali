.class public Ltv/periscope/android/ui/broadcast/am;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ltv/periscope/android/exoplayer/player/f;
.implements Ltv/periscope/android/exoplayer/player/g;
.implements Ltv/periscope/android/exoplayer/player/j;
.implements Ltv/periscope/android/exoplayer/player/p;


# instance fields
.field private A:Ltv/periscope/android/exoplayer/player/k;

.field private B:J

.field private C:J

.field private D:I

.field private E:I

.field private F:I

.field private G:Ltv/periscope/android/video/rtmp/o;

.field private H:J

.field private I:J

.field private J:J

.field private K:Ltv/periscope/android/video/rtmp/o;

.field private L:D

.field private M:Z

.field private N:D

.field private O:Landroid/view/OrientationEventListener;

.field private P:I

.field private Q:I

.field private R:D

.field private S:D

.field private T:Z

.field private U:Z

.field private final V:Ltv/periscope/android/ui/broadcast/aq;

.field private W:Z

.field private final X:Ljava/lang/Runnable;

.field private Y:I

.field protected a:Z

.field public final b:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final c:Ltv/periscope/android/data/b;

.field private d:Ldoh;

.field private e:Ltv/periscope/model/o;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ltv/periscope/android/ui/broadcast/bu;

.field private final m:Landroid/content/Context;

.field private final n:Ljava/lang/String;

.field private final o:Ltv/periscope/android/util/a;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:J

.field private w:Landroid/view/TextureView;

.field private x:Landroid/view/Surface;

.field private y:Landroid/os/Handler;

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/TextureView;Ltv/periscope/android/player/a;Ltv/periscope/android/ui/broadcast/bu;Ltv/periscope/android/util/a;Ltv/periscope/android/data/b;)V
    .locals 8

    .prologue
    .line 260
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Ltv/periscope/android/ui/broadcast/am;-><init>(Landroid/content/Context;Landroid/view/TextureView;Ltv/periscope/android/player/a;Ltv/periscope/android/ui/broadcast/bu;Ltv/periscope/android/util/a;Ltv/periscope/android/data/b;Z)V

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/TextureView;Ltv/periscope/android/player/a;Ltv/periscope/android/ui/broadcast/bu;Ltv/periscope/android/util/a;Ltv/periscope/android/data/b;Z)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v1, p0, Ltv/periscope/android/ui/broadcast/am;->k:Z

    .line 99
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->z:Landroid/os/Handler;

    .line 112
    iput v1, p0, Ltv/periscope/android/ui/broadcast/am;->D:I

    .line 113
    iput v1, p0, Ltv/periscope/android/ui/broadcast/am;->E:I

    .line 114
    iput v1, p0, Ltv/periscope/android/ui/broadcast/am;->F:I

    .line 115
    new-instance v2, Ltv/periscope/android/video/rtmp/o;

    invoke-direct {v2}, Ltv/periscope/android/video/rtmp/o;-><init>()V

    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->G:Ltv/periscope/android/video/rtmp/o;

    .line 116
    iput-wide v4, p0, Ltv/periscope/android/ui/broadcast/am;->H:J

    .line 117
    iput-wide v4, p0, Ltv/periscope/android/ui/broadcast/am;->I:J

    .line 118
    iput-wide v4, p0, Ltv/periscope/android/ui/broadcast/am;->J:J

    .line 119
    new-instance v2, Ltv/periscope/android/video/rtmp/o;

    invoke-direct {v2}, Ltv/periscope/android/video/rtmp/o;-><init>()V

    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->K:Ltv/periscope/android/video/rtmp/o;

    .line 123
    iput-boolean v1, p0, Ltv/periscope/android/ui/broadcast/am;->M:Z

    .line 124
    iput-wide v6, p0, Ltv/periscope/android/ui/broadcast/am;->N:D

    .line 127
    iput v1, p0, Ltv/periscope/android/ui/broadcast/am;->P:I

    .line 128
    iput v1, p0, Ltv/periscope/android/ui/broadcast/am;->Q:I

    .line 130
    iput-wide v6, p0, Ltv/periscope/android/ui/broadcast/am;->R:D

    .line 131
    iput-wide v6, p0, Ltv/periscope/android/ui/broadcast/am;->S:D

    .line 133
    iput-boolean v1, p0, Ltv/periscope/android/ui/broadcast/am;->T:Z

    .line 135
    iput-boolean v1, p0, Ltv/periscope/android/ui/broadcast/am;->U:Z

    .line 137
    new-instance v2, Ltv/periscope/android/ui/broadcast/aq;

    invoke-direct {v2, p0}, Ltv/periscope/android/ui/broadcast/aq;-><init>(Ltv/periscope/android/ui/broadcast/am;)V

    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->V:Ltv/periscope/android/ui/broadcast/aq;

    .line 140
    new-instance v2, Ltv/periscope/android/ui/broadcast/an;

    invoke-direct {v2, p0}, Ltv/periscope/android/ui/broadcast/an;-><init>(Ltv/periscope/android/ui/broadcast/am;)V

    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->X:Ljava/lang/Runnable;

    .line 206
    new-instance v2, Ltv/periscope/android/ui/broadcast/ao;

    invoke-direct {v2, p0}, Ltv/periscope/android/ui/broadcast/ao;-><init>(Ltv/periscope/android/ui/broadcast/am;)V

    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->m:Landroid/content/Context;

    .line 267
    new-instance v2, Ltv/periscope/android/ui/broadcast/as;

    invoke-direct {v2, p3}, Ltv/periscope/android/ui/broadcast/as;-><init>(Ltv/periscope/android/player/a;)V

    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    .line 268
    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/am;->w:Landroid/view/TextureView;

    .line 269
    if-eqz p2, :cond_2

    .line 270
    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 272
    invoke-virtual {p2}, Landroid/view/TextureView;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->q:Z

    .line 274
    new-instance v2, Landroid/view/Surface;

    invoke-virtual {p2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->x:Landroid/view/Surface;

    .line 280
    :cond_0
    :goto_0
    invoke-static {p1}, Ltv/periscope/android/exoplayer/player/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->n:Ljava/lang/String;

    .line 281
    iput-object p4, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    .line 282
    iput-object p5, p0, Ltv/periscope/android/ui/broadcast/am;->o:Ltv/periscope/android/util/a;

    .line 283
    iput-object p6, p0, Ltv/periscope/android/ui/broadcast/am;->c:Ltv/periscope/android/data/b;

    .line 284
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    invoke-interface {v2}, Ltv/periscope/android/ui/broadcast/bu;->a()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    :goto_1
    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->s:Z

    .line 285
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->O:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1

    if-eqz p7, :cond_1

    .line 286
    new-instance v0, Ltv/periscope/android/ui/broadcast/ap;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Ltv/periscope/android/ui/broadcast/ap;-><init>(Ltv/periscope/android/ui/broadcast/am;Landroid/content/Context;I)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->O:Landroid/view/OrientationEventListener;

    .line 296
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->O:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->O:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 302
    :cond_1
    :goto_2
    return-void

    .line 278
    :cond_2
    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->q:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 284
    goto :goto_1

    .line 299
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->O:Landroid/view/OrientationEventListener;

    goto :goto_2
.end method

.method private A()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 548
    monitor-enter p0

    .line 549
    :try_start_0
    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->I:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 550
    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->H:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ltv/periscope/android/ui/broadcast/am;->I:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->H:J

    .line 551
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->I:J

    .line 553
    :cond_0
    monitor-exit p0

    .line 554
    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private B()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 558
    monitor-enter p0

    .line 560
    :try_start_0
    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->J:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltv/periscope/android/ui/broadcast/am;->J:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    .line 563
    iget-wide v2, p0, Ltv/periscope/android/ui/broadcast/am;->H:J

    long-to-double v2, v2

    sub-double/2addr v2, v0

    double-to-long v2, v2

    iput-wide v2, p0, Ltv/periscope/android/ui/broadcast/am;->H:J

    .line 564
    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 565
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->K:Ltv/periscope/android/video/rtmp/o;

    invoke-virtual {v2, v0, v1}, Ltv/periscope/android/video/rtmp/o;->a(D)V

    .line 566
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->J:J

    .line 567
    const-string/jumbo v0, "BroadcastPlayer"

    const-string/jumbo v1, "Stall recovered"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_0
    monitor-exit p0

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private C()V
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->j:Z

    if-nez v0, :cond_1

    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->j:Z

    .line 578
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bu;->d()V

    .line 582
    :cond_0
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->G()V

    .line 584
    :cond_1
    return-void
.end method

.method private D()V
    .locals 7

    .prologue
    .line 734
    iget-wide v2, p0, Ltv/periscope/android/ui/broadcast/am;->N:D

    .line 735
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->M:Z

    if-nez v0, :cond_0

    .line 736
    const-wide/16 v2, 0x0

    .line 739
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->w:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 740
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->w:Landroid/view/TextureView;

    iget v4, p0, Ltv/periscope/android/ui/broadcast/am;->P:I

    iget v5, p0, Ltv/periscope/android/ui/broadcast/am;->Q:I

    iget-boolean v6, p0, Ltv/periscope/android/ui/broadcast/am;->T:Z

    invoke-static/range {v1 .. v6}, Ltv/periscope/android/exoplayer/player/v;->a(Landroid/view/TextureView;DIIZ)I

    move-result v0

    iput v0, p0, Ltv/periscope/android/ui/broadcast/am;->Y:I

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-static {v2, v3}, Ltv/periscope/android/exoplayer/player/v;->a(D)I

    move-result v0

    iput v0, p0, Ltv/periscope/android/ui/broadcast/am;->Y:I

    goto :goto_0
.end method

.method private E()V
    .locals 4

    .prologue
    .line 1006
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->W:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->e:Ltv/periscope/model/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->e:Ltv/periscope/model/o;

    invoke-virtual {v0}, Ltv/periscope/model/o;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->X:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->W:Z

    .line 1010
    :cond_0
    return-void
.end method

.method private F()V
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1103
    return-void
.end method

.method private G()V
    .locals 2

    .prologue
    .line 1107
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1108
    return-void
.end method

.method private H()V
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1112
    return-void
.end method

.method private I()V
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1116
    return-void
.end method

.method private J()V
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1120
    return-void
.end method

.method private K()V
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1130
    return-void
.end method

.method private L()V
    .locals 2

    .prologue
    .line 1144
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1145
    return-void
.end method

.method private M()V
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1150
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/am;)Ltv/periscope/model/o;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->e:Ltv/periscope/model/o;

    return-object v0
.end method

.method private a(II)V
    .locals 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 498
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->w:Landroid/view/TextureView;

    if-nez v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->w:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 503
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->w:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 508
    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/am;->m:Landroid/content/Context;

    invoke-static {v3}, Ltv/periscope/android/util/w;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 509
    div-float/2addr v0, v2

    int-to-float v2, p1

    mul-float/2addr v0, v2

    .line 510
    int-to-float v2, p2

    div-float/2addr v0, v2

    .line 516
    :goto_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 518
    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p1, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 519
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->w:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 512
    :cond_1
    div-float v0, v2, v0

    int-to-float v2, p2

    mul-float/2addr v0, v2

    .line 513
    int-to-float v2, p1

    div-float/2addr v0, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1
.end method

.method private a(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->q:Z

    if-nez v0, :cond_0

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->q:Z

    .line 475
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->x:Landroid/view/Surface;

    .line 476
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->T:Z

    if-nez v0, :cond_0

    .line 477
    invoke-direct {p0, p2, p3}, Ltv/periscope/android/ui/broadcast/am;->a(II)V

    .line 480
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 850
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->j:Z

    if-eqz v0, :cond_0

    .line 859
    :goto_0
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->V:Ltv/periscope/android/ui/broadcast/aq;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 857
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->V:Ltv/periscope/android/ui/broadcast/aq;

    invoke-static {v0, p1}, Ltv/periscope/android/ui/broadcast/aq;->a(Ltv/periscope/android/ui/broadcast/aq;Z)Z

    .line 858
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->V:Ltv/periscope/android/ui/broadcast/aq;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/am;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Ltv/periscope/android/ui/broadcast/am;->U:Z

    return p1
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 1133
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1134
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1135
    return-void
.end method

.method static synthetic b(Ltv/periscope/android/ui/broadcast/am;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->M()V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 1123
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    const/4 v1, 0x5

    .line 1124
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1123
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1125
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1126
    return-void
.end method

.method static synthetic b(Ltv/periscope/android/ui/broadcast/am;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Ltv/periscope/android/ui/broadcast/am;->s:Z

    return p1
.end method

.method static synthetic c(Ltv/periscope/android/ui/broadcast/am;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    return-object v0
.end method

.method private c(J)V
    .locals 3

    .prologue
    .line 654
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->s:Z

    if-eqz v0, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-eqz v0, :cond_0

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->s:Z

    .line 661
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->F()V

    .line 662
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->L:D

    .line 663
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->u()V

    .line 664
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/ui/broadcast/bu;->a(J)V

    goto :goto_0
.end method

.method private d(J)V
    .locals 3

    .prologue
    .line 1138
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    const/16 v1, 0x8

    .line 1139
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1138
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1140
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1141
    return-void
.end method

.method static synthetic d(Ltv/periscope/android/ui/broadcast/am;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->K()V

    return-void
.end method

.method static synthetic e(Ltv/periscope/android/ui/broadcast/am;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->y()V

    return-void
.end method

.method static synthetic f(Ltv/periscope/android/ui/broadcast/am;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->j:Z

    return v0
.end method

.method static synthetic g(Ltv/periscope/android/ui/broadcast/am;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->x()V

    return-void
.end method

.method static synthetic h(Ltv/periscope/android/ui/broadcast/am;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Ltv/periscope/android/ui/broadcast/am;)Ltv/periscope/android/util/a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->o:Ltv/periscope/android/util/a;

    return-object v0
.end method

.method static synthetic j(Ltv/periscope/android/ui/broadcast/am;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->I()V

    return-void
.end method

.method static synthetic k(Ltv/periscope/android/ui/broadcast/am;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->D()V

    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->W:Z

    .line 156
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    .line 221
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->o:Ltv/periscope/android/util/a;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->m:Landroid/content/Context;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/util/a;->a(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->L()V

    .line 224
    :cond_0
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bu;->h()V

    goto :goto_0
.end method

.method private w()Ltv/periscope/android/exoplayer/player/k;
    .locals 5

    .prologue
    .line 319
    iget v0, p0, Ltv/periscope/android/ui/broadcast/am;->f:I

    packed-switch v0, :pswitch_data_0

    .line 333
    :pswitch_0
    new-instance v0, Ltv/periscope/android/exoplayer/player/b;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->m:Landroid/content/Context;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->n:Ljava/lang/String;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/am;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;

    invoke-direct {v4}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Ltv/periscope/android/exoplayer/player/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/exoplayer/extractor/Extractor;)V

    :goto_0
    return-object v0

    .line 321
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unsupported type ss"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :pswitch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unsupported type dash"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :pswitch_3
    new-instance v0, Ltv/periscope/android/exoplayer/player/c;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->m:Landroid/content/Context;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->n:Ljava/lang/String;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/am;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ltv/periscope/android/exoplayer/player/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :pswitch_4
    new-instance v0, Ltv/periscope/android/exoplayer/player/n;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->m:Landroid/content/Context;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Ltv/periscope/android/exoplayer/player/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ltv/periscope/android/exoplayer/player/p;)V

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private declared-synchronized x()V
    .locals 4

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->r:Z

    .line 342
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->w()Ltv/periscope/android/exoplayer/player/k;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->A:Ltv/periscope/android/exoplayer/player/k;

    .line 343
    new-instance v0, Ltv/periscope/android/ui/broadcast/bw;

    new-instance v1, Ltv/periscope/android/exoplayer/player/e;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->A:Ltv/periscope/android/exoplayer/player/k;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/am;->d:Ldoh;

    invoke-direct {v1, v2, v3}, Ltv/periscope/android/exoplayer/player/e;-><init>(Ltv/periscope/android/exoplayer/player/k;Ldoh;)V

    invoke-direct {v0, v1, p0, p0, p0}, Ltv/periscope/android/ui/broadcast/bw;-><init>(Ltv/periscope/android/exoplayer/player/e;Ltv/periscope/android/exoplayer/player/j;Ltv/periscope/android/exoplayer/player/g;Ltv/periscope/android/exoplayer/player/f;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    .line 344
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->u:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->v()V

    .line 348
    :cond_0
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->r:Z

    if-eqz v0, :cond_1

    .line 349
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->C:J

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->B:J

    .line 351
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bu;->c()V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->r:Z

    .line 354
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->x:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->x:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/broadcast/bu;->a(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_2
    monitor-exit p0

    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->w:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->w:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setRotation(F)V

    .line 426
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bu;->g()V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    .line 430
    :cond_1
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 456
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 457
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->z:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 458
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 824
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/am;->a(Z)V

    .line 825
    return-void
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->M:Z

    .line 729
    iput-wide p1, p0, Ltv/periscope/android/ui/broadcast/am;->N:D

    .line 730
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->D()V

    .line 731
    return-void
.end method

.method public a(IIIF)V
    .locals 0

    .prologue
    .line 683
    iput p2, p0, Ltv/periscope/android/ui/broadcast/am;->Q:I

    .line 684
    iput p1, p0, Ltv/periscope/android/ui/broadcast/am;->P:I

    .line 685
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->s:Z

    if-eqz v0, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->t:Z

    if-nez v0, :cond_0

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->t:Z

    .line 531
    iput-wide p1, p0, Ltv/periscope/android/ui/broadcast/am;->v:J

    .line 532
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->H()V

    .line 533
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->a:Z

    if-eqz v0, :cond_0

    .line 534
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/am;->c(J)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 671
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->a:Z

    if-nez v0, :cond_0

    .line 672
    iget v0, p0, Ltv/periscope/android/ui/broadcast/am;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/periscope/android/ui/broadcast/am;->E:I

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->C:J

    .line 675
    :cond_0
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/am;->b(Ljava/lang/Exception;)V

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->r:Z

    .line 677
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->E()V

    .line 678
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
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
    .line 706
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/metadata/id3/Id3Frame;

    .line 707
    instance-of v2, v0, Lcom/google/android/exoplayer/metadata/id3/TextInformationFrame;

    if-eqz v2, :cond_0

    .line 708
    check-cast v0, Lcom/google/android/exoplayer/metadata/id3/TextInformationFrame;

    .line 709
    const-string/jumbo v2, "TIT3"

    iget-object v3, v0, Lcom/google/android/exoplayer/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 710
    iget-object v0, v0, Lcom/google/android/exoplayer/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 711
    iget-wide v4, p0, Ltv/periscope/android/ui/broadcast/am;->L:D

    cmpl-double v0, v4, v2

    if-eqz v0, :cond_0

    .line 712
    iput-wide v2, p0, Ltv/periscope/android/ui/broadcast/am;->L:D

    .line 713
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/am;->g()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Ltv/periscope/android/ui/broadcast/am;->d(J)V

    goto :goto_0

    .line 715
    :cond_1
    const-string/jumbo v2, "TKEY"

    iget-object v3, v0, Lcom/google/android/exoplayer/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 716
    iget-object v2, v0, Lcom/google/android/exoplayer/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 717
    iget-object v0, v0, Lcom/google/android/exoplayer/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    invoke-static {v0}, Ltv/periscope/android/exoplayer/player/v;->a(Ljava/lang/String;)D

    move-result-wide v2

    .line 719
    invoke-virtual {p0, v2, v3}, Ltv/periscope/android/ui/broadcast/am;->a(D)V

    goto :goto_0

    .line 724
    :cond_2
    return-void
.end method

.method a(Ljava/util/List;Ljava/net/URL;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/periscope/model/v;",
            ">;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    if-eqz p1, :cond_1

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/model/v;

    .line 311
    if-eqz v0, :cond_0

    .line 312
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->d:Ldoh;

    invoke-virtual {v0}, Ltv/periscope/model/v;->a()Ljava/net/HttpCookie;

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Ldoh;->a(Ljava/net/HttpCookie;Ljava/net/URL;)V

    goto :goto_0

    .line 316
    :cond_1
    return-void
.end method

.method public a(Ljava/util/Map;J)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 757
    if-nez p1, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    const-string/jumbo v0, "ntp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->U:Z

    .line 765
    const-string/jumbo v0, "ntp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 766
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/am;->k()J

    move-result-wide v4

    .line 767
    sub-long v0, p2, v4

    long-to-double v0, v0

    .line 768
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, v0, v6

    .line 769
    sub-double v0, v2, v6

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->L:D

    .line 771
    invoke-static {}, Ltv/periscope/android/video/rtmp/f;->a()Ltv/periscope/android/video/rtmp/f;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/video/rtmp/f;->d()J

    move-result-wide v0

    long-to-double v8, v0

    .line 772
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v0, v8, v0

    const-wide v10, 0x41e0754fd0000000L    # 2.2089888E9

    add-double/2addr v0, v10

    .line 773
    iget-wide v10, p0, Ltv/periscope/android/ui/broadcast/am;->L:D

    sub-double v10, v0, v10

    .line 777
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    .line 779
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->G:Ltv/periscope/android/video/rtmp/o;

    invoke-virtual {v0, v10, v11}, Ltv/periscope/android/video/rtmp/o;->a(D)V

    .line 782
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->A:Ltv/periscope/android/exoplayer/player/k;

    instance-of v0, v0, Ltv/periscope/android/exoplayer/player/n;

    if-eqz v0, :cond_3

    .line 783
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->A:Ltv/periscope/android/exoplayer/player/k;

    check-cast v0, Ltv/periscope/android/exoplayer/player/n;

    .line 784
    invoke-virtual {v0, v4, v5}, Ltv/periscope/android/exoplayer/player/n;->a(J)V

    .line 787
    :cond_3
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 788
    const-string/jumbo v1, "BroadcastPlayer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Latency: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " queued: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ntp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->L:D

    const-wide v2, 0x41e0754fd0000000L    # 2.2089888E9

    sub-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 791
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 792
    const-string/jumbo v0, "BroadcastPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Capture: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    double-to-long v6, v8

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string/jumbo v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 796
    const-string/jumbo v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 797
    const-string/jumbo v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 798
    iget-wide v6, p0, Ltv/periscope/android/ui/broadcast/am;->S:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_4

    iget-wide v6, p0, Ltv/periscope/android/ui/broadcast/am;->R:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_4

    .line 800
    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->S:D

    .line 801
    iput-wide v2, p0, Ltv/periscope/android/ui/broadcast/am;->R:D

    .line 803
    :cond_4
    iget-wide v6, p0, Ltv/periscope/android/ui/broadcast/am;->R:D

    cmpl-double v6, v2, v6

    if-nez v6, :cond_5

    iget-wide v6, p0, Ltv/periscope/android/ui/broadcast/am;->S:D

    cmpl-double v6, v0, v6

    if-eqz v6, :cond_6

    .line 805
    :cond_5
    const-string/jumbo v6, "BroadcastPlayer"

    const-string/jumbo v7, "Source Change detected"

    invoke-static {v6, v7}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->S:D

    .line 807
    iput-wide v2, p0, Ltv/periscope/android/ui/broadcast/am;->R:D

    .line 812
    :cond_6
    const-string/jumbo v0, "rotation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 813
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->M:Z

    .line 814
    const-string/jumbo v0, "rotation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 815
    const-string/jumbo v2, "BroadcastPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Broadcast "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " degrees"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-wide/16 v2, 0x0

    sub-long v4, p2, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 817
    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/am;->z:Landroid/os/Handler;

    new-instance v5, Ltv/periscope/android/ui/broadcast/ar;

    invoke-direct {v5, p0, v0, v1}, Ltv/periscope/android/ui/broadcast/ar;-><init>(Ltv/periscope/android/ui/broadcast/am;D)V

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public a(ZI)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 589
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-nez v0, :cond_0

    .line 641
    :goto_0
    return-void

    .line 592
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 620
    :pswitch_0
    monitor-enter p0

    .line 622
    :try_start_0
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->k:Z

    if-eqz v0, :cond_3

    .line 624
    const-string/jumbo v0, "RTMP"

    const-string/jumbo v1, "Stall when end pending"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->C()V

    .line 626
    monitor-exit p0

    goto :goto_0

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 594
    :pswitch_1
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->B()V

    .line 595
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->a:Z

    if-nez v0, :cond_1

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->C:J

    .line 598
    iget v0, p0, Ltv/periscope/android/ui/broadcast/am;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/periscope/android/ui/broadcast/am;->D:I

    .line 600
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->a:Z

    .line 601
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/am;->b(Z)V

    .line 602
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->t()V

    .line 603
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->t:Z

    if-eqz v0, :cond_2

    .line 604
    iput-boolean v2, p0, Ltv/periscope/android/ui/broadcast/am;->t:Z

    .line 605
    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->v:J

    invoke-direct {p0, v0, v1}, Ltv/periscope/android/ui/broadcast/am;->c(J)V

    goto :goto_0

    .line 607
    :cond_2
    const-string/jumbo v0, "BroadcastPlayer"

    const-string/jumbo v1, "playback was not requested"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :pswitch_2
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->A()V

    .line 614
    iput-boolean v2, p0, Ltv/periscope/android/ui/broadcast/am;->s:Z

    .line 615
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->G()V

    goto :goto_0

    .line 628
    :cond_3
    :try_start_1
    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->J:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->I:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->J:J

    .line 631
    iget v0, p0, Ltv/periscope/android/ui/broadcast/am;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/periscope/android/ui/broadcast/am;->F:I

    .line 632
    const-string/jumbo v0, "BroadcastPlayer"

    const-string/jumbo v1, "Stall"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    const-string/jumbo v0, "RTMP"

    const-string/jumbo v1, "buffering"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->K()V

    .line 637
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->E()V

    goto/16 :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ltv/periscope/model/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/periscope/model/o;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltv/periscope/model/v;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 950
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/am;->e:Ltv/periscope/model/o;

    .line 951
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltv/periscope/model/o;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->h:Z

    .line 952
    invoke-static {p2}, Ldod;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    const-string/jumbo v0, "BroadcastPlayer"

    const-string/jumbo v2, "Using RTMP url."

    invoke-static {v0, v2}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const/4 v0, 0x4

    iput v0, p0, Ltv/periscope/android/ui/broadcast/am;->f:I

    .line 955
    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/am;->g:Ljava/lang/String;

    .line 976
    :goto_1
    :try_start_0
    new-instance v0, Ldoh;

    invoke-direct {v0}, Ldoh;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->d:Ldoh;

    .line 977
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->g:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p5, v0}, Ltv/periscope/android/ui/broadcast/am;->a(Ljava/util/List;Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :goto_2
    iput-boolean v1, p0, Ltv/periscope/android/ui/broadcast/am;->p:Z

    .line 983
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->q:Z

    if-eqz v0, :cond_5

    .line 984
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->x()V

    :goto_3
    move v2, v1

    .line 988
    :goto_4
    return v2

    :cond_0
    move v0, v2

    .line 951
    goto :goto_0

    .line 956
    :cond_1
    invoke-static {p3}, Ldod;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 957
    const-string/jumbo v0, "BroadcastPlayer"

    const-string/jumbo v2, "Using HLS url."

    invoke-static {v0, v2}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iput v3, p0, Ltv/periscope/android/ui/broadcast/am;->f:I

    .line 959
    iput-object p3, p0, Ltv/periscope/android/ui/broadcast/am;->g:Ljava/lang/String;

    goto :goto_1

    .line 960
    :cond_2
    invoke-static {p4}, Ldod;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 961
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 962
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ".m3u8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 963
    const-string/jumbo v0, "BroadcastPlayer"

    const-string/jumbo v2, "Found .m3u8 extension, using HLS."

    invoke-static {v0, v2}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    iput v3, p0, Ltv/periscope/android/ui/broadcast/am;->f:I

    .line 969
    :goto_5
    iput-object p4, p0, Ltv/periscope/android/ui/broadcast/am;->g:Ljava/lang/String;

    goto :goto_1

    .line 966
    :cond_3
    const-string/jumbo v0, "BroadcastPlayer"

    const-string/jumbo v2, "Using other url (probably mp4)"

    invoke-static {v0, v2}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const/4 v0, 0x2

    iput v0, p0, Ltv/periscope/android/ui/broadcast/am;->f:I

    goto :goto_5

    .line 972
    :cond_4
    const-string/jumbo v0, "BroadcastPlayer"

    const-string/jumbo v1, "Unplayable url"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 986
    :cond_5
    const-string/jumbo v0, "BroadcastPlayer"

    const-string/jumbo v2, "Texture not ready, we\'ll set up the player once it becomes available."

    invoke-static {v0, v2}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 978
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 844
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/am;->a(Z)V

    .line 845
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->i:Z

    .line 936
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->u()V

    .line 937
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/ui/broadcast/bu;->a(J)V

    .line 941
    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
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
    .line 702
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 690
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/broadcast/bu;->a(Z)V

    .line 693
    :cond_0
    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->I:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->I:J

    .line 696
    :cond_1
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->J()V

    .line 697
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 830
    monitor-enter p0

    .line 832
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->k:Z

    .line 833
    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->J:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->s:Z

    if-nez v0, :cond_1

    .line 835
    :cond_0
    const-string/jumbo v0, "RTMP"

    const-string/jumbo v1, "End signalled when not playing"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->C()V

    .line 838
    :cond_1
    monitor-exit p0

    .line 839
    return-void

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->j:Z

    .line 435
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->y()V

    .line 438
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->w:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->w:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 440
    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->w:Landroid/view/TextureView;

    .line 442
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->x:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->x:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 444
    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->x:Landroid/view/Surface;

    .line 446
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->O:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->O:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 448
    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->O:Landroid/view/OrientationEventListener;

    .line 450
    :cond_2
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->z()V

    .line 451
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->t()V

    .line 452
    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->A:Ltv/periscope/android/exoplayer/player/k;

    .line 453
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->s:Z

    return v0
.end method

.method public g()J
    .locals 4

    .prologue
    .line 644
    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->L:D

    const-wide v2, 0x41e0754fd0000000L    # 2.2089888E9

    sub-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bu;->e()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    .line 649
    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bu;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Ltv/periscope/android/ui/broadcast/am;->Y:I

    return v0
.end method

.method public j()J
    .locals 4

    .prologue
    .line 862
    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/am;->L:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 863
    invoke-static {}, Ldna;->b()J

    move-result-wide v0

    .line 866
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/am;->g()J

    move-result-wide v0

    goto :goto_0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 870
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bu;->a()J

    move-result-wide v0

    .line 873
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public l()J
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bu;->b()J

    move-result-wide v0

    .line 881
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 3

    .prologue
    .line 887
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/am;->d()V

    .line 888
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->o:Ltv/periscope/android/util/a;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->m:Landroid/content/Context;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/util/a;->b(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 889
    return-void
.end method

.method public n()V
    .locals 3

    .prologue
    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->i:Z

    .line 903
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->o:Ltv/periscope/android/util/a;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/am;->m:Landroid/content/Context;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/am;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/util/a;->b(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 904
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/broadcast/bu;->a(Z)V

    .line 907
    :cond_0
    return-void
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 910
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bu;->e()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 464
    invoke-direct {p0, p1, p2, p3}, Ltv/periscope/android/ui/broadcast/am;->a(Landroid/graphics/SurfaceTexture;II)V

    .line 465
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->p:Z

    if-nez v0, :cond_0

    .line 469
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->x()V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->U:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    .line 916
    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bu;->e()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    .line 917
    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bu;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->i:Z

    return v0
.end method

.method public r()V
    .locals 2

    .prologue
    .line 926
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/am;->i:Z

    .line 927
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/am;->u()V

    .line 928
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/am;->l:Ltv/periscope/android/ui/broadcast/bu;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/broadcast/bu;->a(Z)V

    .line 931
    :cond_0
    return-void
.end method

.method public s()Z
    .locals 2

    .prologue
    .line 944
    iget v0, p0, Ltv/periscope/android/ui/broadcast/am;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
