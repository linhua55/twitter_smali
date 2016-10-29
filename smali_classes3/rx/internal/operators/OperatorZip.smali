.class public final Lrx/internal/operators/OperatorZip;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/q",
        "<TR;[",
        "Lrx/o",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:Ldjl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjl",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldjk;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Ldjm;->a(Ldjk;)Ldjl;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->a:Ldjl;

    .line 72
    return-void
.end method

.method public constructor <init>(Ldjl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldjl",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->a:Ldjl;

    .line 67
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorZip;->a(Lrx/ao;)Lrx/ao;

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
            "<-[",
            "Lrx/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lrx/internal/operators/OperatorZip$Zip;

    iget-object v1, p0, Lrx/internal/operators/OperatorZip;->a:Ldjl;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorZip$Zip;-><init>(Lrx/ao;Ldjl;)V

    .line 113
    new-instance v1, Lrx/internal/operators/OperatorZip$ZipProducer;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorZip$ZipProducer;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 114
    new-instance v2, Lrx/internal/operators/eb;

    invoke-direct {v2, p0, p1, v0, v1}, Lrx/internal/operators/eb;-><init>(Lrx/internal/operators/OperatorZip;Lrx/ao;Lrx/internal/operators/OperatorZip$Zip;Lrx/internal/operators/OperatorZip$ZipProducer;)V

    .line 116
    invoke-virtual {p1, v2}, Lrx/ao;->a(Lrx/ap;)V

    .line 117
    invoke-virtual {p1, v1}, Lrx/ao;->a(Lrx/s;)V

    .line 119
    return-object v2
.end method
