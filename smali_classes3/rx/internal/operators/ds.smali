.class public final Lrx/internal/operators/ds;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/q",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/ds;->a:Lrx/o;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/ds;->a(Lrx/ao;)Lrx/ao;

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
    const/4 v2, 0x0

    .line 41
    new-instance v0, Ldle;

    invoke-direct {v0, p1, v2}, Ldle;-><init>(Lrx/ao;Z)V

    .line 43
    new-instance v1, Lrx/internal/operators/dt;

    invoke-direct {v1, p0, v0, v2, v0}, Lrx/internal/operators/dt;-><init>(Lrx/internal/operators/ds;Lrx/ao;ZLrx/ao;)V

    .line 66
    new-instance v2, Lrx/internal/operators/du;

    invoke-direct {v2, p0, v1}, Lrx/internal/operators/du;-><init>(Lrx/internal/operators/ds;Lrx/ao;)V

    .line 89
    invoke-virtual {v0, v1}, Lrx/ao;->a(Lrx/ap;)V

    .line 90
    invoke-virtual {v0, v2}, Lrx/ao;->a(Lrx/ap;)V

    .line 92
    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/ap;)V

    .line 94
    iget-object v0, p0, Lrx/internal/operators/ds;->a:Lrx/o;

    invoke-virtual {v0, v2}, Lrx/o;->a(Lrx/ao;)Lrx/ap;

    .line 96
    return-object v1
.end method
