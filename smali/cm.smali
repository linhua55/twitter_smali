.class public abstract Lcm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/facebook/drawee/components/c;
.implements Lcw;
.implements Lcx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/components/c;",
        "Lcw;",
        "Lcx;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/drawee/components/DraweeEventTracker;

.field private final c:Lcom/facebook/drawee/components/a;

.field private final d:Ljava/util/concurrent/Executor;

.field private e:Lcom/facebook/drawee/components/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcv;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Lct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lct",
            "<TINFO;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcz;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Object;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lcom/facebook/datasource/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/d",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private q:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private r:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcm;

    sput-object v0, Lcm;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/components/a;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker;

    invoke-direct {v0}, Lcom/facebook/drawee/components/DraweeEventTracker;-><init>()V

    iput-object v0, p0, Lcm;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 101
    iput-object p1, p0, Lcm;->c:Lcom/facebook/drawee/components/a;

    .line 102
    iput-object p2, p0, Lcm;->d:Ljava/util/concurrent/Executor;

    .line 103
    invoke-direct {p0, p3, p4}, Lcm;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method static synthetic a(Lcm;Ljava/lang/String;Lcom/facebook/datasource/d;FZ)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcm;->a(Ljava/lang/String;Lcom/facebook/datasource/d;FZ)V

    return-void
.end method

.method static synthetic a(Lcm;Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Object;FZZ)V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p6}, Lcm;->a(Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Object;FZZ)V

    return-void
.end method

