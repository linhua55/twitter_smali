.class Lcom/twitter/android/moments/data/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/client/bf;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/data/l;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/l;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/twitter/android/moments/data/m;->a:Lcom/twitter/android/moments/data/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public a(ILcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public b(ILcom/twitter/library/service/x;)V
    .locals 5

    .prologue
    .line 46
    iget-object v0, p0, Lcom/twitter/android/moments/data/m;->a:Lcom/twitter/android/moments/data/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/moments/data/l;->a(Lcom/twitter/android/moments/data/l;Z)Z

    .line 47
    invoke-virtual {p2}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/twitter/android/moments/data/m;->a:Lcom/twitter/android/moments/data/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/moments/data/l;->b(Lcom/twitter/android/moments/data/l;Z)Z

    .line 49
    iget-object v0, p0, Lcom/twitter/android/moments/data/m;->a:Lcom/twitter/android/moments/data/l;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/l;->b()Lcom/twitter/util/x;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/viewmodels/v;

    .line 50
    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v3

    .line 51
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/twitter/android/moments/viewmodels/v;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-void
.end method
