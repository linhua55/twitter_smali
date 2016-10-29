.class Lcom/twitter/android/moments/ui/fullscreen/dp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/dn;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/dn;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/dp;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 80
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dp;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/twitter/android/moments/ui/fullscreen/dn;->a(Lcom/twitter/android/moments/ui/fullscreen/dn;I)V

    .line 81
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dp;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/dn;->b(Lcom/twitter/android/moments/ui/fullscreen/dn;)Lcom/twitter/android/moments/ui/fullscreen/Event;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/moments/ui/fullscreen/Event;->a(F)V

    .line 82
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dp;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/dn;->c(Lcom/twitter/android/moments/ui/fullscreen/dn;)Lcom/twitter/util/x;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/dp;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-static {v2}, Lcom/twitter/android/moments/ui/fullscreen/dn;->b(Lcom/twitter/android/moments/ui/fullscreen/dn;)Lcom/twitter/android/moments/ui/fullscreen/Event;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/util/x;->a(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dp;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/dp;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-static {v2}, Lcom/twitter/android/moments/ui/fullscreen/dn;->d(Lcom/twitter/android/moments/ui/fullscreen/dn;)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/twitter/android/moments/ui/fullscreen/dn;->a(Lcom/twitter/android/moments/ui/fullscreen/dn;F)F

    .line 84
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/dp;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dp;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/dn;->d(Lcom/twitter/android/moments/ui/fullscreen/dn;)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/twitter/android/moments/ui/fullscreen/dn;->a(Lcom/twitter/android/moments/ui/fullscreen/dn;Z)Z

    .line 85
    return v1

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dp;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/dn;->e(Lcom/twitter/android/moments/ui/fullscreen/dn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dp;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/dn;->a(Lcom/twitter/android/moments/ui/fullscreen/dn;)Lcom/twitter/android/moments/ui/fullscreen/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cj;->a()V

    .line 94
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dp;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/dn;->g(Lcom/twitter/android/moments/ui/fullscreen/dn;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/dp;->a:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/dn;->f(Lcom/twitter/android/moments/ui/fullscreen/dn;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method
