.class Lcom/twitter/library/network/livepipeline/LivePipeline;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:J

.field private static final b:J

.field private static c:Lcom/twitter/library/network/livepipeline/LivePipeline;


# instance fields
.field private d:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Lcom/twitter/model/livepipeline/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/twitter/library/network/livepipeline/StreamManager;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/livepipeline/e;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Long;

.field private k:Ljava/lang/Long;

.field private l:Ljava/lang/Long;

.field private final m:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lrx/ap;

.field private final p:Lcom/twitter/platform/u;

.field private final q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/twitter/library/network/livepipeline/w;

.field private s:Lcom/twitter/library/network/livepipeline/x;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/twitter/library/network/livepipeline/LivePipeline;->a:J

    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/twitter/library/network/livepipeline/LivePipeline;->b:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, v0, v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;-><init>(Landroid/content/Context;Lcom/twitter/library/network/livepipeline/StreamManager;Ljava/lang/Long;)V

    .line 124
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/twitter/library/network/livepipeline/StreamManager;Ljava/lang/Long;)V
    .locals 6

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x2

    const v1, 0x3f4ccccd    # 0.8f

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 131
    :cond_0
    invoke-static {}, Lcom/twitter/util/h;->d()V

    .line 134
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Landroid/content/Context;Lcom/twitter/library/network/livepipeline/StreamManager;)V

    .line 135
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->f:Ljava/util/Set;

    .line 136
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->h:Landroid/content/Context;

    .line 138
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->m:Lrx/subjects/e;

    .line 139
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->n:Lrx/subjects/e;

    .line 141
    new-instance v2, Lcom/twitter/library/network/livepipeline/a;

    invoke-direct {v2, p0}, Lcom/twitter/library/network/livepipeline/a;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    .line 154
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->m:Lrx/subjects/e;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(J)Ldjj;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/subjects/e;->i(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/network/livepipeline/l;

    invoke-direct {v1, p0, v2}, Lcom/twitter/library/network/livepipeline/l;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;Lcom/twitter/library/network/livepipeline/af;)V

    new-instance v3, Lcom/twitter/library/network/livepipeline/n;

    invoke-direct {v3, p0}, Lcom/twitter/library/network/livepipeline/n;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    .line 161
    invoke-virtual {v0, v1, v3}, Lrx/o;->a(Ldjf;Ldjf;)Lrx/ap;

    .line 184
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->n:Lrx/subjects/e;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(J)Ldjj;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/subjects/e;->i(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/network/livepipeline/o;

    invoke-direct {v1, p0, v2}, Lcom/twitter/library/network/livepipeline/o;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;Lcom/twitter/library/network/livepipeline/af;)V

    new-instance v2, Lcom/twitter/library/network/livepipeline/p;

    invoke-direct {v2, p0}, Lcom/twitter/library/network/livepipeline/p;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    .line 186
    invoke-virtual {v0, v1, v2}, Lrx/o;->a(Ldjf;Ldjf;)Lrx/ap;

    .line 209
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/platform/PlatformContext;->a()Lcom/twitter/platform/u;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->p:Lcom/twitter/platform/u;

    .line 211
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/network/livepipeline/q;

    invoke-direct {v1, p0}, Lcom/twitter/library/network/livepipeline/q;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 218
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->q:Ljava/util/Set;

    .line 219
    return-void

    .line 154
    :cond_2
    const-wide/16 v0, 0x64

    goto :goto_0

    .line 184
    :cond_3
    const-wide/16 v0, 0x3e8

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lcom/twitter/library/network/livepipeline/LivePipeline;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline;->c:Lcom/twitter/library/network/livepipeline/LivePipeline;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-direct {v0, p0}, Lcom/twitter/library/network/livepipeline/LivePipeline;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline;->c:Lcom/twitter/library/network/livepipeline/LivePipeline;

    .line 227
    :cond_0
    sget-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline;->c:Lcom/twitter/library/network/livepipeline/LivePipeline;

    return-object v0
.end method

.method protected static a(J)Ldjj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ldjj",
            "<",
            "Lrx/o",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lrx/o",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Lcom/twitter/library/network/livepipeline/r;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/network/livepipeline/r;-><init>(J)V

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->j:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic a(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/twitter/library/network/livepipeline/LivePipeline;Lrx/ap;)Lrx/ap;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->o:Lrx/ap;

    return-object p1
