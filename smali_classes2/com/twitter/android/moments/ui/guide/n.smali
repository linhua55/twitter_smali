.class Lcom/twitter/android/moments/ui/guide/n;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/y",
        "<",
        "Lcom/twitter/android/moments/viewmodels/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/guide/m;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/guide/m;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/n;->a:Lcom/twitter/android/moments/ui/guide/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/viewmodels/v;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/n;->a:Lcom/twitter/android/moments/ui/guide/m;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/m;->a(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/ui/guide/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/aa;->g()V

    .line 61
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/n;->a:Lcom/twitter/android/moments/ui/guide/m;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/m;->b(Lcom/twitter/android/moments/ui/guide/m;)Lahi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lahi;->a(Lcom/twitter/android/moments/viewmodels/v;)V

    .line 62
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/n;->a:Lcom/twitter/android/moments/ui/guide/m;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/m;->c(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/data/q;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/android/moments/viewmodels/v;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/data/q;->putAll(Ljava/util/Map;)V

    .line 63
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/n;->a:Lcom/twitter/android/moments/ui/guide/m;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/m;->d(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/data/q;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/android/moments/viewmodels/v;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/data/q;->putAll(Ljava/util/Map;)V

    .line 65
    iget-object v0, p1, Lcom/twitter/android/moments/viewmodels/v;->c:Ljava/util/List;

    .line 66
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/n;->a:Lcom/twitter/android/moments/ui/guide/m;

    invoke-static {v1, v0}, Lcom/twitter/android/moments/ui/guide/m;->a(Lcom/twitter/android/moments/ui/guide/m;Ljava/util/List;)V

    .line 68
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/n;->a:Lcom/twitter/android/moments/ui/guide/m;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/m;->a(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/ui/guide/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/aa;->d()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/n;->a:Lcom/twitter/android/moments/ui/guide/m;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/m;->a(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/ui/guide/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/aa;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/n;->a:Lcom/twitter/android/moments/ui/guide/m;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/m;->e(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/data/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/l;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/n;->a:Lcom/twitter/android/moments/ui/guide/m;

    .line 70
    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/m;->e(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/data/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/l;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/n;->a:Lcom/twitter/android/moments/ui/guide/m;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/m;->a(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/ui/guide/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/aa;->b()V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/n;->a:Lcom/twitter/android/moments/ui/guide/m;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/m;->e(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/data/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/n;->a:Lcom/twitter/android/moments/ui/guide/m;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/m;->a(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/ui/guide/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/aa;->a()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Lcom/twitter/android/moments/viewmodels/v;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/guide/n;->a(Lcom/twitter/android/moments/viewmodels/v;)V

    return-void
.end method
