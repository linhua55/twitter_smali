.class Lcom/twitter/android/moments/ui/maker/l;
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
        "Ljava/util/List",
        "<",
        "Lcom/twitter/model/moments/viewmodels/m;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/j;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/j;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/l;->a:Lcom/twitter/android/moments/ui/maker/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/l;->a:Lcom/twitter/android/moments/ui/maker/j;

    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/maker/j;->a(Lcom/twitter/android/moments/ui/maker/j;Ljava/util/List;)V

    .line 105
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/l;->a(Ljava/util/List;)V

    return-void
.end method
