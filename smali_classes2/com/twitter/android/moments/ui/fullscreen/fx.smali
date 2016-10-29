.class Lcom/twitter/android/moments/ui/fullscreen/fx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcmf",
        "<",
        "Lcom/twitter/android/moments/viewmodels/MomentModule;",
        ">;",
        "Lrx/o",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/twitter/android/moments/viewmodels/MomentModule;",
        "Lcom/twitter/model/moments/viewmodels/a;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/fu;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/fu;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/fx;->a:Lcom/twitter/android/moments/ui/fullscreen/fu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    check-cast p1, Lcmf;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/fx;->a(Lcmf;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcmf;)Lrx/o;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            ">;)",
            "Lrx/o",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 129
    invoke-static {p1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 130
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/MomentModule;

    .line 131
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/fx;->a:Lcom/twitter/android/moments/ui/fullscreen/fu;

    invoke-static {v4}, Lcom/twitter/android/moments/ui/fullscreen/fu;->a(Lcom/twitter/android/moments/ui/fullscreen/fu;)Ladw;

    move-result-object v4

    invoke-virtual {v0}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v0

    iget-wide v6, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {v4, v6, v7}, Ladw;->a(J)Lrx/o;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {}, Lcom/twitter/android/moments/ui/fullscreen/fu;->c()Ldjl;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/o;->a(Ljava/lang/Iterable;Ldjl;)Lrx/o;

    move-result-object v0

    invoke-static {v2}, Lcom/twitter/android/moments/ui/fullscreen/fu;->a(Ljava/util/List;)Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    return-object v0
.end method
