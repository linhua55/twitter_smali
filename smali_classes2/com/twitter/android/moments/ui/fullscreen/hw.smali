.class Lcom/twitter/android/moments/ui/fullscreen/hw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lajt;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/hv;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/hv;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lali;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hv;->c(Lcom/twitter/android/moments/ui/fullscreen/hv;)Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hv;->c(Lcom/twitter/android/moments/ui/fullscreen/hv;)Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/hx;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hx;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hw;Lali;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hv;->a(Lcom/twitter/android/moments/ui/fullscreen/hv;Lali;)V

    goto :goto_0
.end method

.method public a(Lali;I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-static {v0, p2}, Lcom/twitter/android/moments/ui/fullscreen/hv;->a(Lcom/twitter/android/moments/ui/fullscreen/hv;I)I

    .line 80
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hv;->a(Lcom/twitter/android/moments/ui/fullscreen/hv;Lali;)V

    .line 81
    return-void
.end method

.method public a(Lali;Lcom/twitter/util/math/Size;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-virtual {p2}, Lcom/twitter/util/math/Size;->g()F

    move-result v1

    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/hv;->a(Lcom/twitter/android/moments/ui/fullscreen/hv;F)F

    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hv;->b(Lcom/twitter/android/moments/ui/fullscreen/hv;)Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/hv;->a(Lcom/twitter/android/moments/ui/fullscreen/hv;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 42
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hv;->a(Lcom/twitter/android/moments/ui/fullscreen/hv;Lali;)V

    .line 43
    return-void
.end method

.method public a(Lali;Z)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-static {v0, p2}, Lcom/twitter/android/moments/ui/fullscreen/hv;->a(Lcom/twitter/android/moments/ui/fullscreen/hv;Z)Z

    .line 68
    if-eqz p2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hv;->c(Lcom/twitter/android/moments/ui/fullscreen/hv;)Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/hv;->a(Lcom/twitter/android/moments/ui/fullscreen/hv;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;->setAspectRatio(F)V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hv;->a(Lcom/twitter/android/moments/ui/fullscreen/hv;Lali;)V

    .line 74
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hw;->a:Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hv;->c(Lcom/twitter/android/moments/ui/fullscreen/hv;)Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;->a()V

    goto :goto_0
.end method
