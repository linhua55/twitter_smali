.class public final Lrx/internal/operators/ac;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "TClosing:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/q",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:Ldji;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldji",
            "<+",
            "Lrx/o",
            "<+TTClosing;>;>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method public constructor <init>(Lrx/o;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<+TTClosing;>;I)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lrx/internal/operators/ad;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/ad;-><init>(Lrx/internal/operators/ac;Lrx/o;)V

    iput-object v0, p0, Lrx/internal/operators/ac;->a:Ldji;

    .line 75
    iput p2, p0, Lrx/internal/operators/ac;->b:I

    .line 76
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/ac;->a(Lrx/ao;)Lrx/ao;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/ao;)Lrx/ao;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/ao",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ac;->a:Ldji;

    invoke-interface {v0}, Ldji;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    new-instance v1, Lrx/internal/operators/af;

    new-instance v2, Ldle;

    invoke-direct {v2, p1}, Ldle;-><init>(Lrx/ao;)V

    invoke-direct {v1, p0, v2}, Lrx/internal/operators/af;-><init>(Lrx/internal/operators/ac;Lrx/ao;)V

    .line 89
    new-instance v2, Lrx/internal/operators/ae;

    invoke-direct {v2, p0, v1}, Lrx/internal/operators/ae;-><init>(Lrx/internal/operators/ac;Lrx/internal/operators/af;)V

    .line 107
    invoke-virtual {p1, v2}, Lrx/ao;->a(Lrx/ap;)V

    .line 108
    invoke-virtual {p1, v1}, Lrx/ao;->a(Lrx/ap;)V

    .line 110
    invoke-virtual {v0, v2}, Lrx/o;->a(Lrx/ao;)Lrx/ap;

    move-object v0, v1

    .line 112
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-static {v0, p1}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;Lrx/r;)V

    .line 85
    invoke-static {}, Ldlf;->a()Lrx/ao;

    move-result-object v0

    goto :goto_0
.end method
