.class public Lrx/internal/operators/az;
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
.field private final a:Ldje;


# direct methods
.method public constructor <init>(Ldje;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/internal/operators/az;->a:Ldje;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/az;->a(Lrx/ao;)Lrx/ao;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/ao;)Lrx/ao;
    .locals 1
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
    .line 40
    iget-object v0, p0, Lrx/internal/operators/az;->a:Ldje;

    invoke-interface {v0}, Ldje;->a()V

    .line 43
    invoke-static {p1}, Ldlf;->a(Lrx/ao;)Lrx/ao;

    move-result-object v0

    return-object v0
.end method
