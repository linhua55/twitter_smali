.class public final Lrx/internal/operators/x;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/p",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/x;->a:Ljava/lang/Throwable;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lrx/internal/operators/x;->a:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/x;->a(Lrx/ao;)V

    return-void
.end method
