.class Lcom/twitter/android/moments/ui/fullscreen/bb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/ax;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ax;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/bb;->a:Lcom/twitter/android/moments/ui/fullscreen/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bb;->a:Lcom/twitter/android/moments/ui/fullscreen/ax;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/ax;->c(Lcom/twitter/android/moments/ui/fullscreen/ax;)Lcom/twitter/android/moments/ui/fullscreen/bc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bb;->a:Lcom/twitter/android/moments/ui/fullscreen/ax;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/ax;->c(Lcom/twitter/android/moments/ui/fullscreen/ax;)Lcom/twitter/android/moments/ui/fullscreen/bc;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/bc;->a()V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bb;->a:Lcom/twitter/android/moments/ui/fullscreen/ax;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/ax;->d(Lcom/twitter/android/moments/ui/fullscreen/ax;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 324
    return-void
.end method
