.class public final Lrx/internal/operators/OperatorEagerConcatMap;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/q",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field final a:Ldjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjj",
            "<-TT;+",
            "Lrx/o",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ldjj;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldjj",
            "<-TT;+",
            "Lrx/o",
            "<+TR;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/OperatorEagerConcatMap;->a:Ldjj;

    .line 37
    iput p2, p0, Lrx/internal/operators/OperatorEagerConcatMap;->b:I

    .line 38
    iput p3, p0, Lrx/internal/operators/OperatorEagerConcatMap;->c:I

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorEagerConcatMap;->a(Lrx/ao;)Lrx/ao;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/ao;)Lrx/ao;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TR;>;)",
            "Lrx/ao",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lrx/internal/operators/bc;

    iget-object v1, p0, Lrx/internal/operators/OperatorEagerConcatMap;->a:Ldjj;

    iget v2, p0, Lrx/internal/operators/OperatorEagerConcatMap;->b:I

    iget v3, p0, Lrx/internal/operators/OperatorEagerConcatMap;->c:I

    invoke-direct {v0, v1, v2, v3, p1}, Lrx/internal/operators/bc;-><init>(Ldjj;IILrx/ao;)V

    .line 44
    invoke-virtual {v0}, Lrx/internal/operators/bc;->d()V

    .line 45
    return-object v0
.end method
