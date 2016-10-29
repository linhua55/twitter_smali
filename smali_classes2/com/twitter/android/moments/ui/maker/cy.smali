.class Lcom/twitter/android/moments/ui/maker/cy;
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
        "Ljava/util/List",
        "<",
        "Lalk",
        "<+",
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        ">;>;",
        "Lcom/twitter/android/moments/ui/maker/bl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/cw;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/cw;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/cy;->a:Lcom/twitter/android/moments/ui/maker/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/twitter/android/moments/ui/maker/bl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lalk",
            "<+",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;>;)",
            "Lcom/twitter/android/moments/ui/maker/bl;"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 87
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 88
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cy;->a:Lcom/twitter/android/moments/ui/maker/cw;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/cw;->a(Lcom/twitter/android/moments/ui/maker/cw;)Lcom/twitter/util/object/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/util/object/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lalk;

    .line 90
    invoke-interface {v1}, Lalk;->aK_()Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 93
    :cond_0
    new-instance v1, Lcom/twitter/android/moments/ui/maker/bl;

    invoke-direct {v1, v0, p1}, Lcom/twitter/android/moments/ui/maker/bl;-><init>(Landroid/view/View;Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/cy;->a(Ljava/util/List;)Lcom/twitter/android/moments/ui/maker/bl;

    move-result-object v0

    return-object v0
.end method
