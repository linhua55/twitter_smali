.class Lcom/twitter/android/moments/ui/maker/br;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lauk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lauk",
        "<",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/twitter/util/collection/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/br;->a(Landroid/content/Intent;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    return-object v0
.end method