.end method

.method private static a(Lcom/twitter/library/network/livepipeline/CallbackContext;)Lrx/t;
    .locals 2

    .prologue
    .line 617
    sget-object v0, Lcom/twitter/library/network/livepipeline/m;->a:[I

    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/CallbackContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 632
    invoke-static {}, Ldls;->c()Lrx/t;

    move-result-object v0

    .line 636
    :goto_0
    return-object v0

    .line 619
    :pswitch_0
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v0

    goto :goto_0

    .line 623
    :pswitch_1
    invoke-static {}, Ldls;->a()Lrx/t;

    move-result-object v0

    goto :goto_0

    .line 627
    :pswitch_2
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v0

    goto :goto_0

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {v0, p1}, Lcom/twitter/library/network/livepipeline/x;->a(I)V

    .line 720
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/twitter/library/network/livepipeline/StreamManager;)V
    .locals 2

    .prologue
    .line 331
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->d:Lrx/subjects/e;

    .line 332
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->d:Lrx/subjects/e;

    new-instance v1, Lcom/twitter/library/network/livepipeline/u;

    invoke-direct {v1, p0}, Lcom/twitter/library/network/livepipeline/u;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    invoke-virtual {v0, v1}, Lrx/subjects/e;->d(Ldjj;)Lrx/o;

    move-result-object v0

    const-class v1, Lcom/twitter/model/livepipeline/a;

    .line 337
    invoke-virtual {v0, v1}, Lrx/o;->a(Ljava/lang/Class;)Lrx/o;

    move-result-object v0

    invoke-virtual {v0}, Lrx/o;->l()Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/network/livepipeline/s;

    invoke-direct {v1, p0}, Lcom/twitter/library/network/livepipeline/s;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    .line 381
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->d:Lrx/subjects/e;

    new-instance v1, Lcom/twitter/library/network/livepipeline/c;

    invoke-direct {v1, p0}, Lcom/twitter/library/network/livepipeline/c;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    invoke-virtual {v0, v1}, Lrx/subjects/e;->d(Ldjj;)Lrx/o;

    move-result-object v0

    const-class v1, Lcom/twitter/model/livepipeline/h;

    .line 386
    invoke-virtual {v0, v1}, Lrx/o;->a(Ljava/lang/Class;)Lrx/o;

    move-result-object v0

    invoke-virtual {v0}, Lrx/o;->l()Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/network/livepipeline/b;

    invoke-direct {v1, p0}, Lcom/twitter/library/network/livepipeline/b;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    .line 393
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->d:Lrx/subjects/e;

    new-instance v1, Lcom/twitter/library/network/livepipeline/e;

    invoke-direct {v1, p0}, Lcom/twitter/library/network/livepipeline/e;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    invoke-virtual {v0, v1}, Lrx/subjects/e;->d(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/network/livepipeline/d;

    invoke-direct {v1, p0}, Lcom/twitter/library/network/livepipeline/d;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    .line 399
    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    .line 406
    if-eqz p2, :cond_0

    .line 407
    :goto_0
    iput-object p2, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->e:Lcom/twitter/library/network/livepipeline/StreamManager;

    .line 408
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->d:Lrx/subjects/e;

    .line 407
    invoke-static {v0, p1}, Lcom/twitter/library/network/livepipeline/StreamManager;->a(Lrx/r;Landroid/content/Context;)Lcom/twitter/library/network/livepipeline/StreamManager;

    move-result-object p2

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/library/network/livepipeline/LivePipeline;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/network/livepipeline/LivePipeline;J)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/network/livepipeline/LivePipeline;->b(J)V

    return-void
.end method

