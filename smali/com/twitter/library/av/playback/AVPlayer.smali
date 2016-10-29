.class public Lcom/twitter/library/av/playback/AVPlayer;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/twitter/app/common/util/h;
.implements Lcom/twitter/library/av/n;
.implements Lcom/twitter/library/media/util/d;


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field private static n:Lcom/twitter/library/av/r;

.field private static o:Lcom/twitter/library/av/playback/m;


# instance fields
.field private final A:Landroid/content/Context;

.field private final B:Lcom/twitter/library/av/playback/ba;

.field private final C:Lcom/twitter/library/av/playback/ao;

.field private final D:Lcom/twitter/library/av/playback/ae;

.field private E:Lcom/twitter/library/av/playback/at;

.field private F:Z

.field private G:Lcom/twitter/library/client/bk;

.field private H:Lcom/twitter/library/av/playback/aw;

.field private final I:Lcom/twitter/library/av/playback/au;

.field private final J:Lcom/twitter/library/av/v;

.field private final K:Landroid/os/Bundle;

.field private L:Z

.field private M:F

.field private N:Z

.field private O:Lcom/twitter/library/av/model/parser/d;

.field volatile c:Lcom/twitter/model/av/AVMediaPlaylist;

.field d:Lcom/twitter/library/av/playback/ch;

.field e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/twitter/util/math/Size;

.field final g:Lcom/twitter/library/av/l;

.field h:Z

.field final i:Lcom/twitter/library/av/playback/az;

.field j:Lcom/twitter/library/av/playback/AVPlayer$PlayerPauseType;

.field volatile k:Lbxa;

.field l:J

.field m:Z

.field private final p:Lcom/twitter/library/av/playback/ay;

.field private final q:Lcom/twitter/library/av/playback/k;

