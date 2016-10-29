.class final Lrx/aj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/am",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/w;


# direct methods
.method constructor <init>(Lrx/w;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lrx/aj;->a:Lrx/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 693
    new-instance v0, Lrx/ak;

    invoke-direct {v0, p0, p1}, Lrx/ak;-><init>(Lrx/aj;Lrx/an;)V

    .line 706
    invoke-virtual {p1, v0}, Lrx/an;->a(Lrx/ap;)V

    .line 707
    iget-object v1, p0, Lrx/aj;->a:Lrx/w;

    invoke-virtual {v1, v0}, Lrx/w;->a(Lrx/an;)Lrx/ap;

    .line 708
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 689
    check-cast p1, Lrx/an;

    invoke-virtual {p0, p1}, Lrx/aj;->a(Lrx/an;)V

    return-void
.end method
