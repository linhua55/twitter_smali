.class public final Lrx/internal/operators/cl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/q",
        "<TR;TT;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field final a:Ldjk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjk",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field private final b:Ldji;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldji",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/cl;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldji;Ldjk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldji",
            "<TR;>;",
            "Ldjk",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lrx/internal/operators/cl;->b:Ldji;

    .line 75
    iput-object p2, p0, Lrx/internal/operators/cl;->a:Ldjk;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ldjk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ldjk",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lrx/internal/operators/cm;

    invoke-direct {v0, p1}, Lrx/internal/operators/cm;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lrx/internal/operators/cl;-><init>(Ldji;Ldjk;)V

    .line 71
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/cl;->a(Lrx/ao;)Lrx/ao;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/ao;)Lrx/ao;
    .locals 3
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
    .line 93
    iget-object v0, p0, Lrx/internal/operators/cl;->b:Ldji;

    invoke-interface {v0}, Ldji;->call()Ljava/lang/Object;

    move-result-object v1

    .line 95
    sget-object v0, Lrx/internal/operators/cl;->c:Ljava/lang/Object;

    if-ne v1, v0, :cond_0

    .line 96
    new-instance v0, Lrx/internal/operators/cn;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/cn;-><init>(Lrx/internal/operators/cl;Lrx/ao;Lrx/ao;)V

    .line 165
    :goto_0
    return-object v0

    .line 129
    :cond_0
    new-instance v2, Lrx/internal/operators/cp;

    invoke-direct {v2, v1, p1}, Lrx/internal/operators/cp;-><init>(Ljava/lang/Object;Lrx/ao;)V

    .line 131
    new-instance v0, Lrx/internal/operators/co;

    invoke-direct {v0, p0, v1, v2}, Lrx/internal/operators/co;-><init>(Lrx/internal/operators/cl;Ljava/lang/Object;Lrx/internal/operators/cp;)V

    .line 163
    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/ap;)V

    .line 164
    invoke-virtual {p1, v2}, Lrx/ao;->a(Lrx/s;)V

    goto :goto_0
.end method
