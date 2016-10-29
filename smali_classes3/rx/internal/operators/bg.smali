.class Lrx/internal/operators/bg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Lrx/internal/operators/bi;

.field final synthetic b:Lrx/internal/operators/OperatorGroupBy;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorGroupBy;Lrx/internal/operators/bi;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lrx/internal/operators/bg;->b:Lrx/internal/operators/OperatorGroupBy;

    iput-object p2, p0, Lrx/internal/operators/bg;->a:Lrx/internal/operators/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lrx/internal/operators/bg;->a:Lrx/internal/operators/bi;

    invoke-virtual {v0}, Lrx/internal/operators/bi;->d()V

    .line 74
    return-void
.end method
