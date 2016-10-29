.class public Lrx/internal/operators/do;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a()Lrx/internal/operators/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/do",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lrx/internal/operators/dq;->a:Lrx/internal/operators/do;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/do;->a(Lrx/ao;)Lrx/ao;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/ao;)Lrx/ao;
    .locals 2
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
    .line 43
    new-instance v0, Lrx/internal/operators/dr;

    invoke-direct {v0, p1}, Lrx/internal/operators/dr;-><init>(Lrx/ao;)V

    .line 44
    new-instance v1, Lrx/internal/operators/dp;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/dp;-><init>(Lrx/internal/operators/do;Lrx/internal/operators/dr;)V

    invoke-virtual {p1, v1}, Lrx/ao;->a(Lrx/s;)V

    .line 51
    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/ap;)V

    .line 52
    return-object v0
.end method
