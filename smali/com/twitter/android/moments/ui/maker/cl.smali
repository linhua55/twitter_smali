.class Lcom/twitter/android/moments/ui/maker/cl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Lcom/twitter/model/moments/viewmodels/a;",
        "Lcom/twitter/android/moments/data/maker/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lagw;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;Lagw;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/cl;->b:Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/cl;->a:Lagw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/a;)Lcom/twitter/android/moments/data/maker/a;
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cl;->a:Lagw;

    .line 56
    invoke-interface {v0}, Lagw;->e()Lcom/twitter/android/moments/data/maker/t;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/twitter/android/moments/data/maker/a;

    new-instance v2, Lcom/twitter/android/moments/viewmodels/k;

    invoke-direct {v2}, Lcom/twitter/android/moments/viewmodels/k;-><init>()V

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/cl;->a:Lagw;

    .line 58
    invoke-interface {v3}, Lagw;->d()Ladm;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/twitter/android/moments/data/maker/a;-><init>(Lcom/twitter/android/moments/data/maker/t;Lcom/twitter/util/object/c;Ladm;Lcom/twitter/model/moments/viewmodels/a;)V

    .line 57
    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, Lcom/twitter/model/moments/viewmodels/a;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/cl;->a(Lcom/twitter/model/moments/viewmodels/a;)Lcom/twitter/android/moments/data/maker/a;

    move-result-object v0

    return-object v0
.end method
