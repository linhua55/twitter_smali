.class Lcom/twitter/android/moments/ui/maker/b;
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/a;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/a;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/b;->a:Lcom/twitter/android/moments/ui/maker/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/b;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/b;->a:Lcom/twitter/android/moments/ui/maker/a;

    invoke-virtual {v0, p2}, Lcom/twitter/android/moments/ui/maker/a;->a(Ljava/util/List;)V

    .line 57
    return-void
.end method
