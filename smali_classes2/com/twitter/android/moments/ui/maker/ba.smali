.class Lcom/twitter/android/moments/ui/maker/ba;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/moments/ad;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/az;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/az;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ba;->a:Lcom/twitter/android/moments/ui/maker/az;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/collection/ab;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ba;->a:Lcom/twitter/android/moments/ui/maker/az;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/az;->a(Lcom/twitter/android/moments/ui/maker/az;)Laue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Laue;->a(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcom/twitter/util/collection/ab;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/ba;->a(Lcom/twitter/util/collection/ab;)V

    return-void
.end method