.field private final r:[I

.field private final s:Lceb;

.field private final t:Lcom/twitter/library/av/playback/bf;

.field private final u:Lbvr;

.field private final v:Landroid/content/BroadcastReceiver;

.field private final w:Lcom/twitter/library/media/util/b;

.field private x:Z

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".IS_REPLAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/av/playback/AVPlayer;->a:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".HAS_SCRIBED_SHOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/av/playback/AVPlayer;->b:Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/twitter/library/av/playback/m;->a:Lcom/twitter/library/av/playback/m;

    sput-object v0, Lcom/twitter/library/av/playback/AVPlayer;->o:Lcom/twitter/library/av/playback/m;

    return-void
.end method

.method protected constructor <init>(Lcom/twitter/library/av/playback/ao;Lcom/twitter/library/av/playback/ba;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/twitter/library/av/playback/ae;->a()Lcom/twitter/library/av/playback/ae;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/library/av/playback/AVPlayer;-><init>(Lcom/twitter/library/av/playback/ao;Lcom/twitter/library/av/playback/ba;Landroid/content/Context;Lcom/twitter/library/av/playback/ae;)V

    .line 180
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/library/av/playback/ao;Lcom/twitter/library/av/playback/ba;Landroid/content/Context;Lcom/twitter/library/av/playback/ae;)V
    .locals 6

    .prologue
    .line 186
    new-instance v5, Lcom/twitter/library/av/playback/az;

    invoke-direct {v5}, Lcom/twitter/library/av/playback/az;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/av/playback/AVPlayer;-><init>(Lcom/twitter/library/av/playback/ao;Lcom/twitter/library/av/playback/ba;Landroid/content/Context;Lcom/twitter/library/av/playback/ae;Lcom/twitter/library/av/playback/az;)V

    .line 188
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/library/av/playback/ao;Lcom/twitter/library/av/playback/ba;Landroid/content/Context;Lcom/twitter/library/av/playback/ae;Landroid/os/Handler;Lcom/twitter/library/av/playback/au;Lcom/twitter/library/av/v;Lcom/twitter/library/av/playback/k;Lcom/twitter/library/av/playback/az;Lcom/twitter/library/av/playback/ay;Lcom/twitter/library/av/l;Lcom/twitter/library/media/util/h;Lcom/twitter/library/av/playback/bk;Lbvr;)V
    .locals 4

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v1, Lcom/twitter/library/av/playback/ch;

    invoke-direct {v1}, Lcom/twitter/library/av/playback/ch;-><init>()V

    iput-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->d:Lcom/twitter/library/av/playback/ch;

    .line 132
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->e:Ljava/lang/ref/WeakReference;

    .line 133
    sget-object v1, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    iput-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->f:Lcom/twitter/util/math/Size;

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->h:Z

    .line 137
    sget-object v1, Lcom/twitter/library/av/playback/AVPlayer$PlayerPauseType;->b:Lcom/twitter/library/av/playback/AVPlayer$PlayerPauseType;

    iput-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->j:Lcom/twitter/library/av/playback/AVPlayer$PlayerPauseType;

    .line 139
    sget-object v1, Lbxa;->a:Lbxa;

    iput-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->k:Lbxa;

    .line 145
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->r:[I

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->x:Z

    .line 152
    const/16 v1, 0x64

    iput v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->y:I

    .line 153
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->z:F

    .line 169
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->K:Landroid/os/Bundle;

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->L:Z

    .line 174
    sget-object v1, Lcom/twitter/library/av/model/parser/d;->a:Lcom/twitter/library/av/model/parser/d;

    iput-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->O:Lcom/twitter/library/av/model/parser/d;

    .line 241
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->A:Landroid/content/Context;

    .line 243
    iput-object p1, p0, Lcom/twitter/library/av/playback/AVPlayer;->C:Lcom/twitter/library/av/playback/ao;

    .line 244
    iput-object p4, p0, Lcom/twitter/library/av/playback/AVPlayer;->D:Lcom/twitter/library/av/playback/ae;

    .line 245
    iput-object p6, p0, Lcom/twitter/library/av/playback/AVPlayer;->I:Lcom/twitter/library/av/playback/au;

    .line 246
    iput-object p7, p0, Lcom/twitter/library/av/playback/AVPlayer;->J:Lcom/twitter/library/av/v;

    .line 247
    iput-object p2, p0, Lcom/twitter/library/av/playback/AVPlayer;->B:Lcom/twitter/library/av/playback/ba;

    .line 248
    iput-object p10, p0, Lcom/twitter/library/av/playback/AVPlayer;->p:Lcom/twitter/library/av/playback/ay;

    .line 249
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->A:Landroid/content/Context;

    move-object/from16 v0, p12

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/util/h;->a(Landroid/content/Context;)Lcom/twitter/library/media/util/b;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->w:Lcom/twitter/library/media/util/b;

    .line 250
    iput-object p11, p0, Lcom/twitter/library/av/playback/AVPlayer;->g:Lcom/twitter/library/av/l;

    .line 251
    iput-object p8, p0, Lcom/twitter/library/av/playback/AVPlayer;->q:Lcom/twitter/library/av/playback/k;

    .line 252
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p13

    invoke-virtual {v0, p0, p5, v1}, Lcom/twitter/library/av/playback/bk;->a(Lcom/twitter/library/av/playback/AVPlayer;Landroid/os/Handler;Landroid/content/res/Resources;)Lcom/twitter/library/av/playback/bf;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->t:Lcom/twitter/library/av/playback/bf;

    .line 253
    iput-object p9, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    .line 254
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->u:Lbvr;

    .line 255
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    iget-object v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->t:Lcom/twitter/library/av/playback/bf;

    invoke-virtual {v1, p0, v2}, Lcom/twitter/library/av/playback/az;->a(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/s;)V

    .line 256
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->g:Lcom/twitter/library/av/l;

    invoke-virtual {v1, p0}, Lcom/twitter/library/av/l;->a(Lcom/twitter/library/av/n;)Z

    .line 257
    new-instance v1, Lceb;

    invoke-direct {v1}, Lceb;-><init>()V

    iput-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->s:Lceb;

    .line 258
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    new-instance v2, Lcom/twitter/library/av/playback/av;

    iget-object v3, p0, Lcom/twitter/library/av/playback/AVPlayer;->t:Lcom/twitter/library/av/playback/bf;

    invoke-direct {v2, p0, v3}, Lcom/twitter/library/av/playback/av;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/playback/bf;)V

    iput-object v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->v:Landroid/content/BroadcastReceiver;

    .line 262
    iget-object v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->A:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/library/av/playback/AVPlayer;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->u:Lbvr;

    invoke-static {}, Lbwk;->a()Lbwk;

    move-result-object v2

    invoke-virtual {v2, p0}, Lbwk;->a(Lcom/twitter/library/av/playback/AVPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbvr;->a(Ljava/util/Collection;)Lbvr;

    .line 267
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->p:Lcom/twitter/library/av/playback/ay;

    .line 268
    invoke-virtual {v1}, Lcom/twitter/library/av/playback/ay;->c()Lrx/o;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/av/playback/aq;

    invoke-direct {v2, p0}, Lcom/twitter/library/av/playback/aq;-><init>(Lcom/twitter/library/av/playback/AVPlayer;)V

    .line 269
    invoke-virtual {v1, v2}, Lrx/o;->c(Ldjf;)Lrx/ap;

    .line 275
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/library/av/playback/ao;Lcom/twitter/library/av/playback/ba;Landroid/content/Context;Lcom/twitter/library/av/playback/ae;Lcom/twitter/library/av/playback/az;)V
    .locals 17

    .prologue
    .line 195
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/twitter/library/av/playback/au;

    invoke-direct {v8}, Lcom/twitter/library/av/playback/au;-><init>()V

    new-instance v9, Lcom/twitter/library/av/v;

    invoke-direct {v9}, Lcom/twitter/library/av/v;-><init>()V

    sget-object v2, Lcom/twitter/library/av/playback/AVPlayer;->o:Lcom/twitter/library/av/playback/m;

    .line 197
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lcom/twitter/library/av/playback/m;->a(Landroid/content/Context;Lcom/twitter/library/av/playback/ba;)Lcom/twitter/library/av/playback/k;

    move-result-object v10

    new-instance v12, Lcom/twitter/library/av/playback/ay;

    invoke-direct {v12}, Lcom/twitter/library/av/playback/ay;-><init>()V

    .line 198
    invoke-static/range {p3 .. p3}, Lcom/twitter/library/av/l;->a(Landroid/content/Context;)Lcom/twitter/library/av/l;

    move-result-object v13

    new-instance v14, Lcom/twitter/library/media/util/h;

    invoke-direct {v14}, Lcom/twitter/library/media/util/h;-><init>()V

    new-instance v15, Lcom/twitter/library/av/playback/bk;

    invoke-direct {v15}, Lcom/twitter/library/av/playback/bk;-><init>()V

    new-instance v16, Lbvr;

    invoke-direct/range {v16 .. v16}, Lbvr;-><init>()V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p5

    .line 195
    invoke-direct/range {v2 .. v16}, Lcom/twitter/library/av/playback/AVPlayer;-><init>(Lcom/twitter/library/av/playback/ao;Lcom/twitter/library/av/playback/ba;Landroid/content/Context;Lcom/twitter/library/av/playback/ae;Landroid/os/Handler;Lcom/twitter/library/av/playback/au;Lcom/twitter/library/av/v;Lcom/twitter/library/av/playback/k;Lcom/twitter/library/av/playback/az;Lcom/twitter/library/av/playback/ay;Lcom/twitter/library/av/l;Lcom/twitter/library/media/util/h;Lcom/twitter/library/av/playback/bk;Lbvr;)V

    .line 201
    return-void
.end method

.method private X()I
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->N:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->y:I

    goto :goto_0
.end method

.method private Y()Z
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Z()V
    .locals 4

    .prologue
    .line 859
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->t:Lcom/twitter/library/av/playback/bf;

    sget v1, Lbkb;->media_error_audio_focus_rejected:I

    iget-object v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->A:Landroid/content/Context;

    sget v3, Lbkb;->media_error_audio_focus_rejected:I

    .line 861
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 859
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/av/playback/bf;->a(ILjava/lang/String;)V

    .line 862
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/av/playback/AVPlayer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->A:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/playback/at;)Lcom/twitter/library/av/playback/at;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/twitter/library/av/playback/AVPlayer;->E:Lcom/twitter/library/av/playback/at;

    return-object p1
.end method

