.class Ltv/periscope/android/ui/broadcast/bo;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldmj;
.implements Ltv/periscope/android/chat/g;
.implements Ltv/periscope/android/player/a;
.implements Ltv/periscope/android/ui/broadcast/bm;
.implements Ltv/periscope/android/ui/broadcast/cg;
.implements Ltv/periscope/android/ui/chat/ag;
.implements Ltv/periscope/android/ui/chat/ai;
.implements Ltv/periscope/android/ui/chat/al;
.implements Ltv/periscope/android/ui/chat/am;


# static fields
.field private static final l:Ltv/periscope/android/ui/broadcast/moderator/a;

.field private static final m:Ltv/periscope/android/ui/broadcast/moderator/b;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Ltv/periscope/android/ui/broadcast/cd;

.field private E:Z

.field private F:Z

.field private G:Ltv/periscope/android/chat/a;

.field private final H:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final I:Landroid/content/Context;

.field private final J:Lde/greenrobot/event/c;

.field private final K:Ltv/periscope/android/api/ApiManager;

.field private final L:Ljava/lang/String;

.field private final M:Lretrofit/RestAdapter$LogLevel;

.field private final N:Z

.field private final O:Z

.field private final P:Ltv/periscope/android/chat/i;

.field private Q:Ltv/periscope/android/chat/f;

.field private R:Ldmk;

.field private final S:Ljava/lang/Runnable;

.field private final T:Ljava/lang/Runnable;

.field private final U:Ljava/lang/Runnable;

.field protected a:Ltv/periscope/android/player/c;

.field protected b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

.field protected c:Ltv/periscope/model/o;

.field protected d:Ljava/lang/String;

.field protected e:Ltv/periscope/android/api/PsUser;

.field protected f:Ltv/periscope/android/ui/broadcast/cc;

.field protected g:Ltv/periscope/android/player/d;

.field protected h:Ltv/periscope/android/player/e;

.field protected i:Z

.field protected j:Ltv/periscope/android/player/PlayMode;

.field protected final k:Landroid/os/Handler;

.field private n:Ltv/periscope/android/data/f;

.field private o:Ltv/periscope/android/data/b;

.field private final p:Ldmy;

.field private q:Ltv/periscope/model/ac;

.field private r:Ltv/periscope/model/u;

.field private s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ldml;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Z

.field private v:J

.field private w:I

.field private x:Ljava/lang/Boolean;

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ltv/periscope/android/ui/broadcast/moderator/q;

    invoke-direct {v0}, Ltv/periscope/android/ui/broadcast/moderator/q;-><init>()V

    sput-object v0, Ltv/periscope/android/ui/broadcast/bo;->l:Ltv/periscope/android/ui/broadcast/moderator/a;

    .line 85
    new-instance v0, Ltv/periscope/android/ui/broadcast/bp;

    invoke-direct {v0}, Ltv/periscope/android/ui/broadcast/bp;-><init>()V

    sput-object v0, Ltv/periscope/android/ui/broadcast/bo;->m:Ltv/periscope/android/ui/broadcast/moderator/b;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lde/greenrobot/event/c;Ltv/periscope/android/api/ApiManager;Ljava/lang/String;Ltv/periscope/android/data/f;Ltv/periscope/android/data/b;Ltv/periscope/android/api/PsUser;Ltv/periscope/android/player/d;Ltv/periscope/android/player/e;Ldmy;Ldmy;Ltv/periscope/android/chat/a;Lretrofit/RestAdapter$LogLevel;Ltv/periscope/android/player/c;Ltv/periscope/android/ui/broadcast/cc;ZZLtv/periscope/android/chat/i;)V
    .locals 3

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltv/periscope/android/ui/broadcast/bo;->E:Z

    .line 169
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->k:Landroid/os/Handler;

    .line 230
    new-instance v1, Ltv/periscope/android/ui/broadcast/bq;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/broadcast/bq;-><init>(Ltv/periscope/android/ui/broadcast/bo;)V

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->S:Ljava/lang/Runnable;

    .line 240
    new-instance v1, Ltv/periscope/android/ui/broadcast/br;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/broadcast/br;-><init>(Ltv/periscope/android/ui/broadcast/bo;)V

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->T:Ljava/lang/Runnable;

    .line 258
    new-instance v1, Ltv/periscope/android/ui/broadcast/bs;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/broadcast/bs;-><init>(Ltv/periscope/android/ui/broadcast/bo;)V

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->U:Ljava/lang/Runnable;

    .line 276
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->H:Ljava/lang/ref/WeakReference;

    .line 277
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->I:Landroid/content/Context;

    .line 278
    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/bo;->J:Lde/greenrobot/event/c;

    .line 279
    iput-object p3, p0, Ltv/periscope/android/ui/broadcast/bo;->K:Ltv/periscope/android/api/ApiManager;

    .line 280
    iput-object p4, p0, Ltv/periscope/android/ui/broadcast/bo;->L:Ljava/lang/String;

    .line 281
    iput-object p5, p0, Ltv/periscope/android/ui/broadcast/bo;->n:Ltv/periscope/android/data/f;

    .line 282
    iput-object p6, p0, Ltv/periscope/android/ui/broadcast/bo;->o:Ltv/periscope/android/data/b;

    .line 283
    iput-object p7, p0, Ltv/periscope/android/ui/broadcast/bo;->e:Ltv/periscope/android/api/PsUser;

    .line 284
    iput-object p8, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    .line 285
    iput-object p9, p0, Ltv/periscope/android/ui/broadcast/bo;->h:Ltv/periscope/android/player/e;

    .line 286
    iput-object p10, p0, Ltv/periscope/android/ui/broadcast/bo;->p:Ldmy;

    .line 287
    move-object/from16 v0, p14

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    .line 288
    move-object/from16 v0, p15

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->f:Ltv/periscope/android/ui/broadcast/cc;

    .line 289
    move-object/from16 v0, p13

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->M:Lretrofit/RestAdapter$LogLevel;

    .line 290
    move/from16 v0, p17

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->O:Z

    .line 291
    move-object/from16 v0, p18

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->P:Ltv/periscope/android/chat/i;

    .line 292
    iput-object p12, p0, Ltv/periscope/android/ui/broadcast/bo;->G:Ltv/periscope/android/chat/a;

    .line 293
    move/from16 v0, p16

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->N:Z

    .line 295
    invoke-direct {p0, p11}, Ltv/periscope/android/ui/broadcast/bo;->a(Ldmy;)V

    .line 296
    return-void
