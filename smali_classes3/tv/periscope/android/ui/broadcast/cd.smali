.class public abstract Ltv/periscope/android/ui/broadcast/cd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/player/a;
.implements Ltv/periscope/android/ui/broadcast/ai;
.implements Ltv/periscope/android/ui/broadcast/bd;
.implements Ltv/periscope/android/ui/broadcast/moderator/n;


# instance fields
.field protected final a:Ltv/periscope/android/ui/broadcast/cg;

.field protected final b:Ljava/lang/String;

.field protected final c:Ltv/periscope/android/data/b;

.field protected final d:Ltv/periscope/android/api/ApiManager;

.field protected final e:Lde/greenrobot/event/c;

.field protected final f:Ltv/periscope/android/ui/broadcast/ag;

.field protected final g:Ltv/periscope/android/ui/broadcast/bb;

.field protected final h:Lretrofit/RestAdapter$LogLevel;

.field i:Ltv/periscope/model/ac;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final j:Ltv/periscope/android/player/PlayMode;

.field private final k:Z

.field private final l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroid/os/Handler;

.field private n:Z

.field private o:Ltv/periscope/android/ui/broadcast/moderator/b;

.field private p:Ltv/periscope/android/ui/broadcast/moderator/a;

.field private q:Ltv/periscope/model/u;

