.class Lrx/internal/operators/ck;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Lrx/internal/operators/cj;


# direct methods
.method constructor <init>(Lrx/internal/operators/cj;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lrx/internal/operators/ck;->a:Lrx/internal/operators/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 369
    iget-object v0, p0, Lrx/internal/operators/ck;->a:Lrx/internal/operators/cj;

    iget-boolean v0, v0, Lrx/internal/operators/cj;->f:Z

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lrx/internal/operators/ck;->a:Lrx/internal/operators/cj;

    iget-object v1, v0, Lrx/internal/operators/cj;->g:Lrx/internal/util/o;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ck;->a:Lrx/internal/operators/cj;

    iget-boolean v0, v0, Lrx/internal/operators/cj;->f:Z

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lrx/internal/operators/ck;->a:Lrx/internal/operators/cj;

    iget-object v0, v0, Lrx/internal/operators/cj;->g:Lrx/internal/util/o;

    invoke-virtual {v0}, Lrx/internal/util/o;->a()V

    .line 373
    iget-object v0, p0, Lrx/internal/operators/ck;->a:Lrx/internal/operators/cj;

    iget-wide v2, v0, Lrx/internal/operators/cj;->i:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lrx/internal/operators/cj;->i:J

    .line 374
    iget-object v0, p0, Lrx/internal/operators/ck;->a:Lrx/internal/operators/cj;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lrx/internal/operators/cj;->f:Z

    .line 376
    :cond_0
    monitor-exit v1

    .line 383
    :cond_1
    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