.end method

.method private V()V
    .locals 13

    .prologue
    .line 363
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->n()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bo;->k:Landroid/os/Handler;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/bo;->G:Ltv/periscope/android/chat/a;

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/bo;->f:Ltv/periscope/android/ui/broadcast/cc;

    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/bo;->e:Ltv/periscope/android/api/PsUser;

    const/4 v6, 0x0

    iget-object v8, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    iget-object v9, p0, Ltv/periscope/android/ui/broadcast/bo;->h:Ltv/periscope/android/player/e;

    iget-object v11, p0, Ltv/periscope/android/ui/broadcast/bo;->n:Ltv/periscope/android/data/f;

    const/4 v12, 0x0

    move-object v7, p0

    move-object v10, p0

    invoke-virtual/range {v0 .. v12}, Ltv/periscope/android/ui/broadcast/cd;->a(Landroid/content/res/Resources;Landroid/os/Handler;Ltv/periscope/android/chat/a;Ltv/periscope/android/ui/broadcast/cc;Ltv/periscope/android/api/PsUser;ZLtv/periscope/android/ui/chat/al;Ltv/periscope/android/player/d;Ltv/periscope/android/player/e;Ltv/periscope/android/ui/chat/am;Ltv/periscope/android/data/f;Ldmn;)Ltv/periscope/android/ui/chat/y;

    move-result-object v0

    .line 367
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v1, v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->setSendCommentDelegate(Ltv/periscope/android/ui/chat/ar;)V

    .line 368
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v1, v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->setPunishmentStatusDelegate(Ltv/periscope/android/ui/chat/aq;)V

    .line 369
    return-void
.end method

.method private W()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-interface {v0}, Ltv/periscope/android/player/c;->P()V

    .line 391
    return-void
.end method

.method private X()V
    .locals 2

    .prologue
    .line 418
    sget-object v0, Ltv/periscope/android/ui/broadcast/bt;->a:[I

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    invoke-virtual {v1}, Ltv/periscope/android/player/PlayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 431
    :goto_0
    return-void

    .line 420
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->i()V

    .line 421
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->d()V

    .line 422
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    sget-object v1, Ltv/periscope/android/ui/chat/ChatState;->a:Ltv/periscope/android/ui/chat/ChatState;

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->setChatState(Ltv/periscope/android/ui/chat/ChatState;)V

    goto :goto_0

    .line 427
    :pswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->j()V

    .line 428
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e()V

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private Y()V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 434
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->I:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Ltv/periscope/android/player/d;->a(Landroid/content/Context;Ltv/periscope/android/player/a;)V

    .line 435
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    iget-boolean v0, v0, Ltv/periscope/android/player/PlayMode;->autoPlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    sget-object v1, Ltv/periscope/android/player/PlayMode;->b:Ltv/periscope/android/player/PlayMode;

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/bo;->z:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 437
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0, v2, v3}, Ltv/periscope/android/player/d;->a(J)V

    .line 439
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->R:Ldmk;

    if-nez v0, :cond_2

    .line 440
    new-instance v0, Ldmk;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->c:Ltv/periscope/model/o;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bo;->q:Ltv/periscope/model/ac;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/bo;->r:Ltv/periscope/model/u;

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/bo;->Q:Ltv/periscope/android/chat/f;

    invoke-direct {v0, v1, v2, v3, v4}, Ldmk;-><init>(Ltv/periscope/model/o;Ltv/periscope/model/ac;Ltv/periscope/model/u;Ltv/periscope/android/chat/f;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->R:Ldmk;

    .line 442
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->h:Ltv/periscope/android/player/e;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->R:Ldmk;

    invoke-interface {v0, v1}, Ltv/periscope/android/player/e;->a(Ldmk;)V

    .line 443
    return-void
.end method

.method private Z()V
    .locals 6

    .prologue
    .line 539
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->n:Ltv/periscope/android/data/f;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bo;->h:Ltv/periscope/android/player/e;

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/bo;->P:Ltv/periscope/android/chat/i;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v3}, Ltv/periscope/android/player/d;->m()Z

    move-result v5

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Ltv/periscope/android/ui/broadcast/cd;->a(Ltv/periscope/android/data/f;Ltv/periscope/android/player/e;Ltv/periscope/android/chat/g;Ltv/periscope/android/chat/i;Z)V

    .line 540
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/bo;)Ltv/periscope/android/ui/broadcast/cd;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    return-object v0
.end method

