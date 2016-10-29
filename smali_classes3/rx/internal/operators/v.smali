.class public Lrx/internal/operators/v;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/am",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<TT;>;"
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
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/internal/operators/v;->a:Lrx/o;

    .line 36
    return-void
.end method

.method public static a(Lrx/o;)Lrx/internal/operators/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/o",
            "<TT;>;)",
            "Lrx/internal/operators/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lrx/internal/operators/v;

    invoke-direct {v0, p0}, Lrx/internal/operators/v;-><init>(Lrx/o;)V

    return-object v0
.end method


# virtual methods
.method public a(Lrx/an;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/an",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lrx/internal/operators/w;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/w;-><init>(Lrx/internal/operators/v;Lrx/an;)V

    .line 83
    invoke-virtual {p1, v0}, Lrx/an;->a(Lrx/ap;)V

    .line 84
    iget-object v1, p0, Lrx/internal/operators/v;->a:Lrx/o;

    invoke-virtual {v1, v0}, Lrx/o;->a(Lrx/ao;)Lrx/ap;

    .line 85
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lrx/an;

    invoke-virtual {p0, p1}, Lrx/internal/operators/v;->a(Lrx/an;)V

    return-void
.end method