.method private a(Lcom/twitter/model/av/DynamicAd;)Lcom/twitter/util/collection/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/av/DynamicAd;",
            ")",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1430
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/av/DynamicAd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/telephony/TelephonyUtil;->e()Lcom/twitter/util/network/c;

    move-result-object v0

    .line 1432
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->O:Lcom/twitter/library/av/model/parser/d;

    .line 1433
    invoke-virtual {p1}, Lcom/twitter/model/av/DynamicAd;->c()Ljava/util/List;

    move-result-object v2

    .line 1432
    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/av/model/parser/d;->a(Ljava/util/List;Lcom/twitter/util/network/c;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    .line 1436
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/playback/AVPlayerAttachment;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    return-void
.end method

.method private a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V
    .locals 1

    .prologue
    .line 346
    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {p1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->b()Lbxa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lbxa;)V

    .line 349
    :cond_0
    return-void
.end method

.method public static a(Lcom/twitter/library/av/playback/m;)V
    .locals 0

    .prologue
    .line 1255
    sput-object p0, Lcom/twitter/library/av/playback/AVPlayer;->o:Lcom/twitter/library/av/playback/m;

    .line 1256
    return-void
.end method

.method public static a(Lcom/twitter/library/av/r;)V
    .locals 0

    .prologue
    .line 1241
    sput-object p0, Lcom/twitter/library/av/playback/AVPlayer;->n:Lcom/twitter/library/av/r;

    .line 1242
    return-void
.end method

.method private aa()Z
    .locals 2

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    .line 869
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/az;->k()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/av/AVMediaPlaylist;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ab()Z
    .locals 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    .line 877
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/az;->k()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/av/AVMediaPlaylist;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ac()Z
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ad()I
    .locals 4

    .prologue
    .line 1101
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->W()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private ae()V
    .locals 2

    .prologue
    .line 1136
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    .line 1137
    if-nez v0, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->t:Lcom/twitter/library/av/playback/bf;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/bf;->e()V

    .line 1143
    invoke-direct {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->c(Lcom/twitter/model/av/AVMediaPlaylist;)Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->t:Lcom/twitter/library/av/playback/bf;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/bf;->f()V

    .line 1145
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->w:Lcom/twitter/library/media/util/b;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->w:Lcom/twitter/library/media/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/library/media/util/b;->b(Lcom/twitter/library/media/util/d;)V

    goto :goto_0
.end method

.method private af()Z
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->k:Lbxa;

    invoke-interface {v0}, Lbxa;->a()Z

    move-result v0

    return v0
.end method

.method private ag()Z
    .locals 1

    .prologue
    .line 1414
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->U()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/library/av/playback/AVPlayer;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ah()Z
    .locals 2

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->B:Lcom/twitter/library/av/playback/ba;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVDataSource;->d()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/library/av/playback/AVPlayer;)Lcom/twitter/library/av/playback/at;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->E:Lcom/twitter/library/av/playback/at;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Lcom/twitter/model/av/AVMediaPlaylist;
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->B:Lcom/twitter/library/av/playback/ba;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVDataSource;->g()Lbwl;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->B:Lcom/twitter/library/av/playback/ba;

    invoke-virtual {v0, p1, v1}, Lbwl;->a(Landroid/content/Context;Lcom/twitter/library/av/playback/ba;)Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/twitter/model/av/AVMediaPlaylist;)Lcom/twitter/library/av/playback/AVMediaPlayer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1161
    invoke-virtual {p0, v3}, Lcom/twitter/library/av/playback/AVPlayer;->c(Z)V

    .line 1163
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/playback/az;->c(Lcom/twitter/model/av/AVMediaPlaylist;)Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    .line 1164
    if-eqz v0, :cond_0

    .line 1166
    const-string/jumbo v1, "open"

    invoke-virtual {p0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/library/av/playback/AVMediaPlayer;)V

    .line 1169
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->t:Lcom/twitter/library/av/playback/bf;

    const/16 v2, 0x2bd

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/av/playback/bf;->b(II)V

    .line 1170
    invoke-interface {v0, v3}, Lcom/twitter/library/av/playback/AVMediaPlayer;->b(Z)V

    .line 1171
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->E()V

    .line 1174
    :cond_0
    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->v()Z

    move-result v0

    return v0
.end method

.method public B()Lcom/twitter/library/av/playback/bl;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->l()Lcom/twitter/library/av/playback/bl;

    move-result-object v0

    return-object v0
.end method

.method public C()V
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    const-string/jumbo v0, "rewind"

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;)V

    .line 1011
    :cond_0
    return-void
.end method

.method public D()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1116
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->j()J

    move-result-wide v0

    .line 1117
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1118
    new-instance v2, Lcom/twitter/library/av/e;

    invoke-direct {v2}, Lcom/twitter/library/av/e;-><init>()V

    .line 1119
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/library/av/e;->c(Ljava/lang/Long;)Lcom/twitter/library/av/e;

    .line 1120
    const-string/jumbo v0, "video_ad_skip"

    invoke-virtual {p0, v0, v4, v4, v2}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/e;)V

    .line 1122
    invoke-direct {p0}, Lcom/twitter/library/av/playback/AVPlayer;->ae()V

    .line 1124
    :cond_0
    return-void
.end method

.method E()V
    .locals 4

    .prologue
    .line 1181
    invoke-static {}, Lcom/twitter/library/av/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1182
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v0

    .line 1183
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v1

    .line 1184
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1185
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Player can\'t be started without setting a media and a playlist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1187
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 1188
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1189
    throw v0

    .line 1193
    :cond_1
    iget-object v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->g:Lcom/twitter/library/av/l;

    iget-object v3, p0, Lcom/twitter/library/av/playback/AVPlayer;->B:Lcom/twitter/library/av/playback/ba;

    invoke-virtual {v2, v3, v0, v1}, Lcom/twitter/library/av/l;->a(Lcom/twitter/library/av/playback/ba;Lcom/twitter/model/av/AVMedia;Lcom/twitter/model/av/AVMediaPlaylist;)V

    .line 1195
    :cond_2
    return-void
.end method

.method public F()Lcom/twitter/model/av/AVMedia;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->d()Lcom/twitter/model/av/AVMedia;

    move-result-object v0

    return-object v0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 1206
    iget-boolean v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->x:Z

    return v0
.end method

.method public H()Lcom/twitter/library/av/v;
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->J:Lcom/twitter/library/av/v;

    return-object v0
.end method

.method public I()V
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->J:Lcom/twitter/library/av/v;

    invoke-virtual {v0}, Lcom/twitter/library/av/v;->a()V

    .line 1220
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1223
    :cond_0
    return-void
.end method

.method public J()Z
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->i()Z

    move-result v0

    return v0
.end method

.method public K()Lcom/twitter/library/av/r;
    .locals 1

    .prologue
    .line 1233
    sget-object v0, Lcom/twitter/library/av/playback/AVPlayer;->n:Lcom/twitter/library/av/r;

    return-object v0
