.class Lrx/ac;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/ao",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/an;

.field final synthetic b:Lrx/w;


# direct methods
.method constructor <init>(Lrx/w;Lrx/an;)V
    .locals 0

    .prologue
    .line 1880
    iput-object p1, p0, Lrx/ac;->b:Lrx/w;

    iput-object p2, p0, Lrx/ac;->a:Lrx/an;

    invoke-direct {p0}, Lrx/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lrx/ac;->a:Lrx/an;

    invoke-virtual {v0, p1}, Lrx/an;->a(Ljava/lang/Throwable;)V

    .line 1890
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1894
    iget-object v0, p0, Lrx/ac;->a:Lrx/an;

    invoke-virtual {v0, p1}, Lrx/an;->a(Ljava/lang/Object;)V

    .line 1895
    return-void
.end method

.method public bt_()V
    .locals 0

    .prologue
    .line 1885
    return-void
.end method
