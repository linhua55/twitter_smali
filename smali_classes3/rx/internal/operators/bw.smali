.class public final Lrx/internal/operators/bw;
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
.field final a:Ldjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjj",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/o",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldjj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldjj",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/o",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lrx/internal/operators/bw;->a:Ldjj;

    .line 81
    return-void
.end method

.method public static a(Lrx/o;)Lrx/internal/operators/bw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/o",
            "<+TT;>;)",
            "Lrx/internal/operators/bw",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lrx/internal/operators/bw;

    new-instance v1, Lrx/internal/operators/bx;

    invoke-direct {v1, p0}, Lrx/internal/operators/bx;-><init>(Lrx/o;)V

    invoke-direct {v0, v1}, Lrx/internal/operators/bw;-><init>(Ldjj;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/bw;->a(Lrx/ao;)Lrx/ao;

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
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lrx/internal/producers/a;

    invoke-direct {v0}, Lrx/internal/producers/a;-><init>()V

    .line 87
    new-instance v1, Ldma;

    invoke-direct {v1}, Ldma;-><init>()V

    .line 89
    new-instance v2, Lrx/internal/operators/by;

    invoke-direct {v2, p0, p1, v0, v1}, Lrx/internal/operators/by;-><init>(Lrx/internal/operators/bw;Lrx/ao;Lrx/internal/producers/a;Ldma;)V

    .line 163
    invoke-virtual {v1, v2}, Ldma;->a(Lrx/ap;)V

    .line 165
    invoke-virtual {p1, v1}, Lrx/ao;->a(Lrx/ap;)V

    .line 166
    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/s;)V

    .line 168
    return-object v2
.end method
