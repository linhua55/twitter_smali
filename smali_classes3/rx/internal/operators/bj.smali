.class final Lrx/internal/operators/bj;
.super Ldkx;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ldkx",
        "<TK;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lrx/internal/operators/OperatorGroupBy$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorGroupBy$State",
            "<TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lrx/internal/operators/OperatorGroupBy$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lrx/internal/operators/OperatorGroupBy$State",
            "<TT;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Ldkx;-><init>(Ljava/lang/Object;Lrx/p;)V

    .line 347
    iput-object p2, p0, Lrx/internal/operators/bj;->c:Lrx/internal/operators/OperatorGroupBy$State;

    .line 348
    return-void
.end method

.method public static a(Ljava/lang/Object;ILrx/internal/operators/bi;Z)Lrx/internal/operators/bj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lrx/internal/operators/bi",
            "<*TK;TT;>;Z)",
            "Lrx/internal/operators/bj",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 339
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$State;

    invoke-direct {v0, p1, p2, p0, p3}, Lrx/internal/operators/OperatorGroupBy$State;-><init>(ILrx/internal/operators/bi;Ljava/lang/Object;Z)V

    .line 340
    new-instance v1, Lrx/internal/operators/bj;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/bj;-><init>(Ljava/lang/Object;Lrx/internal/operators/OperatorGroupBy$State;)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lrx/internal/operators/bj;->c:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorGroupBy$State;->c()V

    .line 360
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lrx/internal/operators/bj;->c:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorGroupBy$State;->a(Ljava/lang/Object;)V

    .line 352
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lrx/internal/operators/bj;->c:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorGroupBy$State;->a(Ljava/lang/Throwable;)V

    .line 356
    return-void
.end method
