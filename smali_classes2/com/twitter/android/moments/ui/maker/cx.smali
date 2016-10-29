.class Lcom/twitter/android/moments/ui/maker/cx;
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
        "Lalk",
        "<+",
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/util/math/Size;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/cw;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/cw;Lcom/twitter/util/math/Size;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/cx;->b:Lcom/twitter/android/moments/ui/maker/cw;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/cx;->a:Lcom/twitter/util/math/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lalk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalk",
            "<+",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 72
    invoke-interface {p1}, Lalk;->aK_()Landroid/view/View;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/cx;->a:Lcom/twitter/util/math/Size;

    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/maker/em;->a(Landroid/view/View;Lcom/twitter/util/math/Size;)V

    .line 74
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lalk;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/cx;->a(Lalk;)V

    return-void
.end method
