.class Lcom/twitter/library/card/ba;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/library/card/az;


# direct methods
.method constructor <init>(Lcom/twitter/library/card/az;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/twitter/library/card/ba;->a:Lcom/twitter/library/card/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/twitter/library/card/ba;->a:Lcom/twitter/library/card/az;

    invoke-static {v0}, Lcom/twitter/library/card/az;->a(Lcom/twitter/library/card/az;)Lcom/twitter/library/card/bb;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/card/bb;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/twitter/library/card/ba;->a:Lcom/twitter/library/card/az;

    invoke-static {v0}, Lcom/twitter/library/card/az;->a(Lcom/twitter/library/card/az;)Lcom/twitter/library/card/bb;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/card/bb;->ax_()V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/card/ba;->a:Lcom/twitter/library/card/az;

    invoke-static {v0}, Lcom/twitter/library/card/az;->b(Lcom/twitter/library/card/az;)V

    goto :goto_0
.end method
