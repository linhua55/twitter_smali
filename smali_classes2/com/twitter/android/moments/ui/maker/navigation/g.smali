.class public Lcom/twitter/android/moments/ui/maker/navigation/g;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/navigation/ap;Lcom/twitter/android/moments/ui/maker/navigation/ap;I)V
    .locals 2

    .prologue
    .line 65
    invoke-interface {p2}, Lcom/twitter/android/moments/ui/maker/navigation/ap;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 66
    invoke-interface {p2}, Lcom/twitter/android/moments/ui/maker/navigation/ap;->a()Landroid/view/View;

    move-result-object v0

    div-int/lit8 v1, p3, 0x2

    invoke-static {v0, v1}, Lcom/twitter/util/d;->b(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    .line 67
    invoke-interface {p1}, Lcom/twitter/android/moments/ui/maker/navigation/ap;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/twitter/util/d;->a(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    .line 68
    return-void
.end method
