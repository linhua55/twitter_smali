.class Lcom/twitter/android/client/bp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/am",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/client/bo;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/bo;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/twitter/android/client/bp;->a:Lcom/twitter/android/client/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/an;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/an",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/client/bp;->a:Lcom/twitter/android/client/bo;

    invoke-virtual {v0}, Lcom/twitter/android/client/bo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/bp;->a:Lcom/twitter/android/client/bo;

    invoke-static {v0}, Lcom/twitter/android/client/bo;->a(Lcom/twitter/android/client/bo;)Lbki;

    move-result-object v0

    invoke-virtual {v0}, Lbki;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/twitter/android/client/bp;->a:Lcom/twitter/android/client/bo;

    invoke-static {v0}, Lcom/twitter/android/client/bo;->c(Lcom/twitter/android/client/bo;)Lcom/twitter/android/client/br;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/bp;->a:Lcom/twitter/android/client/bo;

    invoke-static {v1}, Lcom/twitter/android/client/bo;->b(Lcom/twitter/android/client/bo;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/client/bq;

    invoke-direct {v2, p0, p1}, Lcom/twitter/android/client/bq;-><init>(Lcom/twitter/android/client/bp;Lrx/an;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/br;->a(Landroid/app/Activity;Lcom/twitter/android/client/n;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/an;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lrx/an;

    invoke-virtual {p0, p1}, Lcom/twitter/android/client/bp;->a(Lrx/an;)V

    return-void
.end method