.method static synthetic a(Lcm;Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Throwable;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcm;->a(Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/datasource/d;FZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/d",
            "<TT;>;FZ)V"
        }
    .end annotation

    .prologue
    .line 535
    invoke-direct {p0, p1, p2}, Lcm;->a(Ljava/lang/String;Lcom/facebook/datasource/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    const-string/jumbo v0, "ignore_old_datasource @ onProgress"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 537
    invoke-interface {p2}, Lcom/facebook/datasource/d;->h()Z

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    if-nez p4, :cond_0

    .line 541
    iget-object v0, p0, Lcm;->h:Lcz;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lcz;->a(FZ)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Object;FZZ)V
    .locals 6
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/d",
            "<TT;>;TT;FZZ)V"
        }
    .end annotation

    .prologue
    .line 447
    invoke-direct {p0, p1, p2}, Lcm;->a(Ljava/lang/String;Lcom/facebook/datasource/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 448
    const-string/jumbo v0, "ignore_old_datasource @ onNewResult"

    invoke-direct {p0, v0, p3}, Lcm;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p0, p3}, Lcm;->a(Ljava/lang/Object;)V

    .line 450
    invoke-interface {p2}, Lcom/facebook/datasource/d;->h()Z

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v1, p0, Lcm;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p5, :cond_3

    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->k:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 458
    :try_start_0
    invoke-virtual {p0, p3}, Lcm;->d(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 465
    iget-object v2, p0, Lcm;->q:Ljava/lang/Object;

    .line 466
    iget-object v3, p0, Lcm;->r:Landroid/graphics/drawable/Drawable;

    .line 467
    iput-object p3, p0, Lcm;->q:Ljava/lang/Object;

    .line 468
    iput-object v1, p0, Lcm;->r:Landroid/graphics/drawable/Drawable;

    .line 471
    if-eqz p5, :cond_4

    .line 472
    :try_start_1
    const-string/jumbo v0, "set_final_result @ onNewResult"

    invoke-direct {p0, v0, p3}, Lcm;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcm;->p:Lcom/facebook/datasource/d;

    .line 474
    iget-object v0, p0, Lcm;->h:Lcz;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v4, p6}, Lcz;->a(Landroid/graphics/drawable/Drawable;FZ)V

    .line 475
    invoke-virtual {p0}, Lcm;->e()Lct;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcm;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lcm;->l()Landroid/graphics/drawable/Animatable;

    move-result-object v5

    invoke-interface {v0, p1, v4, v5}, Lct;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    :goto_2
    if-eqz v3, :cond_2

    if-eq v3, v1, :cond_2

    .line 485
    invoke-virtual {p0, v3}, Lcm;->a(Landroid/graphics/drawable/Drawable;)V

    .line 487
    :cond_2
    if-eqz v2, :cond_0

    if-eq v2, p3, :cond_0

    .line 488
    const-string/jumbo v0, "release_previous_result @ onNewResult"

    invoke-direct {p0, v0, v2}, Lcm;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    invoke-virtual {p0, v2}, Lcm;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 453
    :cond_3
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->l:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_1

    .line 459
    :catch_0
    move-exception v0

    .line 460
    const-string/jumbo v1, "drawable_failed @ onNewResult"

    invoke-direct {p0, v1, p3}, Lcm;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    invoke-virtual {p0, p3}, Lcm;->a(Ljava/lang/Object;)V

    .line 462
    invoke-direct {p0, p1, p2, v0, p5}, Lcm;->a(Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 478
    :cond_4
    :try_start_2
    const-string/jumbo v0, "set_intermediate_result @ onNewResult"

    invoke-direct {p0, v0, p3}, Lcm;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcm;->h:Lcz;

    invoke-interface {v0, v1, p4, p6}, Lcz;->a(Landroid/graphics/drawable/Drawable;FZ)V

    .line 480
    invoke-virtual {p0}, Lcm;->e()Lct;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcm;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Lct;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 484
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_5

    if-eq v3, v1, :cond_5

    .line 485
    invoke-virtual {p0, v3}, Lcm;->a(Landroid/graphics/drawable/Drawable;)V

    .line 487
    :cond_5
    if-eqz v2, :cond_6

    if-eq v2, p3, :cond_6

    .line 488
    const-string/jumbo v1, "release_previous_result @ onNewResult"

    invoke-direct {p0, v1, v2}, Lcm;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    invoke-virtual {p0, v2}, Lcm;->a(Ljava/lang/Object;)V

    :cond_6
    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Throwable;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/d",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 500
    invoke-direct {p0, p1, p2}, Lcm;->a(Ljava/lang/String;Lcom/facebook/datasource/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const-string/jumbo v0, "ignore_old_datasource @ onFailure"

    invoke-direct {p0, v0, p3}, Lcm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    invoke-interface {p2}, Lcom/facebook/datasource/d;->h()Z

    .line 527
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v1, p0, Lcm;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p4, :cond_1

    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->m:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 508
    if-eqz p4, :cond_4

    .line 509
    const-string/jumbo v0, "final_failed @ onFailure"

    invoke-direct {p0, v0, p3}, Lcm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcm;->p:Lcom/facebook/datasource/d;

    .line 511
    iput-boolean v3, p0, Lcm;->n:Z

    .line 513
    iget-boolean v0, p0, Lcm;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcm;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcm;->h:Lcz;

    iget-object v1, p0, Lcm;->r:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2, v3}, Lcz;->a(Landroid/graphics/drawable/Drawable;FZ)V

    .line 520
    :goto_2
    invoke-virtual {p0}, Lcm;->e()Lct;

    move-result-object v0

    iget-object v1, p0, Lcm;->j:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lct;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 505
    :cond_1
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->n:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_1

    .line 515
    :cond_2
    invoke-direct {p0}, Lcm;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    iget-object v0, p0, Lcm;->h:Lcz;

    invoke-interface {v0, p3}, Lcz;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 518
    :cond_3
    iget-object v0, p0, Lcm;->h:Lcz;

    invoke-interface {v0, p3}, Lcz;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 523
    :cond_4
    const-string/jumbo v0, "intermediate_failed @ onFailure"

    invoke-direct {p0, v0, p3}, Lcm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    invoke-virtual {p0}, Lcm;->e()Lct;

    move-result-object v0

    iget-object v1, p0, Lcm;->j:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 565
    const/4 v0, 0x2

    invoke-static {v0}, Lbo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    sget-object v0, Lcm;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x %s: %s: failure: %s"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcm;->j:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lbo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 574
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/datasource/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/d",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcm;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm;->p:Lcom/facebook/datasource/d;

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcm;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcm;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->f:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 120
    iget-object v0, p0, Lcm;->c:Lcom/facebook/drawee/components/a;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcm;->c:Lcom/facebook/drawee/components/a;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/a;->b(Lcom/facebook/drawee/components/c;)V

    .line 124
    :cond_0
    iput-boolean v3, p0, Lcm;->l:Z

    .line 125
    invoke-direct {p0}, Lcm;->m()V

    .line 126
    iput-boolean v3, p0, Lcm;->o:Z

    .line 128
    iget-object v0, p0, Lcm;->e:Lcom/facebook/drawee/components/d;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcm;->e:Lcom/facebook/drawee/components/d;

    invoke-virtual {v0}, Lcom/facebook/drawee/components/d;->a()V

    .line 131
    :cond_1
    iget-object v0, p0, Lcm;->f:Lcv;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcm;->f:Lcv;

    invoke-virtual {v0}, Lcv;->a()V

    .line 133
    iget-object v0, p0, Lcm;->f:Lcv;

    invoke-virtual {v0, p0}, Lcv;->a(Lcw;)V

    .line 135
    :cond_2
    iget-object v0, p0, Lcm;->g:Lct;

    instance-of v0, v0, Lco;

    if-eqz v0, :cond_5

    .line 136
    iget-object v0, p0, Lcm;->g:Lct;

    check-cast v0, Lco;

    invoke-virtual {v0}, Lco;->a()V

    .line 141
    :goto_0
    iget-object v0, p0, Lcm;->h:Lcz;

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcm;->h:Lcz;

    invoke-interface {v0}, Lcz;->b()V

    .line 143
    iget-object v0, p0, Lcm;->h:Lcz;

    invoke-interface {v0, v2}, Lcz;->a(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iput-object v2, p0, Lcm;->h:Lcz;

    .line 146
    :cond_3
    iput-object v2, p0, Lcm;->i:Landroid/graphics/drawable/Drawable;

    .line 148
    const/4 v0, 0x2

    invoke-static {v0}, Lbo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    sget-object v0, Lcm;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x %s -> %s: initialize"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcm;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lbo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    :cond_4
    iput-object p1, p0, Lcm;->j:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcm;->k:Ljava/lang/Object;

    .line 153
    return-void

    .line 138
    :cond_5
    iput-object v2, p0, Lcm;->g:Lct;

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 552
    invoke-static {v5}, Lbo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    sget-object v0, Lcm;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x %s: %s: image: %s %x"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcm;->j:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const/4 v3, 0x3

    invoke-virtual {p0, p2}, Lcm;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p2}, Lcm;->b(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lbo;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    :cond_0
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 171
    iget-boolean v0, p0, Lcm;->m:Z

    .line 172
    iput-boolean v1, p0, Lcm;->m:Z

    .line 173
    iput-boolean v1, p0, Lcm;->n:Z

    .line 174
    iget-object v1, p0, Lcm;->p:Lcom/facebook/datasource/d;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcm;->p:Lcom/facebook/datasource/d;

    invoke-interface {v1}, Lcom/facebook/datasource/d;->h()Z

    .line 176
    iput-object v3, p0, Lcm;->p:Lcom/facebook/datasource/d;

    .line 178
    :cond_0
    iget-object v1, p0, Lcm;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcm;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcm;->a(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_1
    iput-object v3, p0, Lcm;->r:Landroid/graphics/drawable/Drawable;

    .line 182
    iget-object v1, p0, Lcm;->q:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 183
    const-string/jumbo v1, "release"

    iget-object v2, p0, Lcm;->q:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcm;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    iget-object v1, p0, Lcm;->q:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcm;->a(Ljava/lang/Object;)V

    .line 185
    iput-object v3, p0, Lcm;->q:Ljava/lang/Object;

    .line 187
    :cond_2
    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p0}, Lcm;->e()Lct;

    move-result-object v0

    iget-object v1, p0, Lcm;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Lct;->a(Ljava/lang/String;)V

    .line 190
    :cond_3
    return-void
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcm;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm;->e:Lcom/facebook/drawee/components/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm;->e:Lcom/facebook/drawee/components/d;

    invoke-virtual {v0}, Lcom/facebook/drawee/components/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Lcom/facebook/datasource/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/d",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected a(Lcom/facebook/drawee/components/d;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/components/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 209
    iput-object p1, p0, Lcm;->e:Lcom/facebook/drawee/components/d;

    .line 210
    return-void
.end method

.method public a(Lct;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lct",
            "<-TINFO;>;)V"
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcm;->g:Lct;

    instance-of v0, v0, Lco;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcm;->g:Lct;

    check-cast v0, Lco;

    invoke-virtual {v0, p1}, Lco;->a(Lct;)V

    .line 246
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcm;->g:Lct;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcm;->g:Lct;

    invoke-static {v0, p1}, Lco;->a(Lct;Lct;)Lco;

    move-result-object v0

    iput-object v0, p0, Lcm;->g:Lct;

    goto :goto_0

    .line 245
    :cond_1
    iput-object p1, p0, Lcm;->g:Lct;

    goto :goto_0
.end method

.method protected a(Lcv;)V
    .locals 1
    .param p1    # Lcv;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 219
    iput-object p1, p0, Lcm;->f:Lcv;

    .line 220
    iget-object v0, p0, Lcm;->f:Lcv;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcm;->f:Lcv;

    invoke-virtual {v0, p0}, Lcv;->a(Lcw;)V

    .line 223
    :cond_0
    return-void
.end method

.method public a(Lcy;)V
    .locals 5
    .param p1    # Lcy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 283
    const/4 v0, 0x2

    invoke-static {v0}, Lbo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcm;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x %s: setHierarchy: %s"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcm;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lbo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    :cond_0
    iget-object v1, p0, Lcm;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->a:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 294
    iget-boolean v0, p0, Lcm;->m:Z

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcm;->c:Lcom/facebook/drawee/components/a;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/a;->b(Lcom/facebook/drawee/components/c;)V

    .line 296
    invoke-virtual {p0}, Lcm;->b()V

    .line 299
    :cond_1
    iget-object v0, p0, Lcm;->h:Lcz;

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcm;->h:Lcz;

    invoke-interface {v0, v4}, Lcz;->a(Landroid/graphics/drawable/Drawable;)V

    .line 301
    iput-object v4, p0, Lcm;->h:Lcz;

    .line 304
    :cond_2
    if-eqz p1, :cond_3

    .line 305
    instance-of v0, p1, Lcz;

    invoke-static {v0}, Lbk;->a(Z)V

    .line 306
    check-cast p1, Lcz;

    iput-object p1, p0, Lcm;->h:Lcz;

    .line 307
    iget-object v0, p0, Lcm;->h:Lcz;

    iget-object v1, p0, Lcm;->i:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcz;->a(Landroid/graphics/drawable/Drawable;)V

    .line 309
    :cond_3
    return-void

    .line 291
    :cond_4
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->b:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcm;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 227
    iput-boolean p1, p0, Lcm;->o:Z

    .line 228
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 355
    const/4 v1, 0x2

    invoke-static {v1}, Lbo;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    sget-object v1, Lcm;->a:Ljava/lang/Class;

    const-string/jumbo v2, "controller %x %s: onTouchEvent %s"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcm;->j:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, p1}, Lbo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    :cond_0
    iget-object v1, p0, Lcm;->f:Lcv;

    if-nez v1, :cond_2

    .line 365
    :cond_1
    :goto_0
    return v0

    .line 361
    :cond_2
    iget-object v1, p0, Lcm;->f:Lcv;

    invoke-virtual {v1}, Lcv;->c()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcm;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    :cond_3
    iget-object v0, p0, Lcm;->f:Lcv;

    invoke-virtual {v0, p1}, Lcv;->a(Landroid/view/MotionEvent;)Z

    .line 363
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 592
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcm;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->i:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 158
    iget-object v0, p0, Lcm;->e:Lcom/facebook/drawee/components/d;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcm;->e:Lcom/facebook/drawee/components/d;

    invoke-virtual {v0}, Lcom/facebook/drawee/components/d;->b()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcm;->f:Lcv;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcm;->f:Lcv;

    invoke-virtual {v0}, Lcv;->b()V

    .line 164
    :cond_1
    iget-object v0, p0, Lcm;->h:Lcz;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcm;->h:Lcz;

    invoke-interface {v0}, Lcz;->b()V

    .line 167
    :cond_2
    invoke-direct {p0}, Lcm;->m()V

    .line 168
    return-void
.end method

.method protected c()Lcom/facebook/drawee/components/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcm;->e:Lcom/facebook/drawee/components/d;

    return-object v0
.end method

.method protected abstract c(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TINFO;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected abstract d(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation
.end method

.method protected d()Lcv;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcm;->f:Lcv;

    return-object v0
.end method

.method protected e()Lct;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lct",
            "<TINFO;>;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcm;->g:Lct;

    if-nez v0, :cond_0

    .line 263
    invoke-static {}, Lcs;->a()Lct;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcm;->g:Lct;

    goto :goto_0
.end method

.method protected e(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 588
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "<null>"

    goto :goto_0
.end method

.method public f()Lcy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcm;->h:Lcz;

    return-object v0
.end method

.method public g()V
    .locals 5

    .prologue
    .line 326
    const/4 v0, 0x2

    invoke-static {v0}, Lbo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    sget-object v1, Lcm;->a:Ljava/lang/Class;

    const-string/jumbo v2, "controller %x %s: onAttach: %s"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcm;->j:Ljava/lang/String;

    iget-boolean v0, p0, Lcm;->m:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "request already submitted"

    :goto_0
    invoke-static {v1, v2, v3, v4, v0}, Lbo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcm;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->g:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 335
    iget-object v0, p0, Lcm;->h:Lcz;

    invoke-static {v0}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcm;->c:Lcom/facebook/drawee/components/a;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/a;->b(Lcom/facebook/drawee/components/c;)V

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm;->l:Z

    .line 338
    iget-boolean v0, p0, Lcm;->m:Z

    if-nez v0, :cond_1

    .line 339
    invoke-virtual {p0}, Lcm;->k()V

    .line 341
    :cond_1
    return-void

    .line 327
    :cond_2
    const-string/jumbo v0, "request needs submit"

    goto :goto_0
.end method

.method public h()V
    .locals 4

    .prologue
    .line 345
    const/4 v0, 0x2

    invoke-static {v0}, Lbo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    sget-object v0, Lcm;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x %s: onDetach"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcm;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lbo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcm;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->h:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm;->l:Z

    .line 350
    iget-object v0, p0, Lcm;->c:Lcom/facebook/drawee/components/a;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/a;->a(Lcom/facebook/drawee/components/c;)V

    .line 351
    return-void
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lcm;->n()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 4

    .prologue
    .line 381
    const/4 v0, 0x2

    invoke-static {v0}, Lbo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    sget-object v0, Lcm;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x %s: onClick"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcm;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lbo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 384
    :cond_0
    invoke-direct {p0}, Lcm;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcm;->e:Lcom/facebook/drawee/components/d;

    invoke-virtual {v0}, Lcom/facebook/drawee/components/d;->d()V

    .line 386
    iget-object v0, p0, Lcm;->h:Lcz;

    invoke-interface {v0}, Lcz;->b()V

    .line 387
    invoke-virtual {p0}, Lcm;->k()V

    .line 388
    const/4 v0, 0x1

    .line 390
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected k()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 394
    iget-object v0, p0, Lcm;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->j:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 395
    invoke-virtual {p0}, Lcm;->e()Lct;

    move-result-object v0

    iget-object v1, p0, Lcm;->j:Ljava/lang/String;

    iget-object v2, p0, Lcm;->k:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lcm;->h:Lcz;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lcz;->a(FZ)V

    .line 397
    iput-boolean v3, p0, Lcm;->m:Z

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm;->n:Z

    .line 399
    invoke-virtual {p0}, Lcm;->a()Lcom/facebook/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcm;->p:Lcom/facebook/datasource/d;

    .line 400
    const/4 v0, 0x2

    invoke-static {v0}, Lbo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Lcm;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x %s: submitRequest: dataSource: %x"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcm;->j:Ljava/lang/String;

    iget-object v4, p0, Lcm;->p:Lcom/facebook/datasource/d;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lbo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcm;->j:Ljava/lang/String;

    .line 409
    iget-object v1, p0, Lcm;->p:Lcom/facebook/datasource/d;

    invoke-interface {v1}, Lcom/facebook/datasource/d;->c()Z

    move-result v1

    .line 410
    new-instance v2, Lcn;

    invoke-direct {v2, p0, v0, v1}, Lcn;-><init>(Lcm;Ljava/lang/String;Z)V

    .line 436
    iget-object v0, p0, Lcm;->p:Lcom/facebook/datasource/d;

    iget-object v1, p0, Lcm;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2, v1}, Lcom/facebook/datasource/d;->a(Lcom/facebook/datasource/g;Ljava/util/concurrent/Executor;)V

    .line 437
    return-void
.end method

.method public l()Landroid/graphics/drawable/Animatable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcm;->r:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm;->r:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 601
    invoke-static {p0}, Lbg;->a(Ljava/lang/Object;)Lbi;

    move-result-object v0

    const-string/jumbo v1, "isAttached"

    iget-boolean v2, p0, Lcm;->l:Z

    invoke-virtual {v0, v1, v2}, Lbi;->a(Ljava/lang/String;Z)Lbi;

    move-result-object v0

    const-string/jumbo v1, "isRequestSubmitted"

    iget-boolean v2, p0, Lcm;->m:Z

    invoke-virtual {v0, v1, v2}, Lbi;->a(Ljava/lang/String;Z)Lbi;

    move-result-object v0

    const-string/jumbo v1, "hasFetchFailed"

    iget-boolean v2, p0, Lcm;->n:Z

    invoke-virtual {v0, v1, v2}, Lbi;->a(Ljava/lang/String;Z)Lbi;

    move-result-object v0

    const-string/jumbo v1, "fetchedImage"

    iget-object v2, p0, Lcm;->q:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcm;->b(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lbi;->a(Ljava/lang/String;I)Lbi;

    move-result-object v0

    const-string/jumbo v1, "events"

    iget-object v2, p0, Lcm;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    invoke-virtual {v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbi;->a(Ljava/lang/String;Ljava/lang/Object;)Lbi;

    move-result-object v0

    invoke-virtual {v0}, Lbi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