.method private a(Ldmy;)V
    .locals 14

    .prologue
    .line 351
    new-instance v0, Ltv/periscope/android/ui/broadcast/bn;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->H:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->p()Ltv/periscope/android/api/ApiManager;

    move-result-object v3

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->o()Lde/greenrobot/event/c;

    move-result-object v4

    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/bo;->d:Ljava/lang/String;

    iget-object v6, p0, Ltv/periscope/android/ui/broadcast/bo;->o:Ltv/periscope/android/data/b;

    iget-boolean v7, p0, Ltv/periscope/android/ui/broadcast/bo;->O:Z

    const-string/jumbo v9, "tv.periscope.android.library/0.26 (1)"

    sget-object v10, Ltv/periscope/android/ui/broadcast/bo;->l:Ltv/periscope/android/ui/broadcast/moderator/a;

    sget-object v11, Ltv/periscope/android/ui/broadcast/bo;->m:Ltv/periscope/android/ui/broadcast/moderator/b;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bo;->e:Ltv/periscope/android/api/PsUser;

    iget-object v12, v2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    sget-object v13, Lretrofit/RestAdapter$LogLevel;->NONE:Lretrofit/RestAdapter$LogLevel;

    move-object v2, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v13}, Ltv/periscope/android/ui/broadcast/bn;-><init>(Landroid/app/Activity;Ltv/periscope/android/ui/broadcast/cg;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Ljava/lang/String;Ltv/periscope/android/data/b;ZLtv/periscope/android/ui/broadcast/bm;Ljava/lang/String;Ltv/periscope/android/ui/broadcast/moderator/a;Ltv/periscope/android/ui/broadcast/moderator/b;Ljava/lang/String;Lretrofit/RestAdapter$LogLevel;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    .line 354
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-interface {v0}, Ltv/periscope/android/player/c;->getChatRoomView()Ltv/periscope/android/ui/broadcast/ChatRoomView;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    .line 355
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->setImageLoader(Ldmy;)V

    .line 356
    new-instance v8, Ltv/periscope/android/ui/chat/e;

    iget-object v9, p0, Ltv/periscope/android/ui/broadcast/bo;->I:Landroid/content/Context;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->v()Ltv/periscope/android/ui/chat/x;

    move-result-object v10

    new-instance v0, Ltv/periscope/android/ui/chat/c;

    .line 357
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->n()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bo;->e:Ltv/periscope/android/api/PsUser;

    iget-object v2, v2, Ltv/periscope/android/api/PsUser;->username:Ljava/lang/String;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/bo;->e:Ltv/periscope/android/api/PsUser;

    iget-object v3, v3, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    const/4 v4, 0x1

    iget-boolean v5, p0, Ltv/periscope/android/ui/broadcast/bo;->N:Z

    new-instance v6, Ltv/periscope/android/ui/chat/b;

    iget-object v7, p0, Ltv/periscope/android/ui/broadcast/bo;->n:Ltv/periscope/android/data/f;

    iget-object v11, p0, Ltv/periscope/android/ui/broadcast/bo;->d:Ljava/lang/String;

    invoke-direct {v6, v7, v11}, Ltv/periscope/android/ui/chat/b;-><init>(Ltv/periscope/android/data/f;Ljava/lang/String;)V

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Ltv/periscope/android/ui/chat/c;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZLtv/periscope/android/ui/chat/a;Ldmy;)V

    invoke-direct {v8, v9, v10, v0}, Ltv/periscope/android/ui/chat/e;-><init>(Landroid/content/Context;Ltv/periscope/android/ui/chat/x;Ltv/periscope/android/view/bf;)V

    .line 359
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0, v8}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->setChatMessageAdapter(Ltv/periscope/android/ui/chat/e;)V

    .line 360
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/bo;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Ltv/periscope/android/ui/broadcast/bo;->A:Z

    return p1
.end method

.method private aa()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->q:Ltv/periscope/model/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->r:Ltv/periscope/model/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ab()V
    .locals 1

    .prologue
    .line 583
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->ac()V

    .line 585
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/cd;->C()V

    .line 588
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->t()V

    .line 590
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->o()V

    .line 593
    :cond_1
    return-void
.end method

.method private ac()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 597
    return-void
.end method

.method private ad()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->k:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->B:Z

    .line 661
    return-void
.end method

.method private ae()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/cd;->p()V

    .line 665
    return-void
.end method

.method private af()Ldml;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->s:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldml;

    .line 735
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ag()V
    .locals 4

    .prologue
    .line 1047
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->u:Z

    if-eqz v0, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->u:Z

    .line 1052
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/cd;->q()V

    .line 1053
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    iget-boolean v0, v0, Ltv/periscope/android/player/PlayMode;->replayable:Z

    if-eqz v0, :cond_0

    .line 1054
    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/bo;->v:J

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bo;->h:Ltv/periscope/android/player/e;

    invoke-interface {v2}, Ltv/periscope/android/player/e;->d()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/bo;->v:J

    goto :goto_0
.end method

