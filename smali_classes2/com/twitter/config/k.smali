.class final Lcom/twitter/config/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/p",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/twitter/config/l;

    invoke-direct {v0, p0, p1}, Lcom/twitter/config/l;-><init>(Lcom/twitter/config/k;Lrx/ao;)V

    .line 43
    invoke-static {v0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 46
    new-instance v1, Lcom/twitter/config/m;

    invoke-direct {v1, p0, v0}, Lcom/twitter/config/m;-><init>(Lcom/twitter/config/k;Lcom/twitter/config/f;)V

    invoke-static {v1}, Ldmc;->a(Ldje;)Lrx/ap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/ap;)V

    .line 52
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lcom/twitter/config/k;->a(Lrx/ao;)V

    return-void
.end method
