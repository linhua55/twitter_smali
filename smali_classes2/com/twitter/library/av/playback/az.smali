.class public Lcom/twitter/library/av/playback/az;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/model/av/AVMedia;",
            "Lcom/twitter/library/av/playback/ab;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/library/av/q;

.field private c:Lcom/twitter/library/av/s;

.field private d:Lcom/twitter/library/av/playback/AVPlayer;

.field private e:Lcom/twitter/library/av/playback/AVMediaPlayer;

.field private f:Lcom/twitter/library/av/playback/AVMediaPlayer;

.field private g:Lcom/twitter/library/av/playback/AVMediaPlayer;

.field private h:Lcom/twitter/model/av/AVMediaPlaylist;

.field private i:Lcom/twitter/model/av/AVMedia;

.field private j:Lcom/twitter/model/av/AVMedia;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/twitter/library/av/q;->a()Lcom/twitter/library/av/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/library/av/playback/az;-><init>(Lcom/twitter/library/av/q;)V

    .line 50
    return-void
.end method

.method constructor <init>(Lcom/twitter/library/av/q;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/av/playback/az;->a:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer;->b:Lcom/twitter/library/av/playback/AVMediaPlayer;

    iput-object v0, p0, Lcom/twitter/library/av/playback/az;->e:Lcom/twitter/library/av/playback/AVMediaPlayer;

    .line 42
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer;->b:Lcom/twitter/library/av/playback/AVMediaPlayer;

    iput-object v0, p0, Lcom/twitter/library/av/playback/az;->f:Lcom/twitter/library/av/playback/AVMediaPlayer;

    .line 43
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer;->b:Lcom/twitter/library/av/playback/AVMediaPlayer;

    iput-object v0, p0, Lcom/twitter/library/av/playback/az;->g:Lcom/twitter/library/av/playback/AVMediaPlayer;

    .line 53
    iput-object p1, p0, Lcom/twitter/library/av/playback/az;->b:Lcom/twitter/library/av/q;

    .line 54
    return-void
.end method

.method private a(Lcom/twitter/model/av/AVMedia;Z)Lcom/twitter/library/av/playback/AVMediaPlayer;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/twitter/library/av/playback/az;->a(Lcom/twitter/model/av/AVMedia;)Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    .line 313
    if-eqz p2, :cond_0

    .line 314
    invoke-direct {p0, v0}, Lcom/twitter/library/av/playback/az;->c(Lcom/twitter/library/av/playback/AVMediaPlayer;)V

    .line 316
    :cond_0
    return-object v0
.end method

.method static a(Lcom/twitter/library/av/playback/AVMediaPlayer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-interface {p0, v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->a(Lcom/twitter/library/av/s;)V

    .line 131
    invoke-interface {p0, v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 132
    invoke-interface {p0, v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->a(Landroid/view/Surface;)V

    .line 133
    return-void
.end method

.method private a(Lbxa;)Z
    .locals 1

    .prologue
    .line 203
    invoke-interface {p1}, Lbxa;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->i:Lcom/twitter/model/av/AVMedia;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/twitter/library/av/playback/AVMediaPlayer;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->d:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->p()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->a(Landroid/view/Surface;)V

    .line 137
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->d:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-interface {p1, v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 138
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->c:Lcom/twitter/library/av/s;

    invoke-interface {p1, v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->a(Lcom/twitter/library/av/s;)V

    .line 139
    return-void
.end method

.method private b(Lbxa;)Z
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    .line 242
    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->s()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/library/av/playback/az;->a(Lbxa;)Z

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/twitter/library/av/playback/AVMediaPlayer;)V
    .locals 2

    .prologue
    .line 322
    iput-object p1, p0, Lcom/twitter/library/av/playback/az;->g:Lcom/twitter/library/av/playback/AVMediaPlayer;

    .line 324
    invoke-direct {p0, p1}, Lcom/twitter/library/av/playback/az;->b(Lcom/twitter/library/av/playback/AVMediaPlayer;)V

    .line 325
    invoke-interface {p1}, Lcom/twitter/library/av/playback/AVMediaPlayer;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->d:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->T()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/av/playback/az;->h:Lcom/twitter/model/av/AVMediaPlaylist;

    invoke-virtual {v1}, Lcom/twitter/model/av/AVMediaPlaylist;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/twitter/library/av/playback/AVMediaPlayer;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method a()Lcom/twitter/library/av/playback/AVMediaPlayer;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->e:Lcom/twitter/library/av/playback/AVMediaPlayer;

    return-object v0
.end method

.method a(Lcom/twitter/model/av/AVMedia;)Lcom/twitter/library/av/playback/AVMediaPlayer;
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/twitter/library/av/playback/az;->d:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-static {v1, p1}, Lcom/twitter/library/av/playback/ci;->a(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)Lcom/twitter/library/av/playback/ab;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->d:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->S()Lcom/twitter/library/av/playback/ae;

    move-result-object v1

    .line 345
    new-instance v0, Lcom/twitter/library/av/playback/ad;

    invoke-direct {v0}, Lcom/twitter/library/av/playback/ad;-><init>()V

    .line 346
    invoke-virtual {v0, p1}, Lcom/twitter/library/av/playback/ad;->a(Lcom/twitter/model/av/AVMedia;)Lcom/twitter/library/av/playback/ad;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/library/av/playback/az;->d:Lcom/twitter/library/av/playback/AVPlayer;

    .line 347
    invoke-virtual {v2}, Lcom/twitter/library/av/playback/AVPlayer;->h()Lbvr;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/av/playback/ad;->a(Lbvr;)Lcom/twitter/library/av/playback/ad;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/library/av/playback/az;->d:Lcom/twitter/library/av/playback/AVPlayer;

    .line 348
    invoke-virtual {v2}, Lcom/twitter/library/av/playback/AVPlayer;->T()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/av/playback/ad;->a(Landroid/content/Context;)Lcom/twitter/library/av/playback/ad;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->a:Ljava/util/Map;

    .line 349
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/ab;

    invoke-virtual {v2, v0}, Lcom/twitter/library/av/playback/ad;->a(Lcom/twitter/library/av/playback/ab;)Lcom/twitter/library/av/playback/ad;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/library/av/playback/az;->b:Lcom/twitter/library/av/q;

    .line 350
    invoke-virtual {v2}, Lcom/twitter/library/av/q;->b()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/av/playback/ad;->a(Landroid/os/Handler;)Lcom/twitter/library/av/playback/ad;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ad;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/ac;

    .line 352
    invoke-virtual {v1, v0}, Lcom/twitter/library/av/playback/ae;->a(Lcom/twitter/library/av/playback/ac;)Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v1

    .line 355
    invoke-static {}, Lbwk;->a()Lbwk;

    move-result-object v2

    .line 356
    iget-object v0, v0, Lcom/twitter/library/av/playback/ac;->b:Lbvr;

    iget-object v3, p0, Lcom/twitter/library/av/playback/az;->d:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v2, v3, p1}, Lbwk;->a(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbvr;->a(Ljava/util/Collection;)Lbvr;

    .line 358
    return-object v1
.end method

.method public a(Lcom/twitter/model/av/AVMediaPlaylist;)Lcom/twitter/model/av/AVMedia;
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->d:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->N()Lbxa;

    move-result-object v0

    .line 218
    iput-object p1, p0, Lcom/twitter/library/av/playback/az;->h:Lcom/twitter/model/av/AVMediaPlaylist;

    .line 219
    invoke-virtual {p1}, Lcom/twitter/model/av/AVMediaPlaylist;->k()Lcom/twitter/model/av/AVMedia;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/av/playback/az;->i:Lcom/twitter/model/av/AVMedia;

    .line 220
    iget-object v1, p0, Lcom/twitter/library/av/playback/az;->i:Lcom/twitter/model/av/AVMedia;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/twitter/library/av/playback/az;->i:Lcom/twitter/model/av/AVMedia;

    invoke-direct {p0, v0}, Lcom/twitter/library/av/playback/az;->a(Lbxa;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/twitter/library/av/playback/az;->a(Lcom/twitter/model/av/AVMedia;Z)Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/av/playback/az;->e:Lcom/twitter/library/av/playback/AVMediaPlayer;

    .line 223
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/model/av/AVMediaPlaylist;->c()Lcom/twitter/model/av/AVMedia;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/av/playback/az;->j:Lcom/twitter/model/av/AVMedia;

    .line 224
    iget-object v1, p0, Lcom/twitter/library/av/playback/az;->j:Lcom/twitter/model/av/AVMedia;

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/twitter/library/av/playback/az;->j:Lcom/twitter/model/av/AVMedia;

    invoke-direct {p0, v0}, Lcom/twitter/library/av/playback/az;->a(Lbxa;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/twitter/library/av/playback/az;->a(Lcom/twitter/model/av/AVMedia;Z)Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/playback/az;->f:Lcom/twitter/library/av/playback/AVMediaPlayer;

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->d()Lcom/twitter/model/av/AVMedia;

    move-result-object v0

    return-object v0

    .line 225
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/s;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/twitter/library/av/playback/az;->d:Lcom/twitter/library/av/playback/AVPlayer;

    .line 62
    iput-object p2, p0, Lcom/twitter/library/av/playback/az;->c:Lcom/twitter/library/av/s;

    .line 63
    return-void
.end method

.method protected a(Z)Z
    .locals 2

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->d()Lcom/twitter/model/av/AVMedia;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/twitter/model/av/AVMedia;->e()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->s()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->B()Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->F()V

    .line 426
    :cond_1
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Lcom/twitter/library/av/playback/AVMediaPlayer;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->f:Lcom/twitter/library/av/playback/AVMediaPlayer;

    return-object v0
.end method

.method public b(Lcom/twitter/model/av/AVMediaPlaylist;)V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->h:Lcom/twitter/model/av/AVMediaPlaylist;

    if-nez v0, :cond_2

    .line 262
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Requested a re-buffer within an illegal state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twitter/library/av/playback/az;->a(Lcom/twitter/model/av/AVMediaPlaylist;)Lcom/twitter/model/av/AVMedia;

    .line 307
    :cond_1
    :goto_0
    return-void

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->i:Lcom/twitter/model/av/AVMedia;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->e:Lcom/twitter/library/av/playback/AVMediaPlayer;

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->s()Z

    move-result v0

    if-nez v0, :cond_4

    .line 271
    :cond_3
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Requested a re-buffer with an ad already buffered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->h:Lcom/twitter/model/av/AVMediaPlaylist;

    invoke-virtual {p1, v0}, Lcom/twitter/model/av/AVMediaPlaylist;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/twitter/model/av/AVMediaPlaylist;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/twitter/model/av/AVMediaPlaylist;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {p1}, Lcom/twitter/model/av/AVMediaPlaylist;->k()Lcom/twitter/model/av/AVMedia;

    move-result-object v1

    .line 288
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/twitter/library/av/playback/az;->i:Lcom/twitter/model/av/AVMedia;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/ab;

    .line 289
    if-eqz v0, :cond_5

    .line 290
    iget-object v2, p0, Lcom/twitter/library/av/playback/az;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_5
    iput-object v1, p0, Lcom/twitter/library/av/playback/az;->i:Lcom/twitter/model/av/AVMedia;

    .line 294
    iput-object p1, p0, Lcom/twitter/library/av/playback/az;->h:Lcom/twitter/model/av/AVMediaPlaylist;

    .line 296
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->d:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->N()Lbxa;

    move-result-object v0

    .line 297
    invoke-direct {p0, v0}, Lcom/twitter/library/av/playback/az;->b(Lbxa;)Z

    move-result v0

    .line 299
    if-eqz v0, :cond_6

    .line 302
    iget-object v1, p0, Lcom/twitter/library/av/playback/az;->f:Lcom/twitter/library/av/playback/AVMediaPlayer;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/twitter/library/av/playback/AVMediaPlayer;->a(Z)V

    .line 303
    iget-object v1, p0, Lcom/twitter/library/av/playback/az;->j:Lcom/twitter/model/av/AVMedia;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/twitter/library/av/playback/az;->a(Lcom/twitter/model/av/AVMedia;Z)Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/av/playback/az;->f:Lcom/twitter/library/av/playback/AVMediaPlayer;

    .line 306
    :cond_6
    iget-object v1, p0, Lcom/twitter/library/av/playback/az;->i:Lcom/twitter/model/av/AVMedia;

    invoke-direct {p0, v1, v0}, Lcom/twitter/library/av/playback/az;->a(Lcom/twitter/model/av/AVMedia;Z)Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/playback/az;->e:Lcom/twitter/library/av/playback/AVMediaPlayer;

    goto :goto_0
.end method

.method public c()Lcom/twitter/library/av/playback/AVMediaPlayer;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->g:Lcom/twitter/library/av/playback/AVMediaPlayer;

    return-object v0
.end method

.method public c(Lcom/twitter/model/av/AVMediaPlaylist;)Lcom/twitter/library/av/playback/AVMediaPlayer;
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/library/av/playback/az;->h:Lcom/twitter/model/av/AVMediaPlaylist;

    invoke-virtual {p1, v1}, Lcom/twitter/model/av/AVMediaPlaylist;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Playlists do not match!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onMediaComplete was called without an active buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->a()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/av/playback/az;->a(Lcom/twitter/library/av/playback/AVMediaPlayer;)V

    .line 382
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->b()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    .line 383
    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer;->b:Lcom/twitter/library/av/playback/AVMediaPlayer;

    if-eq v0, v1, :cond_2

    .line 384
    invoke-direct {p0, v0}, Lcom/twitter/library/av/playback/az;->c(Lcom/twitter/library/av/playback/AVMediaPlayer;)V

    .line 388
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/twitter/model/av/AVMedia;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->i:Lcom/twitter/model/av/AVMedia;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->j:Lcom/twitter/model/av/AVMedia;

    goto :goto_0
.end method

.method e()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->s()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->a()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/model/av/AVMedia;",
            "Lcom/twitter/library/av/playback/ab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->a:Ljava/util/Map;

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 120
    return-void
.end method

.method public h()J
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 149
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->E()Lcom/twitter/library/av/playback/bl;

    move-result-object v0

    iget-wide v2, v0, Lcom/twitter/library/av/playback/bl;->b:J

    .line 151
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/ab;

    .line 152
    invoke-interface {v0}, Lcom/twitter/library/av/playback/ab;->e()V

    goto :goto_0

    .line 155
    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer;->b:Lcom/twitter/library/av/playback/AVMediaPlayer;

    iput-object v0, p0, Lcom/twitter/library/av/playback/az;->g:Lcom/twitter/library/av/playback/AVMediaPlayer;

    .line 157
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->e:Lcom/twitter/library/av/playback/AVMediaPlayer;

    invoke-interface {v0, v5}, Lcom/twitter/library/av/playback/AVMediaPlayer;->a(Z)V

    .line 158
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->i:Lcom/twitter/model/av/AVMedia;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->d:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->h()Lbvr;

    move-result-object v0

    new-instance v1, Lbvw;

    iget-object v4, p0, Lcom/twitter/library/av/playback/az;->i:Lcom/twitter/model/av/AVMedia;

    invoke-direct {v1, v4}, Lbvw;-><init>(Lcom/twitter/model/av/AVMedia;)V

    invoke-virtual {v0, v1}, Lbvr;->a(Lbvq;)V

    .line 161
    :cond_1
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer;->b:Lcom/twitter/library/av/playback/AVMediaPlayer;

    iput-object v0, p0, Lcom/twitter/library/av/playback/az;->e:Lcom/twitter/library/av/playback/AVMediaPlayer;

    .line 163
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->f:Lcom/twitter/library/av/playback/AVMediaPlayer;

    invoke-interface {v0, v5}, Lcom/twitter/library/av/playback/AVMediaPlayer;->a(Z)V

    .line 164
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->j:Lcom/twitter/model/av/AVMedia;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->d:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->h()Lbvr;

    move-result-object v0

    new-instance v1, Lbvw;

    iget-object v4, p0, Lcom/twitter/library/av/playback/az;->j:Lcom/twitter/model/av/AVMedia;

    invoke-direct {v1, v4}, Lbvw;-><init>(Lcom/twitter/model/av/AVMedia;)V

    invoke-virtual {v0, v1}, Lbvr;->a(Lbvq;)V

    .line 167
    :cond_2
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer;->b:Lcom/twitter/library/av/playback/AVMediaPlayer;

    iput-object v0, p0, Lcom/twitter/library/av/playback/az;->f:Lcom/twitter/library/av/playback/AVMediaPlayer;

    .line 169
    return-wide v2
.end method

.method public i()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/twitter/library/av/playback/az;->i:Lcom/twitter/model/av/AVMedia;

    if-eqz v0, :cond_2

    move v0, v1

    .line 178
    :goto_0
    iget-object v3, p0, Lcom/twitter/library/av/playback/az;->j:Lcom/twitter/model/av/AVMedia;

    if-eqz v3, :cond_3

    move v3, v1

    .line 179
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    move v0, v1

    .line 181
    :goto_2
    if-nez v0, :cond_5

    move v1, v2

    .line 189
    :cond_1
    :goto_3
    return v1

    :cond_2
    move v0, v2

    .line 177
    goto :goto_0

    :cond_3
    move v3, v2

    .line 178
    goto :goto_1

    :cond_4
    move v0, v2

    .line 179
    goto :goto_2

    .line 185
    :cond_5
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v3, :cond_1

    :cond_6
    move v1, v2

    goto :goto_3
.end method

.method public j()J
    .locals 2

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->a()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    .line 399
    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->u()V

    .line 400
    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->E()Lcom/twitter/library/av/playback/bl;

    move-result-object v0

    iget-wide v0, v0, Lcom/twitter/library/av/playback/bl;->b:J

    .line 403
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected k()Z
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lcom/twitter/library/av/playback/bl;
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->E()Lcom/twitter/library/av/playback/bl;

    move-result-object v0

    return-object v0
.end method
