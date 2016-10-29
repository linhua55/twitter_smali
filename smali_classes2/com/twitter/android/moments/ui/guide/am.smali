.class Lcom/twitter/android/moments/ui/guide/am;
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
        "Lcom/twitter/model/moments/ad;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laui;

.field final synthetic b:Lcom/twitter/android/moments/ui/guide/al;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/guide/al;Laui;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/am;->b:Lcom/twitter/android/moments/ui/guide/al;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/am;->a:Laui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/twitter/util/collection/ab;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/am;->a:Laui;

    invoke-virtual {v0, p0}, Laui;->b(Laum;)V

    .line 62
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/am;->b:Lcom/twitter/android/moments/ui/guide/al;

    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ab;

    invoke-static {v1, v0}, Lcom/twitter/android/moments/ui/guide/al;->a(Lcom/twitter/android/moments/ui/guide/al;Lcom/twitter/util/collection/ab;)V

    .line 63
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p2, Lcom/twitter/util/collection/ab;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/guide/am;->a(ILcom/twitter/util/collection/ab;)V

    return-void
.end method