.end method

.method public L()V
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->A()V

    .line 1264
    return-void
.end method

.method public M()V
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->C()V

    .line 1271
    return-void
.end method

.method public N()Lbxa;
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->k:Lbxa;

    return-object v0
.end method

.method public O()Lcom/twitter/model/av/AVMediaPlaylist;
    .locals 2

    .prologue
    .line 1283
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->r:[I

    monitor-enter v1

    .line 1284
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->c:Lcom/twitter/model/av/AVMediaPlaylist;

    monitor-exit v1

    return-object v0

    .line 1285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public P()V
    .locals 1

    .prologue
    .line 1313
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->t()V

    .line 1316
    :cond_0
    return-void
.end method

.method public Q()Lcom/twitter/util/math/Size;
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->f:Lcom/twitter/util/math/Size;

    return-object v0
.end method

.method public R()Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->p:Lcom/twitter/library/av/playback/ay;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ay;->a()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v0

    .line 1347
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->f()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method S()Lcom/twitter/library/av/playback/ae;
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->D:Lcom/twitter/library/av/playback/ae;

    return-object v0
.end method

.method public T()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->A:Landroid/content/Context;

    return-object v0
.end method

.method public U()Z
    .locals 1

    .prologue
    .line 1406
    iget-boolean v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->N:Z

    return v0
.end method

.method public V()Z
    .locals 2

    .prologue
    .line 1481
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->W()F

    move-result v0

    const v1, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public W()F
    .locals 1

    .prologue
    .line 1488
    iget v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->M:F

    return v0
.end method

.method a(Z)J
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->t()V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->h()J

    move-result-wide v0

    .line 577
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->o()Lcom/twitter/library/av/s;

    move-result-object v2

    .line 578
    if-eqz v2, :cond_1

    .line 579
    invoke-interface {v2}, Lcom/twitter/library/av/s;->l()V

    .line 581
    :cond_1
    return-wide v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;J)Lcom/twitter/library/av/e;
    .locals 9

    .prologue
    .line 1063
    new-instance v8, Lcom/twitter/library/av/e;

    invoke-direct {v8}, Lcom/twitter/library/av/e;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    .line 1064
    invoke-virtual/range {v1 .. v8}, Lcom/twitter/library/av/playback/AVPlayer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;JLcom/twitter/library/av/e;)Lcom/twitter/library/av/e;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;JLcom/twitter/library/av/e;)Lcom/twitter/library/av/e;
    .locals 11

    .prologue
    .line 1079
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v4

    .line 1080
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v9, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1081
    iget-boolean v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->N:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->z:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move v8, v2

    .line 1084
    :goto_0
    iget-object v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->d:Lcom/twitter/library/av/playback/ch;

    move-object v3, p2

    move-object/from16 v5, p7

    move-wide/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/twitter/library/av/playback/ch;->a(Ljava/lang/String;Lcom/twitter/model/av/AVMediaPlaylist;Lcom/twitter/library/av/e;J)V

    .line 1085
    move-object/from16 v0, p7

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/e;->a(Landroid/content/Context;)Lcom/twitter/library/av/e;

    move-result-object v2

    .line 1086
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->R()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/av/e;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/av/e;

    move-result-object v2

    .line 1087
    invoke-virtual {v2, p2}, Lcom/twitter/library/av/e;->a(Ljava/lang/String;)Lcom/twitter/library/av/e;

    move-result-object v2

    .line 1088
    invoke-virtual {v2, v4}, Lcom/twitter/library/av/e;->a(Lcom/twitter/model/av/AVMediaPlaylist;)Lcom/twitter/library/av/e;

    move-result-object v2

    .line 1089
    invoke-virtual {v2, p4}, Lcom/twitter/library/av/e;->a(Lcom/twitter/model/av/AVMedia;)Lcom/twitter/library/av/e;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/library/av/playback/AVPlayer;->B:Lcom/twitter/library/av/playback/ba;

    .line 1090
    invoke-virtual {v3}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v3

    invoke-interface {v3}, Lcom/twitter/library/av/playback/AVDataSource;->h()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/av/e;->a(Ljava/util/Map;)Lcom/twitter/library/av/e;

    move-result-object v2

    .line 1091
    invoke-virtual {v2, v9}, Lcom/twitter/library/av/e;->a(I)Lcom/twitter/library/av/e;

    move-result-object v2

    .line 1092
    invoke-virtual {v2, v8}, Lcom/twitter/library/av/e;->a(Z)Lcom/twitter/library/av/e;

    move-result-object v2

    .line 1093
    invoke-direct {p0}, Lcom/twitter/library/av/playback/AVPlayer;->ad()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/av/e;->b(I)Lcom/twitter/library/av/e;

    move-result-object v2

    .line 1094
    invoke-virtual {v2, p3}, Lcom/twitter/library/av/e;->b(Ljava/lang/String;)Lcom/twitter/library/av/e;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/library/av/playback/AVPlayer;->k:Lbxa;

    .line 1095
    invoke-virtual {v2, v3}, Lcom/twitter/library/av/e;->a(Lbxa;)Lcom/twitter/library/av/e;

    move-result-object v2

    .line 1096
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->j()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/av/e;->a(Landroid/os/Bundle;)Lcom/twitter/library/av/e;

    .line 1097
    return-object p7

    .line 1081
    :cond_1
    const/4 v2, 0x0

    move v8, v2

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)Lcom/twitter/model/av/AVMediaPlaylist;
    .locals 1

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/twitter/library/av/playback/AVPlayer;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/library/av/playback/AVPlayer;->b(Landroid/content/Context;)Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/twitter/library/av/playback/AVMediaPlayer;->b(Z)V

    .line 410
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 1385
    iput p1, p0, Lcom/twitter/library/av/playback/AVPlayer;->z:F

    .line 1386
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/library/av/playback/AVMediaPlayer;)V

    .line 1387
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/twitter/library/av/playback/AVMediaPlayer;->b(J)V

    .line 995
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1300
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1301
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->t()V

    .line 1303
    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 750
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->e:Ljava/lang/ref/WeakReference;

    .line 751
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/twitter/library/av/playback/AVMediaPlayer;->a(Landroid/view/Surface;)V

    .line 752
    return-void
.end method

