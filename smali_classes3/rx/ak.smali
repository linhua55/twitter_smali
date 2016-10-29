.class Lrx/ak;
.super Lrx/an;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/an",
        "<",
        "Lrx/w",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/an;

.field final synthetic b:Lrx/aj;


# direct methods
.method constructor <init>(Lrx/aj;Lrx/an;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lrx/ak;->b:Lrx/aj;

    iput-object p2, p0, Lrx/ak;->a:Lrx/an;

    invoke-direct {p0}, Lrx/an;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 693
    check-cast p1, Lrx/w;

    invoke-virtual {p0, p1}, Lrx/ak;->a(Lrx/w;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lrx/ak;->a:Lrx/an;

    invoke-virtual {v0, p1}, Lrx/an;->a(Ljava/lang/Throwable;)V

    .line 703
    return-void
.end method

.method public a(Lrx/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/w",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lrx/ak;->a:Lrx/an;

    invoke-virtual {p1, v0}, Lrx/w;->a(Lrx/an;)Lrx/ap;

    .line 698
    return-void
.end method
