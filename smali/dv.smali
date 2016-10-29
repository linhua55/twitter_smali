.class public Ldv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/facebook/common/memory/a;
.implements Lej;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/common/memory/a;",
        "Lej",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field static final a:J


# instance fields
.field final b:Ldu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldu",
            "<TK;",
            "Ldz",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final c:Ldu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldu",
            "<TK;",
            "Ldz",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected d:Lek;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final e:Leq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leq",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final f:Ldy;

.field private final g:Lbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm",
            "<",
            "Lek;",
            ">;"
        }
    .end annotation
.end field

.field private h:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ldv;->a:J

    return-void
.end method

.method public constructor <init>(Leq;Ldy;Lbm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leq",
            "<TV;>;",
            "Ldy;",
            "Lbm",
            "<",
            "Lek;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Ldv;->e:Leq;

    .line 111
    new-instance v0, Ldu;

    invoke-direct {p0, p1}, Ldv;->a(Leq;)Leq;

    move-result-object v1

    invoke-direct {v0, v1}, Ldu;-><init>(Leq;)V

    iput-object v0, p0, Ldv;->b:Ldu;

    .line 112
    new-instance v0, Ldu;

    invoke-direct {p0, p1}, Ldv;->a(Leq;)Leq;

    move-result-object v1

    invoke-direct {v0, v1}, Ldu;-><init>(Leq;)V

    iput-object v0, p0, Ldv;->c:Ldu;

    .line 113
    iput-object p2, p0, Ldv;->f:Ldy;

    .line 114
    iput-object p3, p0, Ldv;->g:Lbm;

    .line 115
    iget-object v0, p0, Ldv;->g:Lbm;

    invoke-interface {v0}, Lbm;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lek;

    iput-object v0, p0, Ldv;->d:Lek;

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ldv;->h:J

    .line 117
    return-void
.end method

.method private declared-synchronized a(Ldz;)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldz",
            "<TK;TV;>;)",
            "Lcom/facebook/common/references/a",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ldv;->e(Ldz;)V

    .line 197
    iget-object v0, p1, Ldz;->b:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ldx;

    invoke-direct {v1, p0, p1}, Ldx;-><init>(Ldv;Ldz;)V

    invoke-static {v0, v1}, Lcom/facebook/common/references/a;->a(Ljava/lang/Object;Lcom/facebook/common/references/d;)Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Leq;)Leq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leq",
            "<TV;>;)",
            "Leq",
            "<",
            "Ldz",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ldw;

    invoke-direct {v0, p0, p1}, Ldw;-><init>(Ldv;Leq;)V

    return-object v0
.end method