.method a(Lbxa;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->k:Lbxa;

    if-eq p1, v0, :cond_1

    .line 1358
    iput-object p1, p0, Lcom/twitter/library/av/playback/AVPlayer;->k:Lbxa;

    .line 1359
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->x:Z

    .line 1362
    :cond_0
    invoke-interface {p1}, Lbxa;->b()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->d(Z)V

    .line 1363
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/library/av/playback/AVMediaPlayer;)V

    .line 1365
    :cond_1
    return-void
.end method

.method a(Lcom/twitter/library/av/playback/AVMediaPlayer;)V
    .locals 3

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/twitter/library/av/playback/AVPlayer;->X()I

    move-result v0

    int-to-float v0, v0

    .line 432
    const/16 v1, 0x64

    iget v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->z:F

    mul-float/2addr v0, v2

    .line 433
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 432
    invoke-static {v1, v0}, Lcom/twitter/library/media/util/b;->a(II)F

    move-result v0

    invoke-interface {p1, v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->a(F)V

    .line 434
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerPauseType;)V
    .locals 3

    .prologue
    .line 911
    iput-object p1, p0, Lcom/twitter/library/av/playback/AVPlayer;->j:Lcom/twitter/library/av/playback/AVPlayer$PlayerPauseType;

    .line 912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->x:Z

    .line 913
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->w:Lcom/twitter/library/media/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/library/media/util/b;->b(Lcom/twitter/library/media/util/d;)V

    .line 914
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    const-string/jumbo v0, "pause"

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v0

    .line 917
    if-eqz v0, :cond_0

    .line 918
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->u:Lbvr;

    new-instance v2, Lbwc;

    invoke-direct {v2, v0}, Lbwc;-><init>(Lcom/twitter/model/av/AVMedia;)V

    invoke-virtual {v1, v2}, Lbvr;->a(Lbvq;)V

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->u()V

    .line 926
    :goto_0
    return-void

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->t:Lcom/twitter/library/av/playback/bf;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/bf;->j()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/av/playback/as;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 506
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v2

    .line 507
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/twitter/model/av/AVMediaPlaylist;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 508
    :goto_0
    iget-object v3, p0, Lcom/twitter/library/av/playback/AVPlayer;->E:Lcom/twitter/library/av/playback/at;

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    .line 509
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->I:Lcom/twitter/library/av/playback/au;

    invoke-virtual {v0, p0, p1}, Lcom/twitter/library/av/playback/au;->a(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/playback/as;)Lcom/twitter/library/av/playback/at;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->E:Lcom/twitter/library/av/playback/at;

    .line 510
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->E:Lcom/twitter/library/av/playback/at;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/at;->a([Ljava/lang/Object;)V

    .line 514
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 507
    goto :goto_0

    .line 511
    :cond_2
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 512
    invoke-virtual {v2}, Lcom/twitter/model/av/AVMediaPlaylist;->f()Lcom/twitter/model/av/c;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/twitter/library/av/playback/as;->a(Lcom/twitter/model/av/c;)V

    goto :goto_1
.end method

.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->t:Lcom/twitter/library/av/playback/bf;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/playback/bf;->a(Lcom/twitter/library/av/playback/bl;)V

    .line 1110
    return-void
.end method

.method public a(Lcom/twitter/library/av/s;)V
    .locals 5

    .prologue
    .line 360
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v1

    .line 362
    iget-object v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->f:Lcom/twitter/util/math/Size;

    invoke-virtual {v2}, Lcom/twitter/util/math/Size;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->f:Lcom/twitter/util/math/Size;

    invoke-virtual {v2}, Lcom/twitter/util/math/Size;->a()I

    move-result v2

    iget-object v3, p0, Lcom/twitter/library/av/playback/AVPlayer;->f:Lcom/twitter/util/math/Size;

    invoke-virtual {v3}, Lcom/twitter/util/math/Size;->b()I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/twitter/library/av/s;->a(II)V

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->A()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->f:Lcom/twitter/util/math/Size;

    invoke-virtual {v1}, Lcom/twitter/util/math/Size;->a()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->f:Lcom/twitter/util/math/Size;

    invoke-virtual {v2}, Lcom/twitter/util/math/Size;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->z()Z

    move-result v3

    const/4 v4, 0x0

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/twitter/library/av/s;->a(IIZZ)V

    .line 380
    :cond_2
    :goto_0
    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->s()Z

    move-result v1

    if-nez v1, :cond_3

    .line 381
    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->E()Lcom/twitter/library/av/playback/bl;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/twitter/library/av/s;->a(Lcom/twitter/library/av/playback/bl;)V

    .line 383
    :cond_3
    return-void

    .line 367
    :cond_4
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->z()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 368
    invoke-interface {p1}, Lcom/twitter/library/av/s;->f()V

    goto :goto_0

    .line 369
    :cond_5
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->x()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 370
    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->s()Z

    move-result v1

    if-nez v1, :cond_2

    .line 372
    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->e()I

    move-result v1

    .line 373
    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->f()Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-interface {p1, v1, v2}, Lcom/twitter/library/av/s;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_6
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/twitter/model/av/AVMediaPlaylist;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 377
    invoke-virtual {v1}, Lcom/twitter/model/av/AVMediaPlaylist;->f()Lcom/twitter/model/av/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/twitter/library/av/s;->a(Lcom/twitter/model/av/c;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/client/bk;)V
    .locals 2

    .prologue
    .line 394
    iput-object p1, p0, Lcom/twitter/library/av/playback/AVPlayer;->G:Lcom/twitter/library/client/bk;

    .line 396
    new-instance v0, Lcom/twitter/library/av/playback/aw;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/aw;-><init>(Lcom/twitter/library/av/playback/AVPlayer;)V

    iput-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->H:Lcom/twitter/library/av/playback/aw;

    .line 397
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->G:Lcom/twitter/library/client/bk;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->G:Lcom/twitter/library/client/bk;

    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->H:Lcom/twitter/library/av/playback/aw;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 400
    :cond_0
    return-void
.end method

.method a(Lcom/twitter/model/av/AVMedia;Ljava/lang/Long;)V
    .locals 8

    .prologue
    .line 734
    iget-object v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->A:Landroid/content/Context;

    const-string/jumbo v3, "playback_lapse"

    const/4 v4, 0x0

    .line 735
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v6

    move-object v1, p0

    move-object v5, p1

    .line 734
    invoke-virtual/range {v1 .. v7}, Lcom/twitter/library/av/playback/AVPlayer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;J)Lcom/twitter/library/av/e;

    move-result-object v0

    .line 736
    invoke-virtual {v0, p2}, Lcom/twitter/library/av/e;->b(Ljava/lang/Long;)Lcom/twitter/library/av/e;

    .line 737
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->q:Lcom/twitter/library/av/playback/k;

    const-string/jumbo v2, "AVPlayer.EVENT_LOG_ANALYTICS_EVENT"

    invoke-virtual {v0}, Lcom/twitter/library/av/e;->a()Lcom/twitter/library/av/c;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/twitter/library/av/playback/k;->a(Ljava/lang/String;Lcom/twitter/library/av/c;)V

    .line 738
    return-void