.method private ah()V
    .locals 2

    .prologue
    .line 1106
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    :goto_0
    return-void

    .line 1111
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->n()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1112
    const/high16 v0, 0x42b40000    # 90.0f

    .line 1118
    :goto_1
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-interface {v1, v0}, Ltv/periscope/android/player/c;->a(F)V

    goto :goto_0

    .line 1113
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->n()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1114
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_1

    .line 1116
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Ltv/periscope/model/o;)V
    .locals 6

    .prologue
    .line 529
    if-eqz p1, :cond_1

    .line 530
    invoke-virtual {p1}, Ltv/periscope/model/o;->D()J

    move-result-wide v0

    .line 531
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->n()Landroid/content/res/Resources;

    move-result-object v2

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    invoke-static {v2, v0, v1}, Ldnb;->b(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v0

    .line 535
    :goto_0
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-interface {v1, v0}, Ltv/periscope/android/player/c;->b(Ljava/lang/String;)V

    .line 536
    return-void

    .line 533
    :cond_1
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->n()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ldnb;->b(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ltv/periscope/android/player/PlayMode;)V
    .locals 17

    .prologue
    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    if-eqz v1, :cond_0

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/cd;->C()V

    .line 380
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/periscope/android/ui/broadcast/bo;->H:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Ltv/periscope/android/ui/broadcast/bo;->p()Ltv/periscope/android/api/ApiManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ltv/periscope/android/ui/broadcast/bo;->o()Lde/greenrobot/event/c;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ltv/periscope/android/ui/broadcast/bo;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Ltv/periscope/android/ui/broadcast/bo;->o:Ltv/periscope/android/data/b;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Ltv/periscope/android/ui/broadcast/bo;->O:Z

    const-string/jumbo v10, "tv.periscope.android.library/0.26 (1)"

    sget-object v11, Ltv/periscope/android/ui/broadcast/bo;->l:Ltv/periscope/android/ui/broadcast/moderator/a;

    sget-object v12, Ltv/periscope/android/ui/broadcast/bo;->m:Ltv/periscope/android/ui/broadcast/moderator/b;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/periscope/android/ui/broadcast/bo;->e:Ltv/periscope/android/api/PsUser;

    iget-object v14, v2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    sget-object v15, Lretrofit/RestAdapter$LogLevel;->NONE:Lretrofit/RestAdapter$LogLevel;

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    move-object/from16 v16, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object/from16 v9, p0

    invoke-static/range {v1 .. v16}, Ltv/periscope/android/ui/broadcast/cd;->a(Landroid/app/Activity;Ltv/periscope/android/player/PlayMode;Ltv/periscope/android/ui/broadcast/cg;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Ljava/lang/String;Ltv/periscope/android/data/b;ZLtv/periscope/android/ui/broadcast/bm;Ljava/lang/String;Ltv/periscope/android/ui/broadcast/moderator/a;Ltv/periscope/android/ui/broadcast/moderator/b;ZLjava/lang/String;Lretrofit/RestAdapter$LogLevel;Ltv/periscope/android/player/d;)Ltv/periscope/android/ui/broadcast/cd;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    .line 384
    invoke-direct/range {p0 .. p0}, Ltv/periscope/android/ui/broadcast/bo;->V()V

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/periscope/android/ui/broadcast/bo;->n:Ltv/periscope/android/data/f;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v6}, Ltv/periscope/android/ui/broadcast/cd;->a(Ltv/periscope/android/data/f;ZLtv/periscope/android/ui/chat/ai;Ltv/periscope/android/ui/chat/ag;Ltv/periscope/android/ui/chat/b;)V

    .line 387
    return-void
.end method

.method private e(Z)V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->x:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->x:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 513
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->x:Ljava/lang/Boolean;

    .line 515
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    sget-object v1, Ltv/periscope/android/player/PlayMode;->b:Ltv/periscope/android/player/PlayMode;

    if-ne v0, v1, :cond_2

    .line 516
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->A()V

    .line 525
    :cond_1
    :goto_0
    return-void

    .line 519
    :cond_2
    if-eqz p1, :cond_3

    .line 520
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-interface {v0}, Ltv/periscope/android/player/c;->S()V

    goto :goto_0

    .line 522
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-interface {v0}, Ltv/periscope/android/player/c;->T()V

    goto :goto_0
.end method


# virtual methods
.method A()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-interface {v0}, Ltv/periscope/android/player/c;->T()V

    .line 486
    return-void
.end method

.method B()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/cd;->z()Z

    move-result v0

    return v0
.end method

.method public C()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 552
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/cd;->B()V

    .line 553
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/bo;->a(Z)V

    .line 556
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->r:Ltv/periscope/model/u;

    .line 558
    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->q:Ltv/periscope/model/ac;

    .line 561
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    sget-object v1, Ltv/periscope/android/player/PlayMode;->d:Ltv/periscope/android/player/PlayMode;

    if-ne v0, v1, :cond_1

    .line 563
    sget-object v0, Ltv/periscope/android/player/PlayMode;->c:Ltv/periscope/android/player/PlayMode;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    .line 565
    :cond_1
    return-void
.end method

.method public D()V
    .locals 1

    .prologue
    .line 568
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->F()V

    .line 569
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->l()V

    .line 572
    :cond_0
    return-void
.end method

.method public E()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->ab()V

    .line 580
    return-void
