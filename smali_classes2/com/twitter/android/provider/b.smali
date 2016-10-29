.class Lcom/twitter/android/provider/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lsc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsc",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lsc;

.field final synthetic b:Lcom/twitter/android/provider/a;


# direct methods
.method constructor <init>(Lcom/twitter/android/provider/a;Lsc;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/twitter/android/provider/b;->b:Lcom/twitter/android/provider/a;

    iput-object p2, p0, Lcom/twitter/android/provider/b;->a:Lsc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcmf;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/provider/b;->a(Ljava/lang/String;Lcmf;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcmf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcmf",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p2}, Lcom/twitter/android/provider/a;->a(Lcmf;)Lcmf;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/twitter/android/provider/b;->b:Lcom/twitter/android/provider/a;

    invoke-static {v2}, Lcom/twitter/android/provider/a;->a(Lcom/twitter/android/provider/a;)Lcom/twitter/android/provider/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/twitter/android/provider/e;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/twitter/android/provider/b;->b:Lcom/twitter/android/provider/a;

    .line 80
    invoke-static {v2}, Lcom/twitter/android/provider/a;->c(Lcom/twitter/android/provider/a;)Lcom/twitter/android/provider/j;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/provider/b;->b:Lcom/twitter/android/provider/a;

    invoke-static {v3}, Lcom/twitter/android/provider/a;->b(Lcom/twitter/android/provider/a;)Lcom/twitter/android/provider/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/provider/j;->a(Lcom/twitter/android/provider/l;)Lcmf;

    move-result-object v2

    .line 82
    invoke-static {v2}, Lcom/twitter/android/provider/a;->b(Lcmf;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v3

    .line 83
    invoke-static {v0, v2}, Lcom/twitter/android/provider/a;->a(Lcmf;Lcmf;)Lcmf;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/provider/b;->a:Lsc;

    new-instance v3, Lcmo;

    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-direct {v3, v0}, Lcmo;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {v2, p1, v3}, Lsc;->a(Ljava/lang/Object;Lcmf;)V

    .line 91
    return-void

    .line 86
    :cond_0
    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/provider/b;->b:Lcom/twitter/android/provider/a;

    .line 87
    invoke-static {v2, p1}, Lcom/twitter/android/provider/a;->a(Lcom/twitter/android/provider/a;Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    goto :goto_0
.end method
