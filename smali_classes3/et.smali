.class public Let;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final b:Lfg;

.field private final c:Lft;

.field private final d:Lbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lej;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lej",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lfm;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lej;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lej",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ldo;

.field private final h:Ldo;

.field private final i:Ldt;

.field private j:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v1, "Prefetching is not enabled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Let;->a:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method public constructor <init>(Lfg;Ljava/util/Set;Lbm;Lej;Lej;Ldo;Ldo;Ldt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfg;",
            "Ljava/util/Set",
            "<",
            "Lft;",
            ">;",
            "Lbm",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lej",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lfm;",
            ">;",
            "Lej",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;",
            "Ldo;",
            "Ldo;",
            "Ldt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Let;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    iput-object p1, p0, Let;->b:Lfg;

    .line 83
    new-instance v0, Lfs;

    invoke-direct {v0, p2}, Lfs;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Let;->c:Lft;

    .line 84
    iput-object p3, p0, Let;->d:Lbm;

    .line 85
    iput-object p4, p0, Let;->e:Lej;

    .line 86
    iput-object p5, p0, Let;->f:Lej;

    .line 87
    iput-object p6, p0, Let;->g:Ldo;

    .line 88
    iput-object p7, p0, Let;->h:Ldo;

    .line 89
    iput-object p8, p0, Let;->i:Ldt;

    .line 90
    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/producers/bw;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;)Lcom/facebook/datasource/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lcom/facebook/common/references/a",
            "<TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/d",
            "<",
            "Lcom/facebook/common/references/a",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 451
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->k()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v5

    .line 455
    new-instance v0, Lcom/facebook/imagepipeline/producers/ce;

    invoke-direct {p0}, Let;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Let;->c:Lft;

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->h()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/util/d;->a(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v7, 0x1

    :cond_1
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->j()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v8

    move-object v1, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/producers/ce;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/bz;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    .line 465
    iget-object v1, p0, Let;->c:Lft;

    invoke-static {p1, v0, v1}, Lfj;->a(Lcom/facebook/imagepipeline/producers/bw;Lcom/facebook/imagepipeline/producers/ce;Lft;)Lcom/facebook/datasource/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 470
    :goto_0
    return-object v0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    invoke-static {v0}, Lcom/facebook/datasource/e;->a(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

    move-result-object v0

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Let;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/d",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Let;->b:Lfg;

    invoke-virtual {v0, p1}, Lfg;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/bw;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->d:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-direct {p0, v0, p1, v1, p2}, Let;->a(Lcom/facebook/imagepipeline/producers/bw;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;)Lcom/facebook/datasource/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-static {v0}, Lcom/facebook/datasource/e;->a(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Leu;

    invoke-direct {v0, p0}, Leu;-><init>(Let;)V

    .line 353
    iget-object v1, p0, Let;->e:Lej;

    invoke-interface {v1, v0}, Lej;->a(Lcom/android/internal/util/Predicate;)I

    .line 354
    iget-object v1, p0, Let;->f:Lej;

    invoke-interface {v1, v0}, Lej;->a(Lcom/android/internal/util/Predicate;)I

    .line 355
    return-void
.end method

.method public b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/d",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    iget-object v0, p0, Let;->b:Lfg;

    invoke-virtual {v0, p1}, Lfg;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/bw;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-direct {p0, v0, p1, v1, p2}, Let;->a(Lcom/facebook/imagepipeline/producers/bw;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;)Lcom/facebook/datasource/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-static {v0}, Lcom/facebook/datasource/e;->a(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Let;->g:Ldo;

    invoke-virtual {v0}, Ldo;->a()Lbolts/h;

    .line 362
    iget-object v0, p0, Let;->h:Ldo;

    invoke-virtual {v0}, Ldo;->a()Lbolts/h;

    .line 363
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 369
    invoke-virtual {p0}, Let;->a()V

    .line 370
    invoke-virtual {p0}, Let;->b()V

    .line 371
    return-void
.end method
