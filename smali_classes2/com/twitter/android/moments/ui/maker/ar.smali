.class Lcom/twitter/android/moments/ui/maker/ar;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laum",
        "<",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/aq;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/aq;Lcom/twitter/android/moments/ui/maker/navigation/ao;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ar;->b:Lcom/twitter/android/moments/ui/maker/aq;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/ar;->a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/twitter/util/collection/ab;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ar;->b:Lcom/twitter/android/moments/ui/maker/aq;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/aq;->a(Lcom/twitter/android/moments/ui/maker/aq;)Lcom/twitter/android/moments/data/maker/a;

    move-result-object v1

    new-instance v2, Lcom/twitter/model/moments/maker/al;

    .line 48
    invoke-virtual {p2}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sget-object v3, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    sget-object v4, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    invoke-direct {v2, v0, v3, v4}, Lcom/twitter/model/moments/maker/al;-><init>(Landroid/net/Uri;Lcom/twitter/media/model/MediaType;Lcom/twitter/util/math/Size;)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/data/maker/a;->a(Lcom/twitter/model/moments/maker/w;)V

    .line 49
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ar;->b:Lcom/twitter/android/moments/ui/maker/aq;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/aq;->a(Lcom/twitter/android/moments/ui/maker/aq;)Lcom/twitter/android/moments/data/maker/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/maker/a;->c()Lrx/w;

    move-result-object v0

    invoke-virtual {v0}, Lrx/w;->a()Lrx/ap;

    .line 50
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ar;->a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ar;->b:Lcom/twitter/android/moments/ui/maker/aq;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/aq;->b(Lcom/twitter/android/moments/ui/maker/aq;)Lcom/twitter/android/moments/ui/maker/bo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/android/moments/ui/maker/bo;->a(Laum;)V

    .line 53
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p2, Lcom/twitter/util/collection/ab;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/ar;->a(ILcom/twitter/util/collection/ab;)V

    return-void
.end method
