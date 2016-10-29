.class Lrx/internal/operators/cx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lrx/internal/operators/cw;


# direct methods
.method constructor <init>(Lrx/internal/operators/cw;J)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lrx/internal/operators/cx;->b:Lrx/internal/operators/cw;

    iput-wide p2, p0, Lrx/internal/operators/cx;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lrx/internal/operators/cx;->b:Lrx/internal/operators/cw;

    iget-object v0, v0, Lrx/internal/operators/cw;->a:Lrx/s;

    iget-wide v2, p0, Lrx/internal/operators/cx;->a:J

    invoke-interface {v0, v2, v3}, Lrx/s;->a(J)V

    .line 86
    return-void
.end method
