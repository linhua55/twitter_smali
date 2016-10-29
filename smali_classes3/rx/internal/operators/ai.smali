.class public final Lrx/internal/operators/ai;
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
.field final a:J

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lrx/t;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/t;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lrx/internal/operators/ai;->a:J

    .line 50
    iput-object p3, p0, Lrx/internal/operators/ai;->b:Ljava/util/concurrent/TimeUnit;

    .line 51
    iput-object p4, p0, Lrx/internal/operators/ai;->c:Lrx/t;

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/ai;->a(Lrx/ao;)Lrx/ao;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/ao;)Lrx/ao;
    .locals 6
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
    .line 56
    iget-object v0, p0, Lrx/internal/operators/ai;->c:Lrx/t;

    invoke-virtual {v0}, Lrx/t;->a()Lrx/u;

    move-result-object v4

    .line 57
    new-instance v5, Ldle;

    invoke-direct {v5, p1}, Ldle;-><init>(Lrx/ao;)V

    .line 58
    new-instance v3, Ldma;

    invoke-direct {v3}, Ldma;-><init>()V

    .line 60
    invoke-virtual {v5, v4}, Ldle;->a(Lrx/ap;)V

    .line 61
    invoke-virtual {v5, v3}, Ldle;->a(Lrx/ap;)V

    .line 63
    new-instance v0, Lrx/internal/operators/aj;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/aj;-><init>(Lrx/internal/operators/ai;Lrx/ao;Ldma;Lrx/u;Ldle;)V

    return-object v0
.end method