.end method

.method protected a(Lcom/twitter/model/av/AVMediaPlaylist;)V
    .locals 3

    .prologue
    .line 544
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/av/AVMediaPlaylist;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->h:Z

    .line 549
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/playback/az;->a(Lcom/twitter/model/av/AVMediaPlaylist;)Lcom/twitter/model/av/AVMedia;

    move-result-object v0

    .line 550
    const-string/jumbo v1, "open"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/model/av/AVMediaPlaylist;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 471
    .line 472
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/av/AVMediaPlaylist;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->s:Lceb;

    invoke-virtual {v0}, Lceb;->a()V

    .line 474
    invoke-virtual {p0, p1}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/model/av/AVMediaPlaylist;)V

    .line 481
    :goto_0
    return-void

    .line 476
    :cond_0
    if-eqz p1, :cond_1

    .line 477
    invoke-virtual {p1}, Lcom/twitter/model/av/AVMediaPlaylist;->f()Lcom/twitter/model/av/c;

    move-result-object v0

    .line 479
    :goto_1
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->t:Lcom/twitter/library/av/playback/bf;

    invoke-virtual {v1, v0}, Lcom/twitter/library/av/playback/bf;->a(Lcom/twitter/model/av/c;)V

    goto :goto_0

    .line 477
    :cond_1
    sget v0, Lbkb;->av_playlist_download_failed:I

    .line 478
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-static {v0}, Lcom/twitter/model/av/c;->a(Ljava/lang/String;)Lcom/twitter/model/av/c;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1014
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/e;)V

    .line 1015
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/twitter/library/av/e;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1022
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/e;)V

    .line 1023
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/twitter/model/av/DynamicAdInfo;)V
    .locals 2

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->B:Lcom/twitter/library/av/playback/ba;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVDataSource;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1463
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    .line 1451
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/av/AVMediaPlaylist;->k()Lcom/twitter/model/av/AVMedia;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/av/AVMediaPlaylist;->i()Lcom/twitter/model/av/DynamicAdInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1457
    iget-object v1, p2, Lcom/twitter/model/av/DynamicAdInfo;->a:Lcom/twitter/model/av/DynamicAd;

    invoke-direct {p0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/model/av/DynamicAd;)Lcom/twitter/util/collection/ab;

    move-result-object v1

    .line 1458
    invoke-virtual {v0, p2, v1}, Lcom/twitter/model/av/AVMediaPlaylist;->a(Lcom/twitter/model/av/DynamicAdInfo;Lcom/twitter/util/collection/ab;)Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->b(Lcom/twitter/model/av/AVMediaPlaylist;)V

    .line 1460
    invoke-virtual {v1}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/az;->b(Lcom/twitter/model/av/AVMediaPlaylist;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1018
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/e;)V

    .line 1019
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V
    .locals 1

    .prologue
    .line 1026
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/e;)V

    .line 1027
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/e;)V
    .locals 9

    .prologue
    .line 1036
    iget-object v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->A:Landroid/content/Context;

    .line 1038
    if-nez p3, :cond_1

    .line 1039
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v5

    .line 1042
    :goto_0
    if-eqz p4, :cond_0

    move-object v8, p4

    .line 1044
    :goto_1
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/twitter/library/av/playback/AVPlayer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;JLcom/twitter/library/av/e;)Lcom/twitter/library/av/e;

    .line 1045
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->q:Lcom/twitter/library/av/playback/k;

    const-string/jumbo v1, "AVPlayer.EVENT_LOG_ANALYTICS_EVENT"

    invoke-virtual {v8}, Lcom/twitter/library/av/e;->a()Lcom/twitter/library/av/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/twitter/library/av/playback/k;->a(Ljava/lang/String;Lcom/twitter/library/av/c;)V

    .line 1048
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->q:Lcom/twitter/library/av/playback/k;

    const-string/jumbo v1, "AVPlayer.EVENT_PROMOTED_LOGGING_EVENT"

    invoke-virtual {v8}, Lcom/twitter/library/av/e;->a()Lcom/twitter/library/av/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/twitter/library/av/playback/k;->a(Ljava/lang/String;Lcom/twitter/library/av/c;)V

    .line 1049
    return-void

    .line 1042
    :cond_0
    new-instance v8, Lcom/twitter/library/av/e;

    invoke-direct {v8}, Lcom/twitter/library/av/e;-><init>()V

    goto :goto_1

    :cond_1
    move-object v5, p3

    goto :goto_0
.end method