.end method

.method public F()V
    .locals 0

    .prologue
    .line 670
    return-void
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->g()Z

    move-result v0

    return v0
.end method

.method public H()V
    .locals 1

    .prologue
    .line 783
    sget-object v0, Ltv/periscope/android/ui/chat/ChatState;->g:Ltv/periscope/android/ui/chat/ChatState;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/bo;->a(Ltv/periscope/android/ui/chat/ChatState;)V

    .line 784
    return-void
.end method

.method public I()V
    .locals 1

    .prologue
    .line 793
    sget-object v0, Ltv/periscope/android/ui/chat/ChatState;->h:Ltv/periscope/android/ui/chat/ChatState;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/bo;->a(Ltv/periscope/android/ui/chat/ChatState;)V

    .line 794
    return-void
.end method

.method J()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 828
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->y:Z

    if-eqz v0, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->aa()Z

    move-result v0

    if-nez v0, :cond_2

    .line 832
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->n()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltv/periscope/android/library/p;->ps__loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/android/player/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 835
    :cond_2
    iput-boolean v4, p0, Ltv/periscope/android/ui/broadcast/bo;->y:Z

    .line 836
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 837
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    iget-wide v2, p0, Ltv/periscope/android/ui/broadcast/bo;->z:J

    invoke-interface {v0, v2, v3}, Ltv/periscope/android/player/d;->a(J)V

    .line 839
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    iget-wide v2, p0, Ltv/periscope/android/ui/broadcast/bo;->z:J

    invoke-virtual {v0, v2, v3}, Ltv/periscope/android/ui/broadcast/cd;->a(J)V

    .line 842
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/bo;->z:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 843
    iput-boolean v4, p0, Ltv/periscope/android/ui/broadcast/bo;->i:Z

    goto :goto_0
.end method

.method public K()V
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f()V

    .line 876
    return-void
.end method

.method public L()V
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->g()V

    .line 881
    return-void
.end method

.method public M()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->h()V

    .line 886
    return-void
.end method

.method public N()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b()V

    .line 891
    return-void
.end method

.method public O()V
    .locals 0

    .prologue
    .line 903
    return-void
.end method

.method public P()V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->l()V

    .line 947
    :goto_0
    return-void

    .line 945
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->e()V

    goto :goto_0
.end method

.method public Q()V
    .locals 0

    .prologue
    .line 951
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->P()V

    .line 952
    return-void
.end method

.method R()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1078
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->m()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v2}, Ltv/periscope/android/player/d;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    iget-boolean v2, v2, Ltv/periscope/android/player/PlayMode;->replayable:Z

    if-eqz v2, :cond_3

    move v2, v0

    .line 1082
    :goto_1
    if-eqz v2, :cond_4

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v2}, Ltv/periscope/android/player/d;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1084
    :goto_2
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v1}, Ltv/periscope/android/player/d;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v1}, Ltv/periscope/android/player/d;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    :cond_2
    if-eqz v0, :cond_5

    .line 1088
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->ah()V

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1081
    goto :goto_1

    :cond_4
    move v0, v1

    .line 1082
    goto :goto_2

    .line 1089
    :cond_5
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->c:Ltv/periscope/model/o;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->c:Ltv/periscope/model/o;

    invoke-virtual {v1}, Ltv/periscope/model/o;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/android/player/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method S()V
    .locals 0

    .prologue
    .line 1096
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->T()V

    .line 1097
    return-void
.end method

.method T()V
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    iget-boolean v0, v0, Ltv/periscope/android/player/PlayMode;->replayable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->k()V

    .line 1103
    :cond_0
    return-void
.end method

.method U()Z
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->q:Ltv/periscope/model/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->q:Ltv/periscope/model/ac;

    invoke-virtual {v0}, Ltv/periscope/model/ac;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->c:Ltv/periscope/model/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->c:Ltv/periscope/model/o;

    .line 1123
    invoke-virtual {v0}, Ltv/periscope/model/o;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ldml;)Ltv/periscope/android/ui/broadcast/bo;
    .locals 1

    .prologue
    .line 220
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->s:Ljava/lang/ref/WeakReference;

    .line 221
    return-object p0
.end method