.field private final r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ltv/periscope/android/ui/broadcast/cg;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Ljava/lang/String;Ltv/periscope/android/data/b;Ltv/periscope/android/player/PlayMode;ZLtv/periscope/android/ui/broadcast/bm;Ljava/lang/String;Ltv/periscope/android/ui/broadcast/moderator/a;Ltv/periscope/android/ui/broadcast/moderator/b;ZLjava/lang/String;Lretrofit/RestAdapter$LogLevel;)V
    .locals 8

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->m:Landroid/os/Handler;

    .line 90
    new-instance v1, Ltv/periscope/android/ui/broadcast/ce;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/broadcast/ce;-><init>(Ltv/periscope/android/ui/broadcast/cd;)V

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->r:Ljava/lang/Runnable;

    .line 129
    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/cd;->a:Ltv/periscope/android/ui/broadcast/cg;

    .line 130
    iput-object p3, p0, Ltv/periscope/android/ui/broadcast/cd;->d:Ltv/periscope/android/api/ApiManager;

    .line 131
    iput-object p4, p0, Ltv/periscope/android/ui/broadcast/cd;->e:Lde/greenrobot/event/c;

    .line 132
    iput-object p5, p0, Ltv/periscope/android/ui/broadcast/cd;->b:Ljava/lang/String;

    .line 133
    iput-object p6, p0, Ltv/periscope/android/ui/broadcast/cd;->c:Ltv/periscope/android/data/b;

    .line 134
    iput-object p7, p0, Ltv/periscope/android/ui/broadcast/cd;->j:Ltv/periscope/android/player/PlayMode;

    .line 135
    move/from16 v0, p8

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/cd;->k:Z

    .line 136
    new-instance v1, Ltv/periscope/android/ui/broadcast/ag;

    move-object v2, p3

    move-object/from16 v3, p9

    move-object v4, p7

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ltv/periscope/android/ui/broadcast/ag;-><init>(Ltv/periscope/android/api/ApiManager;Ltv/periscope/android/ui/broadcast/bm;Ltv/periscope/android/player/PlayMode;Landroid/app/Activity;Ltv/periscope/android/ui/broadcast/ai;)V

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    .line 137
    new-instance v1, Ltv/periscope/android/ui/broadcast/bb;

    new-instance v7, Ltv/periscope/chatman/h;

    invoke-direct {v7}, Ltv/periscope/chatman/h;-><init>()V

    move-object v2, p1

    move-object/from16 v3, p10

    move-object v4, p7

    move/from16 v5, p13

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Ltv/periscope/android/ui/broadcast/bb;-><init>(Landroid/app/Activity;Ljava/lang/String;Ltv/periscope/android/player/PlayMode;ZLtv/periscope/android/ui/broadcast/bd;Ltv/periscope/chatman/h;)V

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    .line 138
    move-object/from16 v0, p11

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->p:Ltv/periscope/android/ui/broadcast/moderator/a;

    .line 139
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/cd;->p:Ltv/periscope/android/ui/broadcast/moderator/a;

    invoke-virtual {v1, v2}, Ltv/periscope/android/ui/broadcast/bb;->a(Ltv/periscope/android/ui/broadcast/moderator/a;)V

    .line 140
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->l:Ljava/lang/ref/WeakReference;

    .line 141
    move-object/from16 v0, p12

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->o:Ltv/periscope/android/ui/broadcast/moderator/b;

    .line 142
    move-object/from16 v0, p15

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->h:Lretrofit/RestAdapter$LogLevel;

    .line 143
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/cd;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->l:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ltv/periscope/android/player/PlayMode;Ltv/periscope/android/ui/broadcast/cg;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Ljava/lang/String;Ltv/periscope/android/data/b;ZLtv/periscope/android/ui/broadcast/bm;Ljava/lang/String;Ltv/periscope/android/ui/broadcast/moderator/a;Ltv/periscope/android/ui/broadcast/moderator/b;ZLjava/lang/String;Lretrofit/RestAdapter$LogLevel;Ltv/periscope/android/player/d;)Ltv/periscope/android/ui/broadcast/cd;
    .locals 16

    .prologue
    .line 107
    sget-object v0, Ltv/periscope/android/ui/broadcast/cf;->a:[I

    invoke-virtual/range {p1 .. p1}, Ltv/periscope/android/player/PlayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    new-instance v0, Ltv/periscope/android/ui/broadcast/bz;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Ltv/periscope/android/ui/broadcast/bz;-><init>(Landroid/app/Activity;Ltv/periscope/android/ui/broadcast/cg;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Ljava/lang/String;Ltv/periscope/android/data/b;ZLtv/periscope/android/ui/broadcast/bm;Ljava/lang/String;Ltv/periscope/android/ui/broadcast/moderator/a;Ltv/periscope/android/ui/broadcast/moderator/b;ZLjava/lang/String;Lretrofit/RestAdapter$LogLevel;)V

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    new-instance v0, Ltv/periscope/android/ui/broadcast/ca;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Ltv/periscope/android/ui/broadcast/ca;-><init>(Landroid/app/Activity;Ltv/periscope/android/ui/broadcast/cg;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Ljava/lang/String;Ltv/periscope/android/data/b;ZLtv/periscope/android/ui/broadcast/bm;Ljava/lang/String;Ltv/periscope/android/ui/broadcast/moderator/a;Ltv/periscope/android/ui/broadcast/moderator/b;ZLjava/lang/String;Lretrofit/RestAdapter$LogLevel;)V

    goto :goto_0

    .line 114
    :pswitch_1
    new-instance v0, Ltv/periscope/android/ui/broadcast/by;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Ltv/periscope/android/ui/broadcast/by;-><init>(Landroid/app/Activity;Ltv/periscope/android/ui/broadcast/cg;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Ljava/lang/String;Ltv/periscope/android/data/b;ZLtv/periscope/android/ui/broadcast/bm;Ljava/lang/String;Ltv/periscope/android/ui/broadcast/moderator/a;Ltv/periscope/android/ui/broadcast/moderator/b;ZLjava/lang/String;Lretrofit/RestAdapter$LogLevel;Ltv/periscope/android/player/d;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ltv/periscope/model/ac;)Z
    .locals 6

    .prologue
    .line 495
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->a:Ltv/periscope/android/ui/broadcast/cg;

    invoke-virtual {p1}, Ltv/periscope/model/ac;->f()Ltv/periscope/model/o;

    move-result-object v1

    .line 496
    invoke-static {p1}, Ltv/periscope/android/util/e;->a(Ltv/periscope/model/ac;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ltv/periscope/model/ac;->e()Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-virtual {p1}, Ltv/periscope/model/ac;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ltv/periscope/model/ac;->g()Ljava/util/List;

    move-result-object v5

    .line 495
    invoke-interface/range {v0 .. v5}, Ltv/periscope/android/ui/broadcast/cg;->a(Ltv/periscope/model/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 499
    if-nez v0, :cond_0

    invoke-virtual {p1}, Ltv/periscope/model/ac;->f()Ltv/periscope/model/o;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/model/o;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->a:Ltv/periscope/android/ui/broadcast/cg;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/cg;->a(ILjava/lang/String;)V

    .line 501
    const/4 v0, 0x0

    .line 503
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ltv/periscope/model/u;Ltv/periscope/model/u;)Z
    .locals 1

    .prologue
    .line 491
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method static synthetic b(Ltv/periscope/android/ui/broadcast/cd;)Ltv/periscope/android/ui/broadcast/moderator/a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->p:Ltv/periscope/android/ui/broadcast/moderator/a;

    return-object v0
.end method

.method static synthetic c(Ltv/periscope/android/ui/broadcast/cd;)Ltv/periscope/android/ui/broadcast/moderator/b;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->o:Ltv/periscope/android/ui/broadcast/moderator/b;

    return-object v0
.end method


# virtual methods
.method A()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bb;->g()Z

    move-result v0

    return v0
.end method

.method B()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bb;->f()V

    .line 352
    return-void
.end method

.method public C()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ag;->a()V

    .line 394
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bb;->e()V

    .line 396
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/cd;->n:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->e:Lde/greenrobot/event/c;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->c(Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->e:Lde/greenrobot/event/c;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->p:Ltv/periscope/android/ui/broadcast/moderator/a;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->c(Ljava/lang/Object;)V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/cd;->n:Z

    .line 401
    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/Resources;Landroid/os/Handler;Ltv/periscope/android/chat/a;Ltv/periscope/android/ui/broadcast/cc;Ltv/periscope/android/api/PsUser;ZLtv/periscope/android/ui/chat/al;Ltv/periscope/android/player/d;Ltv/periscope/android/player/e;Ltv/periscope/android/ui/chat/am;Ltv/periscope/android/data/f;Ldmn;)Ltv/periscope/android/ui/chat/y;
    .locals 16

    .prologue
    .line 190
    new-instance v10, Ltv/periscope/android/ui/chat/ao;

    const/16 v1, 0x19

    const/16 v2, 0x1f4

    const/4 v3, 0x4

    invoke-direct {v10, v1, v2, v3}, Ltv/periscope/android/ui/chat/ao;-><init>(III)V

    .line 193
    new-instance v1, Ltv/periscope/android/ui/chat/z;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/periscope/android/ui/broadcast/cd;->d:Ltv/periscope/android/api/ApiManager;

    new-instance v14, Ldne;

    invoke-direct {v14}, Ldne;-><init>()V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v11, p4

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v15, p12

    invoke-direct/range {v1 .. v15}, Ltv/periscope/android/ui/chat/z;-><init>(Landroid/content/res/Resources;Landroid/os/Handler;Ltv/periscope/android/api/ApiManager;Ltv/periscope/android/chat/a;Ltv/periscope/android/player/d;Ltv/periscope/android/player/e;Ltv/periscope/android/api/PsUser;ZLtv/periscope/android/ui/chat/ao;Ltv/periscope/android/ui/broadcast/cc;Ltv/periscope/android/ui/chat/am;Ltv/periscope/android/data/f;Ldnd;Ldmn;)V

    .line 196
    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ltv/periscope/android/ui/chat/z;->a(Ltv/periscope/android/ui/chat/al;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    invoke-virtual {v2, v1}, Ltv/periscope/android/ui/broadcast/bb;->a(Ltv/periscope/android/ui/chat/y;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-virtual {v2, v1}, Ltv/periscope/android/ui/broadcast/ag;->a(Ltv/periscope/android/ui/chat/y;)V

    .line 199
    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->a:Ltv/periscope/android/ui/broadcast/cg;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/cg;->H()V

    .line 513
    return-void
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/broadcast/bb;->b(J)V

    .line 331
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/ag;->a(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method a(Ltv/periscope/android/data/f;Ltv/periscope/android/player/e;Ltv/periscope/android/chat/g;Ltv/periscope/android/chat/i;Z)V
    .locals 6

    .prologue
    .line 314
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ltv/periscope/android/ui/broadcast/bb;->a(Ltv/periscope/android/data/f;Ltv/periscope/android/player/e;Ltv/periscope/android/chat/g;Ltv/periscope/android/chat/i;Z)V

    .line 315
    return-void
.end method

.method public a(Ltv/periscope/android/data/f;ZLtv/periscope/android/ui/chat/ai;Ltv/periscope/android/ui/chat/ag;Ltv/periscope/android/ui/chat/b;)V
    .locals 9

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/cd;->n:Z

    .line 172
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->e:Lde/greenrobot/event/c;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->e:Lde/greenrobot/event/c;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->p:Ltv/periscope/android/ui/broadcast/moderator/a;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/cd;->c:Ltv/periscope/android/data/b;

    const/4 v6, 0x0

    iget-object v8, p0, Ltv/periscope/android/ui/broadcast/cd;->b:Ljava/lang/String;

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Ltv/periscope/android/ui/broadcast/bb;->a(Ltv/periscope/android/data/f;Ltv/periscope/android/data/b;ZLtv/periscope/android/ui/chat/ai;Ltv/periscope/android/ui/chat/ag;Ltv/periscope/android/ui/chat/ah;Ltv/periscope/android/ui/chat/b;Ljava/lang/String;)V

    .line 178
    if-eqz p5, :cond_0

    .line 179
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->p:Ltv/periscope/android/ui/broadcast/moderator/a;

    invoke-virtual {p5, v0}, Ltv/periscope/android/ui/chat/b;->a(Ltv/periscope/android/ui/broadcast/moderator/a;)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/cd;->o()V

    .line 183
    return-void
.end method

.method a(Ltv/periscope/model/StreamType;Lretrofit/RestAdapter$LogLevel;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    invoke-virtual {v0, p1, p2, p3}, Ltv/periscope/android/ui/broadcast/bb;->a(Ltv/periscope/model/StreamType;Lretrofit/RestAdapter$LogLevel;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->a:Ltv/periscope/android/ui/broadcast/cg;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/cd;->r()Ltv/periscope/android/player/PlayMode;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/broadcast/cg;->c(Ltv/periscope/android/player/PlayMode;)V

    .line 340
    return-void
.end method

.method abstract a(Ltv/periscope/model/ac;Ltv/periscope/model/u;)V
.end method

.method a(Ltv/periscope/model/chat/MessageType$VoteType;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->p:Ltv/periscope/android/ui/broadcast/moderator/a;

    invoke-interface {v0, p1}, Ltv/periscope/android/ui/broadcast/moderator/a;->a(Ltv/periscope/model/chat/MessageType$VoteType;)V

    .line 278
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->o:Ltv/periscope/android/ui/broadcast/moderator/b;

    invoke-interface {v0, p1}, Ltv/periscope/android/ui/broadcast/moderator/b;->a(Ltv/periscope/model/chat/MessageType$VoteType;)V

    .line 279
    return-void
.end method

.method protected a(Ltv/periscope/model/o;)V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->a:Ltv/periscope/android/ui/broadcast/cg;

    invoke-interface {v0, p1}, Ltv/periscope/android/ui/broadcast/cg;->a(Ltv/periscope/model/o;)V

    .line 508
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/bb;->a(Z)V

    .line 335
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->a:Ltv/periscope/android/ui/broadcast/cg;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/cg;->I()V

    .line 518
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ag;->f()V

    .line 524
    return-void
.end method

.method c(J)V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/broadcast/bb;->a(J)V

    .line 348
    return-void
.end method

.method protected d(J)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 383
    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 384
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 386
    :cond_0
    return-wide v0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ag;->f()V

    .line 530
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ag;->f()V

    .line 536
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ag;->g()V

    .line 541
    return-void
.end method

.method abstract o()V
.end method

.method public onEventMainThread(Ltv/periscope/android/event/ApiEvent;)V
    .locals 4

    .prologue
    const/16 v3, 0x194

    .line 404
    sget-object v0, Ltv/periscope/android/ui/broadcast/cf;->b:[I

    iget-object v1, p1, Ltv/periscope/android/event/ApiEvent;->a:Ltv/periscope/android/event/ApiEvent$Type;

    invoke-virtual {v1}, Ltv/periscope/android/event/ApiEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 406
    :pswitch_0
    invoke-virtual {p1}, Ltv/periscope/android/event/ApiEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->d:Ljava/lang/Object;

    check-cast v0, Ltv/periscope/model/ac;

    .line 408
    iget-boolean v1, p0, Ltv/periscope/android/ui/broadcast/cd;->k:Z

    if-eqz v1, :cond_1

    .line 409
    sget-object v1, Ltv/periscope/model/StreamType;->c:Ltv/periscope/model/StreamType;

    invoke-virtual {v0, v1}, Ltv/periscope/model/ac;->a(Ltv/periscope/model/StreamType;)V

    .line 412
    :cond_1
    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->d:Ljava/lang/Object;

    check-cast v0, Ltv/periscope/model/ac;

    .line 413
    invoke-virtual {v0}, Ltv/periscope/model/ac;->f()Ltv/periscope/model/o;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Ltv/periscope/model/o;->c()Ljava/lang/String;

    move-result-object v2

    .line 418
    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/cd;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/cd;->a(Ltv/periscope/model/ac;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/cd;->a:Ltv/periscope/android/ui/broadcast/cg;

    invoke-interface {v2, v0}, Ltv/periscope/android/ui/broadcast/cg;->a(Ltv/periscope/model/ac;)V

    .line 431
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/cd;->a:Ltv/periscope/android/ui/broadcast/cg;

    invoke-interface {v3}, Ltv/periscope/android/ui/broadcast/cg;->G()Z

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Ltv/periscope/android/ui/broadcast/ag;->a(Ltv/periscope/model/ac;Ltv/periscope/model/o;Z)V

    .line 433
    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->i:Ltv/periscope/model/ac;

    goto :goto_0

    .line 435
    :cond_2
    const-string/jumbo v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to load broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Ltv/periscope/android/event/ApiEvent;->e:Lretrofit/RetrofitError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1}, Ltv/periscope/android/event/ApiEvent;->c()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 437
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->a:Ltv/periscope/android/ui/broadcast/cg;

    invoke-virtual {p1}, Ltv/periscope/android/event/ApiEvent;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ltv/periscope/android/ui/broadcast/cg;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->a:Ltv/periscope/android/ui/broadcast/cg;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ltv/periscope/android/event/ApiEvent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ltv/periscope/android/ui/broadcast/cg;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 445
    :pswitch_1
    invoke-virtual {p1}, Ltv/periscope/android/event/ApiEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    iget-object v1, p1, Ltv/periscope/android/event/ApiEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ag;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 447
    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->d:Ljava/lang/Object;

    check-cast v0, Ltv/periscope/model/u;

    .line 448
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->q:Ltv/periscope/model/u;

    invoke-direct {p0, v1, v0}, Ltv/periscope/android/ui/broadcast/cd;->a(Ltv/periscope/model/u;Ltv/periscope/model/u;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 449
    const-string/jumbo v1, "VC"

    const-string/jumbo v2, "ChatAccess changed."

    invoke-static {v1, v2}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->q:Ltv/periscope/model/u;

    .line 452
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/ag;->d()V

    .line 453
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->a:Ltv/periscope/android/ui/broadcast/cg;

    invoke-interface {v1, v0}, Ltv/periscope/android/ui/broadcast/cg;->a(Ltv/periscope/model/u;)V

    .line 454
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/cd;->i:Ltv/periscope/model/ac;

    invoke-virtual {v2}, Ltv/periscope/model/ac;->j()Ltv/periscope/model/StreamType;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ltv/periscope/android/ui/broadcast/bb;->a(Ltv/periscope/model/StreamType;Ltv/periscope/model/u;)V

    .line 455
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->i:Ltv/periscope/model/ac;

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/ui/broadcast/cd;->a(Ltv/periscope/model/ac;Ltv/periscope/model/u;)V

    goto/16 :goto_0

    .line 457
    :cond_4
    const-string/jumbo v0, "VC"

    const-string/jumbo v1, "ChatAccess succeeded but was unchanged."

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ag;->e()V

    goto/16 :goto_0

    .line 464
    :cond_5
    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->e:Lretrofit/RetrofitError;

    if-eqz v0, :cond_6

    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->e:Lretrofit/RetrofitError;

    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 466
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    iget-object v1, p1, Ltv/periscope/android/event/ApiEvent;->e:Lretrofit/RetrofitError;

    invoke-virtual {v1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ag;->a(I)V

    goto/16 :goto_0

    .line 469
    :cond_6
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->a:Ltv/periscope/android/ui/broadcast/cg;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/cg;->H()V

    goto/16 :goto_0

    .line 476
    :pswitch_2
    invoke-virtual {p1}, Ltv/periscope/android/event/ApiEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 477
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    iget-object v2, p1, Ltv/periscope/android/event/ApiEvent;->b:Ljava/lang/String;

    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->d:Ljava/lang/Object;

    check-cast v0, Ltv/periscope/android/api/StartWatchingResponse;

    iget-object v0, v0, Ltv/periscope/android/api/StartWatchingResponse;->session:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ltv/periscope/android/ui/broadcast/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 482
    :pswitch_3
    invoke-virtual {p1}, Ltv/periscope/android/event/ApiEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    iget-object v1, p1, Ltv/periscope/android/event/ApiEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ag;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method p()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ag;->b()V

    .line 289
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bb;->a()V

    .line 290
    return-void
.end method

.method q()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ag;->c()V

    .line 294
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bb;->c()V

    .line 295
    return-void
.end method

.method protected r()Ltv/periscope/android/player/PlayMode;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->j:Ltv/periscope/android/player/PlayMode;

    return-object v0
.end method

.method public s()V
    .locals 1

    .prologue
    .line 216
    sget-object v0, Ltv/periscope/model/chat/MessageType$VoteType;->c:Ltv/periscope/model/chat/MessageType$VoteType;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/cd;->a(Ltv/periscope/model/chat/MessageType$VoteType;)V

    .line 217
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 221
    sget-object v0, Ltv/periscope/model/chat/MessageType$VoteType;->d:Ltv/periscope/model/chat/MessageType$VoteType;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/cd;->a(Ltv/periscope/model/chat/MessageType$VoteType;)V

    .line 222
    return-void
.end method

.method public u()V
    .locals 1

    .prologue
    .line 226
    sget-object v0, Ltv/periscope/model/chat/MessageType$VoteType;->b:Ltv/periscope/model/chat/MessageType$VoteType;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/cd;->a(Ltv/periscope/model/chat/MessageType$VoteType;)V

    .line 227
    return-void
.end method

.method public v()V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->o:Ltv/periscope/android/ui/broadcast/moderator/b;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/moderator/b;->c()V

    .line 232
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->p:Ltv/periscope/android/ui/broadcast/moderator/a;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/moderator/a;->b()V

    .line 233
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->m:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->o:Ltv/periscope/android/ui/broadcast/moderator/b;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/moderator/b;->d()V

    .line 239
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->p:Ltv/periscope/android/ui/broadcast/moderator/a;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/moderator/a;->a()V

    .line 240
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->m:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/cd;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->o:Ltv/periscope/android/ui/broadcast/moderator/b;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/moderator/b;->a()V

    .line 246
    return-void
.end method

.method y()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bb;->b()V

    .line 299
    return-void
.end method

.method z()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/cd;->g:Ltv/periscope/android/ui/broadcast/bb;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bb;->d()Z

    move-result v0

    return v0
.end method
