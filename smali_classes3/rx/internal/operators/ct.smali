.class public final Lrx/internal/operators/ct;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/p",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/t;

.field final b:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/o;Lrx/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<TT;>;",
            "Lrx/t;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lrx/internal/operators/ct;->a:Lrx/t;

    .line 37
    iput-object p1, p0, Lrx/internal/operators/ct;->b:Lrx/o;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lrx/internal/operators/ct;->a:Lrx/t;

    invoke-virtual {v0}, Lrx/t;->a()Lrx/u;

    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/ap;)V

    .line 45
    new-instance v1, Lrx/internal/operators/cu;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/cu;-><init>(Lrx/internal/operators/ct;Lrx/ao;Lrx/u;)V

    invoke-virtual {v0, v1}, Lrx/u;->a(Ldje;)Lrx/ap;

    .line 97
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/ct;->a(Lrx/ao;)V

    return-void
.end method