.method a(Ljava/lang/String;)Ltv/periscope/android/ui/broadcast/bo;
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bo;->d:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method a(Ltv/periscope/android/player/PlayMode;)Ltv/periscope/android/ui/broadcast/bo;
    .locals 0

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/bo;->b(Ltv/periscope/android/player/PlayMode;)V

    .line 211
    return-object p0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    iget-boolean v0, v0, Ltv/periscope/android/player/PlayMode;->replayable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->u:Z

    if-eqz v0, :cond_0

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->u:Z

    .line 682
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->J()V

    .line 685
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 907
    iput p1, p0, Ltv/periscope/android/ui/broadcast/bo;->w:I

    .line 908
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->n()Landroid/content/res/Resources;

    move-result-object v1

    int-to-long v2, p1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ltv/periscope/android/util/r;->a(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->setParticipantCount(Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 801
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->af()Ldml;

    move-result-object v0

    .line 802
    if-eqz v0, :cond_0

    .line 803
    new-instance v1, Ltv/periscope/android/library/PeriscopeException;

    invoke-direct {v1, p2}, Ltv/periscope/android/library/PeriscopeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ldml;->a(Ltv/periscope/android/library/PeriscopeException;)V

    .line 805
    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a(IZ)V

    .line 855
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->u:Z

    .line 709
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/player/d;->b(J)V

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->i:Z

    .line 713
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 1014
    instance-of v0, p1, Ltv/periscope/android/exoplayer/player/UnsupportedDrmException;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->I:Landroid/content/Context;

    const-string/jumbo v1, "Unsupported DRM exception"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1017
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/cd;->a(Ljava/lang/Exception;)V

    .line 1018
    return-void
.end method

.method public a(Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 923
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/periscope/chatman/api/Occupant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->setMutualCount(I)V

    .line 914
    return-void
.end method

.method a(Ltv/periscope/android/event/ApiEvent;)V
    .locals 3

    .prologue
    .line 625
    invoke-virtual {p1}, Ltv/periscope/android/event/ApiEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->o:Ltv/periscope/android/data/b;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;)Ltv/periscope/model/o;

    move-result-object v0

    .line 628
    if-nez v0, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    if-nez v1, :cond_3

    .line 635
    invoke-virtual {v0}, Ltv/periscope/model/o;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ltv/periscope/android/player/PlayMode;->b:Ltv/periscope/android/player/PlayMode;

    :goto_1
    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/bo;->b(Ltv/periscope/android/player/PlayMode;)V

    .line 636
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->r()V

    goto :goto_0

    .line 635
    :cond_2
    sget-object v0, Ltv/periscope/android/player/PlayMode;->c:Ltv/periscope/android/player/PlayMode;

    goto :goto_1

    .line 637
    :cond_3
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    sget-object v2, Ltv/periscope/android/player/PlayMode;->b:Ltv/periscope/android/player/PlayMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v1}, Ltv/periscope/android/player/d;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    invoke-virtual {v0}, Ltv/periscope/model/o;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    const-string/jumbo v0, "PlayerHelper"

    const-string/jumbo v1, "BroadcastPlayer is buffering but API told us it ended."

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->Q()V

    .line 642
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->ad()V

    goto :goto_0
.end method

.method a(Ltv/periscope/android/event/CacheEvent;)V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->o:Ltv/periscope/android/data/b;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;)Ltv/periscope/model/o;

    move-result-object v0

    .line 820
    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/bo;->a(Ltv/periscope/model/o;)V

    .line 822
    :cond_0
    return-void
.end method

.method public a(Ltv/periscope/android/ui/chat/ChatState;)V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->setChatState(Ltv/periscope/android/ui/chat/ChatState;)V

    .line 850
    return-void
.end method

.method public a(Ltv/periscope/model/ac;)V
    .locals 2

    .prologue
    .line 763
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bo;->q:Ltv/periscope/model/ac;

    .line 765
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->o:Ltv/periscope/android/data/b;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;)Ltv/periscope/model/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/bo;->a(Ltv/periscope/model/o;)V

    .line 767
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->k:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 768
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->k:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 769
    return-void
.end method

.method public a(Ltv/periscope/model/chat/Message;)V
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a(Ltv/periscope/model/chat/Message;)V

    .line 865
    return-void
.end method