.method protected a(ZZ)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 622
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    .line 623
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->q()V

    .line 625
    iget-boolean v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->F:Z

    if-eqz v1, :cond_0

    .line 626
    invoke-static {}, Lcom/twitter/app/common/util/f;->a()Lcom/twitter/app/common/util/f;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/twitter/app/common/util/f;->b(Lcom/twitter/app/common/util/h;)Z

    .line 627
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->F:Z

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->w:Lcom/twitter/library/media/util/b;

    if-eqz v1, :cond_1

    .line 631
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->w:Lcom/twitter/library/media/util/b;

    invoke-virtual {v1, p0}, Lcom/twitter/library/media/util/b;->b(Lcom/twitter/library/media/util/d;)V

    .line 634
    :cond_1
    iget-boolean v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->h:Z

    if-nez v1, :cond_3

    .line 636
    if-eqz v0, :cond_2

    .line 637
    const-string/jumbo v0, "close"

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->r()V

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->u:Lbvr;

    new-instance v1, Lbvx;

    invoke-direct {v1}, Lbvx;-><init>()V

    invoke-virtual {v0, v1}, Lbvr;->a(Lbvq;)V

    .line 646
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->z()Z

    move-result v4

    .line 647
    invoke-virtual {p0, p2}, Lcom/twitter/library/av/playback/AVPlayer;->a(Z)J

    move-result-wide v0

    .line 648
    if-nez v4, :cond_9

    :goto_0
    iput-wide v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->l:J

    .line 650
    if-eqz p1, :cond_4

    .line 651
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->I()V

    .line 654
    :cond_4
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->G:Lcom/twitter/library/client/bk;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->H:Lcom/twitter/library/av/playback/aw;

    if-eqz v0, :cond_5

    .line 655
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->G:Lcom/twitter/library/client/bk;

    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->H:Lcom/twitter/library/av/playback/aw;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bj;)V

    .line 656
    iput-object v6, p0, Lcom/twitter/library/av/playback/AVPlayer;->H:Lcom/twitter/library/av/playback/aw;

    .line 659
    :cond_5
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->g()V

    .line 660
    iput-boolean v5, p0, Lcom/twitter/library/av/playback/AVPlayer;->x:Z

    .line 662
    if-eqz p2, :cond_8

    .line 663
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->K:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 664
    sget-object v0, Lbxa;->a:Lbxa;

    iput-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->k:Lbxa;

    .line 665
    iput-wide v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->l:J

    .line 666
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->r:[I

    monitor-enter v1

    .line 667
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->c:Lcom/twitter/model/av/AVMediaPlaylist;

    .line 668
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    iget-boolean v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->L:Z

    if-nez v0, :cond_7

    .line 672
    :try_start_1
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->A:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 682
    :cond_6
    iput-boolean v5, p0, Lcom/twitter/library/av/playback/AVPlayer;->L:Z

    .line 684
    :cond_7
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->g:Lcom/twitter/library/av/l;

    invoke-virtual {v0, p0}, Lcom/twitter/library/av/l;->b(Lcom/twitter/library/av/n;)Z

    .line 687
    :cond_8
    new-instance v0, Lcom/twitter/library/av/playback/ch;

    invoke-direct {v0}, Lcom/twitter/library/av/playback/ch;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->d:Lcom/twitter/library/av/playback/ch;

    .line 688
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->l()V

    .line 691
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->s:Lceb;

    invoke-virtual {v0}, Lceb;->c()Lcom/twitter/util/concurrent/j;

    .line 693
    iput-boolean v5, p0, Lcom/twitter/library/av/playback/AVPlayer;->h:Z

    .line 694
    return-void

    :cond_9
    move-wide v0, v2

    .line 648
    goto :goto_0

    .line 668
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 673
    :catch_0
    move-exception v0

    .line 675
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 676
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 678
    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->u()V

    .line 405
    return-void
.end method

.method public b(F)V
    .locals 3

    .prologue
    .line 1471
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1472
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "visibility percentage must be 0 - 1.0! received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 1474
    :cond_1
    iput p1, p0, Lcom/twitter/library/av/playback/AVPlayer;->M:F

    .line 1475
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1307
    return-void
.end method

.method public b(Lcom/twitter/model/av/AVMediaPlaylist;)V
    .locals 2

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->c:Lcom/twitter/model/av/AVMediaPlaylist;

    if-ne p1, v0, :cond_0

    .line 1295
    :goto_0
    return-void

    .line 1292
    :cond_0
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->r:[I

    monitor-enter v1

    .line 1293
    :try_start_0
    iput-object p1, p0, Lcom/twitter/library/av/playback/AVPlayer;->c:Lcom/twitter/model/av/AVMediaPlaylist;

    .line 1294
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 785
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/az;->h()J

    .line 793
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->e()Lcom/twitter/library/av/playback/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/library/av/playback/AVDataSource;->d()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 794
    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->b(Lcom/twitter/model/av/AVMediaPlaylist;)V

    .line 798
    :cond_0
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->K:Landroid/os/Bundle;

    sget-object v2, Lcom/twitter/library/av/playback/AVPlayer;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 800
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->K:Landroid/os/Bundle;

    sget-object v2, Lcom/twitter/library/av/playback/AVPlayer;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 801
    const-string/jumbo v1, "show"

    invoke-virtual {p0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;)V

    .line 802
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->u:Lbvr;

    new-instance v2, Lbwh;

    invoke-direct {v2}, Lbwh;-><init>()V

    invoke-virtual {v1, v2}, Lbvr;->a(Lbvq;)V

    .line 805
    :cond_1
    invoke-direct {p0}, Lcom/twitter/library/av/playback/AVPlayer;->ac()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 806
    iget-boolean v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->F:Z

    if-nez v1, :cond_2

    .line 807
    invoke-static {}, Lcom/twitter/app/common/util/f;->a()Lcom/twitter/app/common/util/f;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/twitter/app/common/util/f;->a(Lcom/twitter/app/common/util/h;)V

    .line 808
    iput-boolean v3, p0, Lcom/twitter/library/av/playback/AVPlayer;->F:Z

    .line 810
    :cond_2
    const-string/jumbo v1, "play"

    .line 813
    if-eqz p1, :cond_8

    .line 814
    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->K:Landroid/os/Bundle;

    sget-object v2, Lcom/twitter/library/av/playback/AVPlayer;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 815
    const-string/jumbo v1, "replay"

    .line 816
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v0, Lbwf;

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v2

    invoke-direct {v0, v2}, Lbwf;-><init>(Lcom/twitter/model/av/AVMedia;)V

    .line 825
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 826
    iget-object v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->u:Lbvr;

    invoke-virtual {v2, v0}, Lbvr;->a(Lbvq;)V

    .line 829
    :cond_4
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->C:Lcom/twitter/library/av/playback/ao;

    iget-object v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->B:Lcom/twitter/library/av/playback/ba;

    invoke-virtual {v0, v2}, Lcom/twitter/library/av/playback/ao;->a(Lcom/twitter/library/av/playback/ba;)V

    .line 831
    invoke-virtual {p0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;)V

    .line 832
    invoke-direct {p0}, Lcom/twitter/library/av/playback/AVPlayer;->ag()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->w:Lcom/twitter/library/media/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/library/media/util/b;->a(Lcom/twitter/library/media/util/d;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 833
    :cond_5
    iput-boolean v3, p0, Lcom/twitter/library/av/playback/AVPlayer;->x:Z

    .line 834
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/twitter/library/av/playback/AVMediaPlayer;->b(Z)V

    .line 849
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->x()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->y()Z

    move-result v0

    if-nez v0, :cond_7

    .line 850
    iput-boolean p1, p0, Lcom/twitter/library/av/playback/AVPlayer;->m:Z

    .line 851
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->t:Lcom/twitter/library/av/playback/bf;

    const/16 v1, 0x2bd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/av/playback/bf;->b(II)V

    .line 853
    :cond_7
    return-void

    .line 817
    :cond_8
    iget-object v2, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v2}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/twitter/library/av/playback/AVMediaPlayer;->v()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 818
    const-string/jumbo v1, "resume"

    .line 819
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v0, Lbwg;

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v2

    invoke-direct {v0, v2}, Lbwg;-><init>(Lcom/twitter/model/av/AVMedia;)V

    goto :goto_0

    .line 821
    :cond_9
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->E()V

    .line 822
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v0, Lbwd;

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v2

    invoke-direct {v0, v2}, Lbwd;-><init>(Lcom/twitter/model/av/AVMedia;)V

    goto :goto_0

    .line 836
    :cond_a
    invoke-direct {p0}, Lcom/twitter/library/av/playback/AVPlayer;->Z()V

    goto :goto_1

    .line 838
    :cond_b
    invoke-direct {p0}, Lcom/twitter/library/av/playback/AVPlayer;->ab()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 839
    invoke-virtual {p0, v3}, Lcom/twitter/library/av/playback/AVPlayer;->c(Z)V

    .line 840
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/model/av/AVMediaPlaylist;)V

    goto :goto_1

    .line 841
    :cond_c
    invoke-direct {p0}, Lcom/twitter/library/av/playback/AVPlayer;->aa()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 842
    invoke-virtual {p0, v3}, Lcom/twitter/library/av/playback/AVPlayer;->c(Z)V

    .line 843
    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/library/av/playback/as;)V

    goto :goto_1
