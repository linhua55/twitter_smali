.class Lcom/twitter/android/moments/ui/maker/c;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/model/moments/viewmodels/m;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/a;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/a;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/c;->b:Lcom/twitter/android/moments/ui/maker/a;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/c;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/c;->b:Lcom/twitter/android/moments/ui/maker/a;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/c;->a:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/twitter/android/moments/ui/maker/a;->a(Lcom/twitter/android/moments/ui/maker/a;Ljava/util/List;Ljava/util/Map;)V

    .line 85
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/c;->a(Ljava/util/Map;)V

    return-void
.end method
