.class Lcom/twitter/android/moments/ui/maker/navigation/z;
.super Lcom/twitter/util/ui/d;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/navigation/x;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/navigation/x;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/z;->a:Lcom/twitter/android/moments/ui/maker/navigation/x;

    invoke-direct {p0}, Lcom/twitter/util/ui/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/z;->a:Lcom/twitter/android/moments/ui/maker/navigation/x;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/navigation/x;->c(Lcom/twitter/android/moments/ui/maker/navigation/x;)Lrx/subjects/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/subjects/a;->b_(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/z;->a:Lcom/twitter/android/moments/ui/maker/navigation/x;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/navigation/x;->c(Lcom/twitter/android/moments/ui/maker/navigation/x;)Lrx/subjects/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subjects/a;->bt_()V

    .line 73
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/z;->a:Lcom/twitter/android/moments/ui/maker/navigation/x;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/navigation/x;->b(Lcom/twitter/android/moments/ui/maker/navigation/x;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/z;->a:Lcom/twitter/android/moments/ui/maker/navigation/x;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/navigation/x;->b(Lcom/twitter/android/moments/ui/maker/navigation/x;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 67
    return-void
.end method
