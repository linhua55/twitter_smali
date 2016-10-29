.class Lcom/twitter/android/moments/ui/maker/da;
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
        "Lcom/twitter/android/moments/ui/maker/el;",
        "Lrx/o",
        "<",
        "Lalk",
        "<+",
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/viewmodels/MomentPage;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/cw;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/cw;Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/da;->b:Lcom/twitter/android/moments/ui/maker/cw;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/da;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    check-cast p1, Lcom/twitter/android/moments/ui/maker/el;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/da;->a(Lcom/twitter/android/moments/ui/maker/el;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/android/moments/ui/maker/el;)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/el;",
            ")",
            "Lrx/o",
            "<",
            "Lalk",
            "<+",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 130
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/da;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-interface {p1, v0}, Lcom/twitter/android/moments/ui/maker/el;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/o;->a(Ljava/lang/Iterable;)Lrx/o;

    move-result-object v0

    return-object v0
.end method
