.class Lrx/internal/operators/z;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field a:J

.field final synthetic b:Lrx/ao;

.field final synthetic c:Lrx/u;

.field final synthetic d:Lrx/internal/operators/y;


# direct methods
.method constructor <init>(Lrx/internal/operators/y;Lrx/ao;Lrx/u;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lrx/internal/operators/z;->d:Lrx/internal/operators/y;

    iput-object p2, p0, Lrx/internal/operators/z;->b:Lrx/ao;

    iput-object p3, p0, Lrx/internal/operators/z;->c:Lrx/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/z;->b:Lrx/ao;

    iget-wide v2, p0, Lrx/internal/operators/z;->a:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lrx/internal/operators/z;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/ao;->b_(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 55
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/z;->c:Lrx/u;

    invoke-virtual {v1}, Lrx/u;->R_()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    iget-object v1, p0, Lrx/internal/operators/z;->b:Lrx/ao;

    invoke-static {v0, v1}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;Lrx/r;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lrx/internal/operators/z;->b:Lrx/ao;

    invoke-static {v0, v2}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;Lrx/r;)V

    throw v1
.end method
