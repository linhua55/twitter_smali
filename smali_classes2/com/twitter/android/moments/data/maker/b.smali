.class Lcom/twitter/android/moments/data/maker/b;
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
        "Lcom/twitter/util/collection/ar",
        "<",
        "Lcom/twitter/model/moments/viewmodels/d;",
        "Lcom/twitter/model/moments/d;",
        ">;",
        "Lcom/twitter/model/moments/viewmodels/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/data/maker/a;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/maker/a;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/b;->a:Lcom/twitter/android/moments/data/maker/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/collection/ar;)Lcom/twitter/model/moments/viewmodels/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;)",
            "Lcom/twitter/model/moments/viewmodels/a;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/b;->a:Lcom/twitter/android/moments/data/maker/a;

    invoke-static {v0}, Lcom/twitter/android/moments/data/maker/a;->a(Lcom/twitter/android/moments/data/maker/a;)Lcom/twitter/android/moments/viewmodels/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/util/collection/ar;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/d;

    iget-object v0, v0, Lcom/twitter/model/moments/viewmodels/d;->a:Lcom/twitter/model/moments/viewmodels/a;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/model/moments/viewmodels/a;)V

    .line 62
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/b;->a:Lcom/twitter/android/moments/data/maker/a;

    invoke-static {v0}, Lcom/twitter/android/moments/data/maker/a;->a(Lcom/twitter/android/moments/data/maker/a;)Lcom/twitter/android/moments/viewmodels/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/viewmodels/b;->a()Lcom/twitter/model/moments/viewmodels/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    check-cast p1, Lcom/twitter/util/collection/ar;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/maker/b;->a(Lcom/twitter/util/collection/ar;)Lcom/twitter/model/moments/viewmodels/a;

    move-result-object v0

    return-object v0
.end method