.end method

.method public b(Landroid/view/Surface;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 761
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 762
    const/4 v0, 0x0

    .line 767
    :goto_0
    return v0

    .line 765
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->e:Ljava/lang/ref/WeakReference;

    .line 766
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/twitter/library/av/playback/AVMediaPlayer;->a(Landroid/view/Surface;)V

    .line 767
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bl_()V
    .locals 0

    .prologue
    .line 1427
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 414
    const/16 v0, 0x32

    iput v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->y:I

    .line 415
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/library/av/playback/AVMediaPlayer;)V

    .line 416
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 1210
    iput-boolean p1, p0, Lcom/twitter/library/av/playback/AVPlayer;->x:Z

    .line 1211
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 420
    const/16 v0, 0x64

    iput v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->y:I

    .line 421
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/library/av/playback/AVMediaPlayer;)V

    .line 422
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 1393
    iput-boolean p1, p0, Lcom/twitter/library/av/playback/AVPlayer;->N:Z

    .line 1394
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/library/av/playback/AVMediaPlayer;)V

    .line 1395
    if-eqz p1, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->w:Lcom/twitter/library/media/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/library/media/util/b;->b(Lcom/twitter/library/media/util/d;)V

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1397
    :cond_1
    invoke-direct {p0}, Lcom/twitter/library/av/playback/AVPlayer;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->w:Lcom/twitter/library/media/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/library/media/util/b;->a(Lcom/twitter/library/media/util/d;)Z

    goto :goto_0
.end method

.method public e()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->B:Lcom/twitter/library/av/playback/ba;

    return-object v0
.end method

.method public f()Lcom/twitter/library/av/playback/ay;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->p:Lcom/twitter/library/av/playback/ay;

    return-object v0
.end method

.method public g()Lcom/twitter/library/av/playback/AVMediaPlayer;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public h()Lbvr;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->u:Lbvr;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->k:Lbxa;

    invoke-interface {v0}, Lbxa;->e()Z

    move-result v0

    return v0
.end method

.method public j()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->K:Landroid/os/Bundle;

    return-object v0
.end method

.method public k()Lbxa;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->p:Lcom/twitter/library/av/playback/ay;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ay;->a()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->b()Lbxa;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->E:Lcom/twitter/library/av/playback/at;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->E:Lcom/twitter/library/av/playback/at;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/at;->cancel(Z)Z

    .line 522
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->E:Lcom/twitter/library/av/playback/at;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/at;->a()V

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->E:Lcom/twitter/library/av/playback/at;

    .line 525
    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->A:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/model/av/AVMediaPlaylist;Landroid/content/res/Resources;)V

    .line 535
    :cond_0
    return-void
.end method

.method public n()J
    .locals 2

    .prologue
    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method protected o()Lcom/twitter/library/av/s;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->p:Lcom/twitter/library/av/playback/ay;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ay;->a()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->d()Lcom/twitter/library/av/s;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-direct {p0}, Lcom/twitter/library/av/playback/AVPlayer;->af()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/az;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    :goto_0
    return-void

    .line 1132
    :cond_0
    invoke-direct {p0}, Lcom/twitter/library/av/playback/AVPlayer;->ae()V

    goto :goto_0
.end method

.method public p()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method

.method protected q()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->p:Lcom/twitter/library/av/playback/ay;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ay;->b()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 706
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->d()Lcom/twitter/library/av/s;

    move-result-object v0

    .line 707
    if-eqz v0, :cond_0

    .line 708
    invoke-interface {v0}, Lcom/twitter/library/av/s;->k()V

    goto :goto_0

    .line 711
    :cond_1
    return-void
.end method

.method r()V
    .locals 6

    .prologue
    .line 718
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 719
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/av/AVMedia;

    .line 720
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/ab;

    .line 721
    invoke-interface {v0}, Lcom/twitter/library/av/playback/ab;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 722
    invoke-interface {v0}, Lcom/twitter/library/av/playback/ab;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/model/av/AVMedia;Ljava/lang/Long;)V

    goto :goto_0

    .line 725
    :cond_1
    return-void
.end method

.method public s()Lcom/twitter/library/av/playback/AVPlayer$PlayerPauseType;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->j:Lcom/twitter/library/av/playback/AVPlayer$PlayerPauseType;

    return-object v0
.end method

.method public t()V
    .locals 1

    .prologue
    .line 902
    sget-object v0, Lcom/twitter/library/av/playback/AVPlayer$PlayerPauseType;->b:Lcom/twitter/library/av/playback/AVPlayer$PlayerPauseType;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerPauseType;)V

    .line 903
    return-void
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->k()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    .line 942
    invoke-direct {p0}, Lcom/twitter/library/av/playback/AVPlayer;->aa()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/library/av/playback/AVPlayer;->E:Lcom/twitter/library/av/playback/at;

    if-nez v1, :cond_1

    :cond_0
    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->t()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->y()Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    .line 970
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/av/AVMediaPlaylist;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVMediaPlayer;->z()Z

    move-result v0

    return v0
.end method
