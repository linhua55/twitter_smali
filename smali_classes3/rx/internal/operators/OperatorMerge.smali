.class public final Lrx/internal/operators/OperatorMerge;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/q",
        "<TT;",
        "Lrx/o",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Z

.field final b:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean p1, p0, Lrx/internal/operators/OperatorMerge;->a:Z

    .line 100
    iput p2, p0, Lrx/internal/operators/OperatorMerge;->b:I

    .line 101
    return-void
.end method

.method public static a(Z)Lrx/internal/operators/OperatorMerge;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lrx/internal/operators/OperatorMerge",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    if-eqz p0, :cond_0

    .line 74
    sget-object v0, Lrx/internal/operators/bp;->a:Lrx/internal/operators/OperatorMerge;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lrx/internal/operators/bq;->a:Lrx/internal/operators/OperatorMerge;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge;->a(Lrx/ao;)Lrx/ao;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/ao;)Lrx/ao;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;)",
            "Lrx/ao",
            "<",
            "Lrx/o",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lrx/internal/operators/bs;

    iget-boolean v1, p0, Lrx/internal/operators/OperatorMerge;->a:Z

    iget v2, p0, Lrx/internal/operators/OperatorMerge;->b:I

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/bs;-><init>(Lrx/ao;ZI)V

    .line 106
    new-instance v1, Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;-><init>(Lrx/internal/operators/bs;)V

    .line 107
    iput-object v1, v0, Lrx/internal/operators/bs;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    .line 109
    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/ap;)V

    .line 110
    invoke-virtual {p1, v1}, Lrx/ao;->a(Lrx/s;)V

    .line 112
    return-object v0
.end method