.method private a(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a()V

    .line 476
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->e:Lcom/twitter/library/network/livepipeline/StreamManager;

    new-instance v1, Lcom/twitter/library/network/livepipeline/i;

    invoke-direct {v1, p0}, Lcom/twitter/library/network/livepipeline/i;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    .line 493
    invoke-direct {p0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->f()J

    move-result-wide v2

    .line 476
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/twitter/library/network/livepipeline/StreamManager;->a(Ljava/util/Set;Lcom/twitter/internal/android/service/c;J)V

    .line 495
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 496
    invoke-direct {p0, v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_0
    return-void
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 54
    sget-wide v0, Lcom/twitter/library/network/livepipeline/LivePipeline;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->k:Ljava/lang/Long;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Lrx/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/livepipeline/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 416
    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->g:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 418
    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/o;

    .line 422
    :goto_0
    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->d:Lrx/subjects/e;

    new-instance v1, Lcom/twitter/library/network/livepipeline/h;

    invoke-direct {v1, p0, p1}, Lcom/twitter/library/network/livepipeline/h;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/subjects/e;->d(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/network/livepipeline/g;

    invoke-direct {v1, p0, p1}, Lcom/twitter/library/network/livepipeline/g;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, v1}, Lrx/o;->c(Ldje;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/network/livepipeline/f;

    invoke-direct {v1, p0, p1}, Lcom/twitter/library/network/livepipeline/f;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0, v1}, Lrx/o;->b(Ldje;)Lrx/o;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lrx/o;->k()Ldkv;

    move-result-object v0

    invoke-virtual {v0}, Ldkv;->q()Lrx/o;

    move-result-object v0

    .line 447
    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_0
    monitor-exit v2

    .line 451
    return-object v0

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/library/network/livepipeline/LivePipeline;)Lrx/subjects/e;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->d:Lrx/subjects/e;

    return-object v0
.end method

.method private b(J)V
    .locals 7

    .prologue
    .line 545
    const-string/jumbo v0, "LivePipeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Scheduling resubscribe after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->k:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->p:Lcom/twitter/platform/u;

    .line 546
    invoke-interface {v3}, Lcom/twitter/platform/u;->a()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->i:Ljava/lang/String;

    invoke-static {v0}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 548
    invoke-virtual {v0, p1, p2, v1}, Lrx/o;->b(JLjava/util/concurrent/TimeUnit;)Lrx/o;

    move-result-object v0

    .line 549
    invoke-static {}, Ldls;->c()Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/network/livepipeline/j;

    invoke-direct {v1, p0}, Lcom/twitter/library/network/livepipeline/j;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    new-instance v2, Lcom/twitter/library/network/livepipeline/k;

    invoke-direct {v2, p0}, Lcom/twitter/library/network/livepipeline/k;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    .line 550
    invoke-virtual {v0, v1, v2}, Lrx/o;->a(Ldjf;Ldjf;)Lrx/ap;

    .line 567
    return-void
.end method

.method static synthetic b(Lcom/twitter/library/network/livepipeline/LivePipeline;J)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/network/livepipeline/LivePipeline;->c(J)V

    return-void
.end method

.method static synthetic b(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->f(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/twitter/internal/android/service/AsyncOperation;)Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/AsyncOperation",
            "<",
            "Landroid/os/Bundle;",
            "Lcom/twitter/library/service/aa;",
            ">;)",
            "Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;"
        }
    .end annotation

    .prologue
    .line 727
    monitor-enter p0

    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    if-eqz v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/x;->i()Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    move-result-object v0

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {p0, p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/network/livepipeline/x;->a(Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;)V

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/x;->i()Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    move-result-object v0

    .line 734
    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {v1}, Lcom/twitter/library/network/livepipeline/x;->j()V

    .line 735
    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    if-eqz v1, :cond_1

    .line 736
    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    .line 737
    invoke-virtual {v2}, Lcom/twitter/library/network/livepipeline/x;->k()J

    move-result-wide v2

    iget-object v4, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {v4}, Lcom/twitter/library/network/livepipeline/x;->h()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 736
    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/network/livepipeline/w;->c(J)V

    .line 739
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    .line 744
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->i:Ljava/lang/String;

    .line 746
    monitor-exit p0

    return-object v0

    .line 741
    :cond_2
    invoke-virtual {p0, p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    move-result-object v0

    goto :goto_0

    .line 747
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->l:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic c(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->f:Ljava/util/Set;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    move-result-object v0

    .line 533
    iget-boolean v1, v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->shouldBeConnected:Z

    if-nez v1, :cond_1

    .line 534
    const-string/jumbo v1, "LivePipeline"

    const-string/jumbo v2, "Terminate stream because it is not required anymore."

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    sget-object v1, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->d:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    invoke-virtual {p0, v1, v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->k:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->k:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->b(J)V

    goto :goto_0
.end method

.method private c(J)V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/network/livepipeline/w;->b(J)V

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/network/livepipeline/x;->b(J)V

    .line 714
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 458
    monitor-enter p0

    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->e:Lcom/twitter/library/network/livepipeline/StreamManager;

    invoke-virtual {v1}, Lcom/twitter/library/network/livepipeline/StreamManager;->a()Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->a:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    if-ne v1, v2, :cond_0

    .line 460
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 461
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-direct {p0, v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Ljava/util/Set;)V

    .line 463
    const/4 v0, 0x0

    monitor-exit p0

    .line 468
    :goto_0
    return v0

    .line 465
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    const-string/jumbo v1, "LivePipeline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Don\'t need to connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->e:Lcom/twitter/library/network/livepipeline/StreamManager;

    invoke-virtual {v3}, Lcom/twitter/library/network/livepipeline/StreamManager;->a()Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/twitter/library/network/livepipeline/LivePipeline;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->h:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 585
    invoke-direct {p0, v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :cond_0
    invoke-direct {p0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->e()V

    .line 588
    return-void
.end method

.method static synthetic d(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->g(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->m:Lrx/subjects/e;

    invoke-virtual {v0, p1}, Lrx/subjects/e;->b_(Ljava/lang/Object;)V

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/twitter/library/network/livepipeline/LivePipeline;)J
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 594
    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->g:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 597
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 599
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 600
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->n:Lrx/subjects/e;

    invoke-virtual {v0, p1}, Lrx/subjects/e;->b_(Ljava/lang/Object;)V

    .line 581
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private f()J
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->j:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->j:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/twitter/library/network/livepipeline/LivePipeline;->a:J

    goto :goto_0
.end method

.method static synthetic f(Lcom/twitter/library/network/livepipeline/LivePipeline;)Lrx/ap;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->o:Lrx/ap;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->e(Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 657
    monitor-enter p0

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/x;->g()V

    .line 660
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {v0, p1}, Lcom/twitter/library/network/livepipeline/x;->c(Ljava/lang/String;)V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/w;->h()V

    .line 666
    :cond_1
    monitor-exit p0

    .line 667
    return-void

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic g(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->l:Ljava/lang/Long;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->p:Lcom/twitter/platform/u;

    invoke-interface {v0}, Lcom/twitter/platform/u;->b()J

    move-result-wide v0

    .line 675
    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    if-eqz v2, :cond_0

    .line 676
    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    invoke-virtual {v2, v0, v1}, Lcom/twitter/library/network/livepipeline/w;->a(J)V

    .line 679
    :cond_0
    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    if-eqz v2, :cond_1

    .line 680
    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {v2, v0, v1}, Lcom/twitter/library/network/livepipeline/x;->a(J)V

    .line 682
    :cond_1
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/w;->d()V

    .line 690
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    invoke-virtual {v0, p1}, Lcom/twitter/library/network/livepipeline/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    invoke-virtual {v0, p1}, Lcom/twitter/library/network/livepipeline/w;->b(Ljava/lang/String;)V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/x;->d()V

    .line 697
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {v0, p1}, Lcom/twitter/library/network/livepipeline/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {v0, p1}, Lcom/twitter/library/network/livepipeline/x;->b(Ljava/lang/String;)V

    .line 701
    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->q:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic i(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->k:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic j(Lcom/twitter/library/network/livepipeline/LivePipeline;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->g()V

    return-void
.end method

.method static synthetic k(Lcom/twitter/library/network/livepipeline/LivePipeline;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->d()V

    return-void
.end method

.method static synthetic l(Lcom/twitter/library/network/livepipeline/LivePipeline;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->c()V

    return-void
.end method

.method static synthetic m(Lcom/twitter/library/network/livepipeline/LivePipeline;)Lcom/twitter/platform/u;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->p:Lcom/twitter/platform/u;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/twitter/internal/android/service/AsyncOperation;)Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/AsyncOperation",
            "<",
            "Landroid/os/Bundle;",
            "Lcom/twitter/library/service/aa;",
            ">;)",
            "Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string/jumbo v0, "LivePipeline"

    const-string/jumbo v1, "Should not be connected because there are no active subscriptions"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->b:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    .line 280
    :goto_0
    return-object v0

    .line 268
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/twitter/internal/android/service/AsyncOperation;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/AsyncOperation;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    :cond_1
    const-string/jumbo v0, "LivePipeline"

    const-string/jumbo v1, "Should not be connected because the previous stream could not be connected to or failed in an unexpected way"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->c:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    goto :goto_0

    .line 277
    :cond_2
    sget-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->a:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/network/livepipeline/ac;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/library/network/livepipeline/ac;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p1, Lcom/twitter/library/network/livepipeline/ac;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->b(Ljava/lang/String;)Lrx/o;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/library/network/livepipeline/ac;->c:Lcom/twitter/library/network/livepipeline/CallbackContext;

    .line 237
    invoke-static {v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/CallbackContext;)Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 644
    monitor-enter p0

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Lcom/twitter/library/network/livepipeline/w;

    invoke-direct {v0, p0}, Lcom/twitter/library/network/livepipeline/w;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    .line 649
    :cond_0
    new-instance v0, Lcom/twitter/library/network/livepipeline/x;

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    invoke-virtual {v1}, Lcom/twitter/library/network/livepipeline/w;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/network/livepipeline/x;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    .line 650
    monitor-exit p0

    .line 651
    return-void

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {v0, p1}, Lcom/twitter/library/network/livepipeline/x;->a(Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;)V

    .line 249
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->s:Lcom/twitter/library/network/livepipeline/x;

    invoke-virtual {v0, p2}, Lcom/twitter/library/network/livepipeline/x;->a(Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;)V

    .line 252
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->i:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->e:Lcom/twitter/library/network/livepipeline/StreamManager;

    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/StreamManager;->b()V

    .line 254
    return-void
.end method

.method protected a(Lcom/twitter/library/network/livepipeline/ai;)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->h:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/twitter/library/network/livepipeline/ai;->a(Landroid/content/Context;)Lcom/twitter/library/network/livepipeline/ai;

    move-result-object v0

    .line 305
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/network/livepipeline/ai;->a(Lcom/twitter/library/client/Session;)Lcom/twitter/library/network/livepipeline/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/ai;->q()Ljava/lang/Object;

    move-result-object v0

    .line 304
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/network/livepipeline/ah;

    .line 306
    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 308
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->e:Lcom/twitter/library/network/livepipeline/StreamManager;

    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/StreamManager;->a()Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->c:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    if-eq v0, v1, :cond_0

    .line 289
    const-string/jumbo v0, "LivePipeline"

    const-string/jumbo v1, "Abandoning resubscribe because live pipeline is disconnected"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    const-string/jumbo v0, "LivePipeline"

    const-string/jumbo v1, "Abandoning resubscribe because session expired"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected b(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/AsyncOperation",
            "<",
            "Landroid/os/Bundle;",
            "Lcom/twitter/library/service/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 507
    invoke-direct {p0, p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->c(Lcom/twitter/internal/android/service/AsyncOperation;)Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    move-result-object v0

    .line 510
    iget-boolean v0, v0, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->shouldBeConnected:Z

    if-nez v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/w;->j()V

    .line 513
    iput-object v1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->r:Lcom/twitter/library/network/livepipeline/w;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->d:Lrx/subjects/e;

    invoke-virtual {v0}, Lrx/subjects/e;->bt_()V

    .line 516
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 517
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 518
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->h:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Landroid/content/Context;Lcom/twitter/library/network/livepipeline/StreamManager;)V

    .line 525
    :goto_0
    return-void

    .line 520
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->f:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 521
    const-string/jumbo v1, "LivePipeline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Reconnecting at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/twitter/library/network/livepipeline/LivePipeline;->p:Lcom/twitter/platform/u;

    invoke-interface {v4}, Lcom/twitter/platform/u;->a()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with the following topics: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-direct {p0, v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Ljava/util/Set;)V

    goto :goto_0
.end method
