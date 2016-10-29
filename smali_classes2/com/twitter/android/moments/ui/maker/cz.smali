.class Lcom/twitter/android/moments/ui/maker/cz;
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
        "Lalk",
        "<+",
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        ">;",
        "Lrx/o",
        "<+",
        "Lalk",
        "<+",
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/cw;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/cw;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/cz;->a:Lcom/twitter/android/moments/ui/maker/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    check-cast p1, Lalk;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/cz;->a(Lalk;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lalk;)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalk",
            "<+",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;)",
            "Lrx/o",
            "<+",
            "Lalk",
            "<+",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 112
    invoke-interface {p1}, Lalk;->aX_()Lrx/w;

    move-result-object v0

    invoke-virtual {v0}, Lrx/w;->b()Lrx/o;

    move-result-object v0

    return-object v0
.end method
