.class public final Lrx/internal/operators/df;
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
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/df;->a:Lrx/o;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/df;->a(Lrx/ao;)Lrx/ao;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/ao;)Lrx/ao;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;)",
            "Lrx/ao",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ldma;

    invoke-direct {v0}, Ldma;-><init>()V

    .line 39
    new-instance v1, Lrx/internal/producers/a;

    invoke-direct {v1}, Lrx/internal/producers/a;-><init>()V

    .line 40
    new-instance v2, Lrx/internal/operators/dh;

    iget-object v3, p0, Lrx/internal/operators/df;->a:Lrx/o;

    invoke-direct {v2, p1, v0, v1, v3}, Lrx/internal/operators/dh;-><init>(Lrx/ao;Ldma;Lrx/internal/producers/a;Lrx/o;)V

    .line 41
    invoke-virtual {v0, v2}, Ldma;->a(Lrx/ap;)V

    .line 42
    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/ap;)V

    .line 43
    invoke-virtual {p1, v1}, Lrx/ao;->a(Lrx/s;)V

    .line 44
    return-object v2
.end method