.method private declared-synchronized a(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ldz",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 327
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 328
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 330
    iget-object v0, p0, Ldv;->b:Ldu;

    invoke-virtual {v0}, Ldu;->a()I

    move-result v0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Ldv;->b:Ldu;

    invoke-virtual {v0}, Ldu;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gt v0, v2, :cond_1

    .line 331
    const/4 v0, 0x0

    .line 339
    :cond_0
    monitor-exit p0

    return-object v0

    .line 333
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    :goto_0
    iget-object v3, p0, Ldv;->b:Ldu;

    invoke-virtual {v3}, Ldu;->a()I

    move-result v3

    if-gt v3, v1, :cond_2

    iget-object v3, p0, Ldv;->b:Ldu;

    invoke-virtual {v3}, Ldu;->b()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 335
    :cond_2
    iget-object v3, p0, Ldv;->b:Ldu;

    invoke-virtual {v3}, Ldu;->c()Ljava/lang/Object;

    move-result-object v3

    .line 336
    iget-object v4, p0, Ldv;->b:Ldu;

    invoke-virtual {v4, v3}, Ldu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v4, p0, Ldv;->c:Ldu;

    invoke-virtual {v4, v3}, Ldu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Ldv;Ldz;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ldv;->b(Ldz;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldz",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldz;

    .line 351
    invoke-direct {p0, v0}, Ldv;->g(Ldz;)Lcom/facebook/common/references/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    goto :goto_0

    .line 354
    :cond_0
    return-void
.end method

.method private b(Ldz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldz",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    invoke-direct {p0, p1}, Ldv;->f(Ldz;)V

    .line 213
    invoke-direct {p0, p1}, Ldv;->c(Ldz;)V

    .line 214
    invoke-direct {p0, p1}, Ldv;->g(Ldz;)Lcom/facebook/common/references/a;

    move-result-object v0

    .line 215
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 217
    invoke-direct {p0}, Ldv;->c()V

    .line 218
    invoke-direct {p0}, Ldv;->d()V

    .line 219
    return-void

    .line 215
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized b(Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldz",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 358
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 359
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldz;

    .line 360
    invoke-direct {p0, v0}, Ldv;->d(Ldz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 363
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldv;->e:Leq;

    invoke-interface {v0, p1}, Leq;->a(Ljava/lang/Object;)I

    move-result v0

    .line 169
    iget-object v1, p0, Ldv;->d:Lek;

    iget v1, v1, Lek;->e:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Ldv;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Ldv;->d:Lek;

    iget v2, v2, Lek;->b:I

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Ldv;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ldv;->d:Lek;

    iget v1, v1, Lek;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 4

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ldv;->h:J

    sget-wide v2, Ldv;->a:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 295
    :goto_0
    monitor-exit p0

    return-void

    .line 293
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ldv;->h:J

    .line 294
    iget-object v0, p0, Ldv;->g:Lbm;

    invoke-interface {v0}, Lbm;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lek;

    iput-object v0, p0, Ldv;->d:Lek;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ldz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldz",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Ldz;->d:Z

    if-nez v0, :cond_0

    iget v0, p1, Ldz;->c:I

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Ldv;->b:Ldu;

    iget-object v1, p1, Ldz;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ldu;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 305
    monitor-enter p0

    .line 306
    :try_start_0
    iget-object v0, p0, Ldv;->d:Lek;

    iget v0, v0, Lek;->d:I

    iget-object v1, p0, Ldv;->d:Lek;

    iget v1, v1, Lek;->b:I

    invoke-virtual {p0}, Ldv;->a()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 309
    iget-object v1, p0, Ldv;->d:Lek;

    iget v1, v1, Lek;->c:I

    iget-object v2, p0, Ldv;->d:Lek;

    iget v2, v2, Lek;->a:I

    invoke-virtual {p0}, Ldv;->b()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 312
    invoke-direct {p0, v0, v1}, Ldv;->a(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 313
    invoke-direct {p0, v0}, Ldv;->b(Ljava/util/ArrayList;)V

    .line 314
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-direct {p0, v0}, Ldv;->a(Ljava/util/ArrayList;)V

    .line 316
    return-void

    .line 314
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized d(Ldz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldz",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 367
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-boolean v1, p1, Ldz;->d:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lbk;->b(Z)V

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p1, Ldz;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    monitor-exit p0

    return-void

    .line 368
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e(Ldz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldz",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-boolean v0, p1, Ldz;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lbk;->b(Z)V

    .line 376
    iget v0, p1, Ldz;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Ldz;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    .line 375
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f(Ldz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldz",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget v0, p1, Ldz;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lbk;->b(Z)V

    .line 383
    iget v0, p1, Ldz;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Ldz;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    monitor-exit p0

    return-void

    .line 382
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g(Ldz;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldz",
            "<TK;TV;>;)",
            "Lcom/facebook/common/references/a",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-boolean v0, p1, Ldz;->d:Z

    if-eqz v0, :cond_0

    iget v0, p1, Ldz;->c:I

    if-nez v0, :cond_0

    iget-object v0, p1, Ldz;->b:Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 2

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldv;->c:Ldu;

    invoke-virtual {v0}, Ldu;->a()I

    move-result v0

    iget-object v1, p0, Ldv;->b:Ldu;

    invoke-virtual {v1}, Ldu;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/android/internal/util/Predicate;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<TK;>;)I"
        }
    .end annotation

    .prologue
    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Ldv;->b:Ldu;

    invoke-virtual {v0, p1}, Ldu;->a(Lcom/android/internal/util/Predicate;)Ljava/util/ArrayList;

    .line 238
    iget-object v0, p0, Ldv;->c:Ldu;

    invoke-virtual {v0, p1}, Ldu;->a(Lcom/android/internal/util/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    .line 239
    invoke-direct {p0, v0}, Ldv;->b(Ljava/util/ArrayList;)V

    .line 240
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-direct {p0, v0}, Ldv;->a(Ljava/util/ArrayList;)V

    .line 242
    invoke-direct {p0}, Ldv;->c()V

    .line 243
    invoke-direct {p0}, Ldv;->d()V

    .line 244
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 240
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/a",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Ldv;->b:Ldu;

    invoke-virtual {v0, p1}, Ldu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Ldv;->c:Ldu;

    invoke-virtual {v0, p1}, Ldu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldz;

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, v0}, Ldv;->a(Ldz;)Lcom/facebook/common/references/a;

    move-result-object v0

    .line 188
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-direct {p0}, Ldv;->c()V

    .line 190
    invoke-direct {p0}, Ldv;->d()V

    .line 191
    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a",
            "<TV;>;)",
            "Lcom/facebook/common/references/a",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {p2}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-direct {p0}, Ldv;->c()V

    .line 145
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Ldv;->b:Ldu;

    invoke-virtual {v0, p1}, Ldu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Ldv;->c:Ldu;

    invoke-virtual {v0, p1}, Ldu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldz;

    .line 149
    if-eqz v0, :cond_1

    .line 150
    invoke-direct {p0, v0}, Ldv;->d(Ldz;)V

    .line 151
    invoke-direct {p0, v0}, Ldv;->g(Ldz;)Lcom/facebook/common/references/a;

    move-result-object v0

    move-object v2, v0

    .line 154
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ldv;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p1, p2}, Ldz;->a(Ljava/lang/Object;Lcom/facebook/common/references/a;)Ldz;

    move-result-object v0

    .line 156
    iget-object v1, p0, Ldv;->c:Ldu;

    invoke-virtual {v1, p1, v0}, Ldu;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-direct {p0, v0}, Ldv;->a(Ldz;)Lcom/facebook/common/references/a;

    move-result-object v0

    .line 159
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-static {v2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 162
    invoke-direct {p0}, Ldv;->d()V

    .line 163
    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method public a(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 6

    .prologue
    .line 274
    iget-object v0, p0, Ldv;->f:Ldy;

    invoke-interface {v0, p1}, Ldy;->a(Lcom/facebook/common/memory/MemoryTrimType;)D

    move-result-wide v0

    .line 275
    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v2, p0, Ldv;->c:Ldu;

    invoke-virtual {v2}, Ldu;->b()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 277
    const/4 v1, 0x0

    invoke-virtual {p0}, Ldv;->b()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 278
    const v1, 0x7fffffff

    invoke-direct {p0, v1, v0}, Ldv;->a(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 279
    invoke-direct {p0, v0}, Ldv;->b(Ljava/util/ArrayList;)V

    .line 280
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-direct {p0, v0}, Ldv;->a(Ljava/util/ArrayList;)V

    .line 282
    invoke-direct {p0}, Ldv;->c()V

    .line 283
    invoke-direct {p0}, Ldv;->d()V

    .line 284
    return-void

    .line 280
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized b()I
    .locals 2

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldv;->c:Ldu;

    invoke-virtual {v0}, Ldu;->b()I

    move-result v0

    iget-object v1, p0, Ldv;->b:Ldu;

    invoke-virtual {v1}, Ldu;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
