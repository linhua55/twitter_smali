.class final Ldca;
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
.field final synthetic a:Lcom/twitter/util/concurrent/j;


# direct methods
.method constructor <init>(Lcom/twitter/util/concurrent/j;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Ldca;->a:Lcom/twitter/util/concurrent/j;

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
    .line 26
    iget-object v0, p0, Ldca;->a:Lcom/twitter/util/concurrent/j;

    new-instance v1, Ldcb;

    invoke-direct {v1, p0, p1}, Ldcb;-><init>(Ldca;Lrx/an;)V

    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 34
    iget-object v0, p0, Ldca;->a:Lcom/twitter/util/concurrent/j;

    new-instance v1, Ldcc;

    invoke-direct {v1, p0, p1}, Ldcc;-><init>(Ldca;Lrx/an;)V

    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->d(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 42
    iget-object v0, p0, Ldca;->a:Lcom/twitter/util/concurrent/j;

    new-instance v1, Ldcd;

    invoke-direct {v1, p0, p1}, Ldcd;-><init>(Ldca;Lrx/an;)V

    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->c(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 50
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lrx/an;

    invoke-virtual {p0, p1}, Ldca;->a(Lrx/an;)V

    return-void
.end method
