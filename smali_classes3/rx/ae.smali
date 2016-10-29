.class Lrx/ae;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Lrx/an;

.field final synthetic b:Lrx/u;

.field final synthetic c:Lrx/ad;


# direct methods
.method constructor <init>(Lrx/ad;Lrx/an;Lrx/u;)V
    .locals 0

    .prologue
    .line 1929
    iput-object p1, p0, Lrx/ae;->c:Lrx/ad;

    iput-object p2, p0, Lrx/ae;->a:Lrx/an;

    iput-object p3, p0, Lrx/ae;->b:Lrx/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1932
    new-instance v0, Lrx/af;

    invoke-direct {v0, p0}, Lrx/af;-><init>(Lrx/ae;)V

    .line 1952
    iget-object v1, p0, Lrx/ae;->a:Lrx/an;

    invoke-virtual {v1, v0}, Lrx/an;->a(Lrx/ap;)V

    .line 1954
    iget-object v1, p0, Lrx/ae;->c:Lrx/ad;

    iget-object v1, v1, Lrx/ad;->b:Lrx/w;

    invoke-virtual {v1, v0}, Lrx/w;->a(Lrx/an;)Lrx/ap;

    .line 1955
    return-void
.end method
