.class public final Lrx/internal/operators/j;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/p",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Ldjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjj",
            "<-TT;+",
            "Lrx/o",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I


# direct methods
.method public constructor <init>(Lrx/o;Ldjj;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<+TT;>;",
            "Ldjj",
            "<-TT;+",
            "Lrx/o",
            "<+TR;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lrx/internal/operators/j;->a:Lrx/o;

    .line 67
    iput-object p2, p0, Lrx/internal/operators/j;->b:Ldjj;

    .line 68
    iput p3, p0, Lrx/internal/operators/j;->c:I

    .line 69
    iput p4, p0, Lrx/internal/operators/j;->d:I

    .line 70
    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget v0, p0, Lrx/internal/operators/j;->d:I

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Ldle;

    invoke-direct {v0, p1}, Ldle;-><init>(Lrx/ao;)V

    .line 82
    :goto_0
    new-instance v1, Lrx/internal/operators/n;

    iget-object v2, p0, Lrx/internal/operators/j;->b:Ldjj;

    iget v3, p0, Lrx/internal/operators/j;->c:I

    iget v4, p0, Lrx/internal/operators/j;->d:I

    invoke-direct {v1, v0, v2, v3, v4}, Lrx/internal/operators/n;-><init>(Lrx/ao;Ldjj;II)V

    .line 84
    invoke-virtual {p1, v1}, Lrx/ao;->a(Lrx/ap;)V

    .line 85
    iget-object v0, v1, Lrx/internal/operators/n;->h:Ldma;

    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/ap;)V

    .line 86
    new-instance v0, Lrx/internal/operators/k;

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/k;-><init>(Lrx/internal/operators/j;Lrx/internal/operators/n;)V

    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/s;)V

    .line 93
    invoke-virtual {p1}, Lrx/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lrx/internal/operators/j;->a:Lrx/o;

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/ao;)Lrx/ap;

    .line 96
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 79
    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/j;->a(Lrx/ao;)V

    return-void
.end method