.method public a(Ltv/periscope/model/chat/Message;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 871
    return-void
.end method

.method public a(Ltv/periscope/model/o;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 490
    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->c:Ltv/periscope/model/o;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    if-eqz v0, :cond_0

    .line 497
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bo;->c:Ltv/periscope/model/o;

    .line 498
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bo;->L:Ljava/lang/String;

    invoke-virtual {p1}, Ltv/periscope/model/o;->y()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 499
    invoke-virtual {p1}, Ltv/periscope/model/o;->F()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ltv/periscope/model/o;->H()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/bo;->e(Z)V

    .line 500
    invoke-virtual {p0, v1}, Ltv/periscope/android/ui/broadcast/bo;->c(Z)V

    .line 502
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 503
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-virtual {p1}, Ltv/periscope/model/o;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/android/player/c;->c(Ljava/lang/String;)V

    .line 506
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    sget-object v1, Ltv/periscope/android/player/PlayMode;->b:Ltv/periscope/android/player/PlayMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    sget-object v1, Ltv/periscope/android/player/PlayMode;->d:Ltv/periscope/android/player/PlayMode;

    if-eq v0, v1, :cond_0

    .line 507
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/bo;->b(Ltv/periscope/model/o;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 499
    goto :goto_1
.end method

.method public a(Ltv/periscope/model/u;)V
    .locals 4

    .prologue
    .line 773
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bo;->r:Ltv/periscope/model/u;

    .line 774
    invoke-virtual {p1}, Ltv/periscope/model/u;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/bo;->d(Z)V

    .line 777
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->e:Ltv/periscope/android/api/PsUser;

    invoke-virtual {v1}, Ltv/periscope/android/api/PsUser;->getProfileUrlMedium()Ljava/lang/String;

    move-result-object v1

    .line 778
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->n()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/bo;->r:Ltv/periscope/model/u;

    invoke-virtual {v3}, Ltv/periscope/model/u;->a()I

    move-result v3

    invoke-static {v2, v3}, Ltv/periscope/android/util/s;->b(Landroid/content/res/Resources;I)I

    move-result v2

    .line 777
    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a(Ljava/lang/String;I)V

    .line 779
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0, p1}, Ltv/periscope/android/player/d;->a(Z)V

    .line 692
    :cond_0
    if-eqz p1, :cond_1

    .line 693
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/cd;->y()V

    .line 697
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->ag()V

    goto :goto_0
.end method

.method public a(Ltv/periscope/model/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
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
    .line 741
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    const/4 v0, 0x0

    .line 753
    :goto_0
    return v0

    .line 745
    :cond_0
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->O:Z

    if-eqz v0, :cond_1

    invoke-static {p3}, Ldod;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    const-string/jumbo v0, "PlayerHelper"

    const-string/jumbo v1, "Using FORCED HLS."

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const/4 p2, 0x0

    move-object v2, p2

    .line 751
    :goto_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Ltv/periscope/android/player/d;->a(Ltv/periscope/model/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 752
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v2}, Ltv/periscope/android/player/d;->m()Z

    move-result v2

    invoke-virtual {v1, v2}, Ltv/periscope/android/ui/broadcast/cd;->a(Z)V

    goto :goto_0

    :cond_1
    move-object v2, p2

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->u:Z

    .line 702
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->k()V

    .line 703
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->ae()V

    .line 704
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 927
    return-void
.end method

.method public b(IZ)V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(IZ)V

    .line 860
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/broadcast/cd;->b(J)V

    .line 1024
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/cd;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->i:Z

    .line 1026
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c()V

    .line 1027
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/broadcast/cd;->c(J)V

    .line 1029
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
            "Ltv/periscope/chatman/api/Occupant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 918
    return-void
.end method

.method public b(Ltv/periscope/android/player/PlayMode;)V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    if-ne v0, p1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    const-string/jumbo v0, "PlayerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Switching to mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    .line 400
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Ltv/periscope/android/player/PlayMode;->b:Ltv/periscope/android/player/PlayMode;

    if-ne p1, v0, :cond_2

    .line 405
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->A()V

    .line 408
    :cond_2
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/bo;->d(Ltv/periscope/android/player/PlayMode;)V

    .line 409
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->X()V

    .line 410
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->Y()V

    .line 411
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->Z()V

    .line 414
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->r()V

    goto :goto_0
.end method

.method public b(Ltv/periscope/model/chat/Message;)V
    .locals 0

    .prologue
    .line 932
    return-void
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 1060
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/cd;->b(Z)V

    .line 1064
    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/bo;->v:J

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v2}, Ltv/periscope/android/player/d;->d()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/bo;->v:J

    .line 1065
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-interface {v0}, Ltv/periscope/android/player/c;->N()V

    .line 1066
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->ad()V

    .line 1068
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    sget-object v1, Ltv/periscope/android/player/PlayMode;->b:Ltv/periscope/android/player/PlayMode;

    if-ne v0, v1, :cond_2

    .line 1070
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->A()V

    goto :goto_0

    .line 1072
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    iget-boolean v0, v0, Ltv/periscope/android/player/PlayMode;->replayable:Z

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/bo;->e(Z)V

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 936
    iget v0, p0, Ltv/periscope/android/ui/broadcast/bo;->w:I

    return v0
.end method

.method c(J)Ltv/periscope/android/ui/broadcast/bo;
    .locals 1

    .prologue
    .line 226
    iput-wide p1, p0, Ltv/periscope/android/ui/broadcast/bo;->z:J

    .line 227
    return-object p0
.end method

.method public c(Ltv/periscope/android/player/PlayMode;)V
    .locals 5

    .prologue
    .line 716
    new-instance v0, Ltv/periscope/android/chat/f;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->r:Ltv/periscope/model/u;

    invoke-virtual {v1}, Ltv/periscope/model/u;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/periscope/android/chat/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->Q:Ltv/periscope/android/chat/f;

    .line 717
    new-instance v0, Ldmk;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->c:Ltv/periscope/model/o;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bo;->q:Ltv/periscope/model/ac;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/bo;->r:Ltv/periscope/model/u;

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/bo;->Q:Ltv/periscope/android/chat/f;

    invoke-direct {v0, v1, v2, v3, v4}, Ldmk;-><init>(Ltv/periscope/model/o;Ltv/periscope/model/ac;Ltv/periscope/model/u;Ltv/periscope/android/chat/f;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->R:Ldmk;

    .line 718
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->h:Ltv/periscope/android/player/e;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->R:Ldmk;

    invoke-interface {v0, v1}, Ltv/periscope/android/player/e;->a(Ldmk;)V

    .line 719
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->af()Ldml;

    move-result-object v0

    .line 720
    if-eqz v0, :cond_0

    .line 721
    invoke-interface {v0, p0}, Ldml;->a(Ldmj;)V

    .line 724
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    sget-object v1, Ltv/periscope/android/player/PlayMode;->d:Ltv/periscope/android/player/PlayMode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/bo;->c(Z)V

    .line 726
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->J()V

    .line 728
    :cond_1
    return-void
.end method

.method c(Z)V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    sget-object v1, Ltv/periscope/android/player/PlayMode;->b:Ltv/periscope/android/player/PlayMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->c:Ltv/periscope/model/o;

    invoke-virtual {v0}, Ltv/periscope/model/o;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->A()V

    .line 474
    :goto_0
    return-void

    .line 469
    :cond_0
    if-eqz p1, :cond_1

    .line 470
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->y()V

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->z()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 967
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->ae()V

    .line 968
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/cd;->d()V

    .line 969
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-interface {v0}, Ltv/periscope/android/player/c;->N()V

    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->t:Z

    .line 971
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->W()V

    .line 972
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->S()V

    .line 973
    return-void
.end method

.method protected d(Z)V
    .locals 0

    .prologue
    .line 797
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 977
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/cd;->e()V

    .line 979
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/bo;->z:J

    .line 980
    iput-boolean v2, p0, Ltv/periscope/android/ui/broadcast/bo;->y:Z

    .line 982
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bo;->ag()V

    .line 983
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->c:Ltv/periscope/model/o;

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/bo;->b(Ltv/periscope/model/o;)V

    .line 984
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->R()V

    .line 987
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->j:Ltv/periscope/android/player/PlayMode;

    sget-object v1, Ltv/periscope/android/player/PlayMode;->b:Ltv/periscope/android/player/PlayMode;

    if-ne v0, v1, :cond_0

    .line 988
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->c:Ltv/periscope/model/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/periscope/model/o;->b(Z)V

    .line 989
    sget-object v0, Ltv/periscope/android/player/PlayMode;->c:Ltv/periscope/android/player/PlayMode;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/bo;->b(Ltv/periscope/android/player/PlayMode;)V

    .line 991
    :cond_0
    invoke-virtual {p0, v2}, Ltv/periscope/android/ui/broadcast/bo;->c(Z)V

    .line 992
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 956
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/cd;->f()V

    .line 957
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->n()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltv/periscope/android/library/p;->ps__loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/android/player/c;->a(Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 963
    return-void
.end method

.method public h()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 996
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->D:Ltv/periscope/android/ui/broadcast/cd;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/cd;->h()V

    .line 997
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->A:Z

    if-eqz v0, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    .line 1001
    invoke-interface {v0}, Ltv/periscope/android/player/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    const-string/jumbo v0, "PlayerHelper"

    const-string/jumbo v1, "Buffering detected."

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->k:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->T:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1004
    iput-boolean v4, p0, Ltv/periscope/android/ui/broadcast/bo;->A:Z

    .line 1005
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->B:Z

    if-nez v0, :cond_0

    .line 1006
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->k:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->U:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1007
    iput-boolean v4, p0, Ltv/periscope/android/ui/broadcast/bo;->B:Z

    goto :goto_0
.end method

.method public i()V
    .locals 0

    .prologue
    .line 1034
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 1039
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 1044
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    return-object v0
.end method

.method m()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->H:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 185
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method o()Lde/greenrobot/event/c;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->J:Lde/greenrobot/event/c;

    return-object v0
.end method

.method public onEventMainThread(Ltv/periscope/android/event/ApiEvent;)V
    .locals 2

    .prologue
    .line 616
    sget-object v0, Ltv/periscope/android/ui/broadcast/bt;->b:[I

    iget-object v1, p1, Ltv/periscope/android/event/ApiEvent;->a:Ltv/periscope/android/event/ApiEvent$Type;

    invoke-virtual {v1}, Ltv/periscope/android/event/ApiEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 622
    :goto_0
    return-void

    .line 618
    :pswitch_0
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/bo;->a(Ltv/periscope/android/event/ApiEvent;)V

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onEventMainThread(Ltv/periscope/android/event/CacheEvent;)V
    .locals 2

    .prologue
    .line 809
    sget-object v0, Ltv/periscope/android/ui/broadcast/bt;->c:[I

    invoke-virtual {p1}, Ltv/periscope/android/event/CacheEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 815
    :goto_0
    return-void

    .line 811
    :pswitch_0
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/bo;->a(Ltv/periscope/android/event/CacheEvent;)V

    goto :goto_0

    .line 809
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method p()Ltv/periscope/android/api/ApiManager;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->K:Ltv/periscope/android/api/ApiManager;

    return-object v0
.end method

.method protected q()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1388

    .line 299
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->F:Z

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->n()I

    move-result v0

    .line 306
    iget-boolean v1, p0, Ltv/periscope/android/ui/broadcast/bo;->E:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->I:Landroid/content/Context;

    invoke-static {v1}, Ltv/periscope/android/util/w;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_3

    .line 307
    :cond_2
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-interface {v1, v0, v2, v3}, Ltv/periscope/android/player/c;->b(IJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->E:Z

    .line 315
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->k:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->k:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bo;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 311
    :cond_4
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-interface {v0}, Ltv/periscope/android/player/c;->M()V

    goto :goto_0
.end method

.method protected final r()V
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->C:Z

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->d:Ljava/lang/String;

    invoke-static {v0}, Ldod;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->C:Z

    .line 328
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->s()V

    goto :goto_0
.end method

.method protected s()V
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->o()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    .line 333
    return-void
.end method

.method protected final t()V
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->C:Z

    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bo;->C:Z

    .line 340
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->u()V

    goto :goto_0
.end method

.method protected u()V
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bo;->o()Lde/greenrobot/event/c;

    move-result-object v0

    .line 345
    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->c(Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method protected v()Ltv/periscope/android/ui/chat/x;
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public w()V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method public x()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method y()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-interface {v0}, Ltv/periscope/android/player/c;->R()V

    .line 478
    return-void
.end method

.method z()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    invoke-interface {v0}, Ltv/periscope/android/player/c;->Q()V

    .line 482
    return-void
.end method
