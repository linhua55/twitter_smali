.class public final Lrx/internal/operators/OperatorGroupBy;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/q",
        "<",
        "Ldkx",
        "<TK;TV;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:Ldjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjj",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final b:Ldjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjj",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Z


# direct methods
.method public constructor <init>(Ldjj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldjj",
            "<-TT;+TK;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->b()Ldjj;

    move-result-object v0

    sget v1, Lrx/internal/util/s;->c:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lrx/internal/operators/OperatorGroupBy;-><init>(Ldjj;Ldjj;IZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ldjj;Ldjj;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldjj",
            "<-TT;+TK;>;",
            "Ldjj",
            "<-TT;+TV;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy;->a:Ldjj;

    .line 61
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy;->b:Ldjj;

    .line 62
    iput p3, p0, Lrx/internal/operators/OperatorGroupBy;->c:I

    .line 63
    iput-boolean p4, p0, Lrx/internal/operators/OperatorGroupBy;->d:Z

    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorGroupBy;->a(Lrx/ao;)Lrx/ao;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/ao;)Lrx/ao;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Ldkx",
            "<TK;TV;>;>;)",
            "Lrx/ao",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lrx/internal/operators/bi;

    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy;->a:Ldjj;

    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy;->b:Ldjj;

    iget v4, p0, Lrx/internal/operators/OperatorGroupBy;->c:I

    iget-boolean v5, p0, Lrx/internal/operators/OperatorGroupBy;->d:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/bi;-><init>(Lrx/ao;Ldjj;Ldjj;IZ)V

    .line 70
    new-instance v1, Lrx/internal/operators/bg;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/bg;-><init>(Lrx/internal/operators/OperatorGroupBy;Lrx/internal/operators/bi;)V

    invoke-static {v1}, Ldmc;->a(Ldje;)Lrx/ap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/ao;->a(Lrx/ap;)V

    .line 77
    iget-object v1, v0, Lrx/internal/operators/bi;->h:Lrx/internal/operators/bh;

    invoke-virtual {p1, v1}, Lrx/ao;->a(Lrx/s;)V

    .line 79
    return-object v0
.end method
