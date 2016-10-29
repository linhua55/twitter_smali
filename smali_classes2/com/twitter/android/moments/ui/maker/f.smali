.class Lcom/twitter/android/moments/ui/maker/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/model/moments/viewmodels/m;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/e;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/e;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/f;->a:Lcom/twitter/android/moments/ui/maker/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/f;->a:Lcom/twitter/android/moments/ui/maker/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/maker/e;->a(Lcom/twitter/android/moments/ui/maker/e;Z)V

    .line 51
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/f;->a(Ljava/util/Map$Entry;)V

    return-void
.end method
