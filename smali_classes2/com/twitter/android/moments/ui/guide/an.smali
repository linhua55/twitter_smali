.class public Lcom/twitter/android/moments/ui/guide/an;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lauk;
.implements Laun;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lauk",
        "<",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/moments/ad;",
        ">;>;",
        "Laun",
        "<",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/moments/ad;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/twitter/util/collection/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "extra_moment"

    sget-object v1, Lcom/twitter/model/moments/ad;->a:Lcom/twitter/util/serialization/ah;

    .line 29
    invoke-static {v1}, Lcom/twitter/util/collection/e;->c(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v1

    .line 28
    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ab;

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;Lcom/twitter/util/collection/ab;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    const-string/jumbo v0, "extra_moment"

    sget-object v1, Lcom/twitter/model/moments/ad;->a:Lcom/twitter/util/serialization/ah;

    .line 35
    invoke-static {v1}, Lcom/twitter/util/collection/e;->c(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v1

    .line 34
    invoke-static {p1, v0, p2, v1}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 36
    return-void
.end method

.method public bridge synthetic a(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Lcom/twitter/util/collection/ab;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/guide/an;->a(Landroid/content/Intent;Lcom/twitter/util/collection/ab;)V

    return-void
.end method

.method public synthetic b(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/guide/an;->a(Landroid/content/Intent;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    return-object v0
.end method
