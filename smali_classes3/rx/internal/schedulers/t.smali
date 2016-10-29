.class Lrx/internal/schedulers/t;
.super Lrx/u;
.source "Twttr"

# interfaces
.implements Lrx/ap;


# instance fields
.field final a:Ldlv;

.field final synthetic b:Lrx/internal/schedulers/s;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/s;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lrx/internal/schedulers/t;->b:Lrx/internal/schedulers/s;

    invoke-direct {p0}, Lrx/u;-><init>()V

    .line 42
    new-instance v0, Ldlv;

    invoke-direct {v0}, Ldlv;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/t;->a:Ldlv;

    .line 45
    return-void
.end method


# virtual methods
.method public R_()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lrx/internal/schedulers/t;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->R_()V

    .line 64
    return-void
.end method

.method public a(Ldje;)Lrx/ap;
    .locals 1

    .prologue
    .line 57
    invoke-interface {p1}, Ldje;->a()V

    .line 58
    invoke-static {}, Ldmc;->b()Lrx/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldje;JLjava/util/concurrent/TimeUnit;)Lrx/ap;
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lrx/internal/schedulers/t;->b:Lrx/internal/schedulers/s;

    invoke-virtual {v0}, Lrx/internal/schedulers/s;->b()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 52
    new-instance v2, Lrx/internal/schedulers/z;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/internal/schedulers/z;-><init>(Ldje;Lrx/u;J)V

    invoke-virtual {p0, v2}, Lrx/internal/schedulers/t;->a(Ldje;)Lrx/ap;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lrx/internal/schedulers/t;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->b()Z

    move-result v0

    return v0
.end method
