.class Lcom/twitter/android/av/ad;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/av/AutoPlayViewCountChromeView;


# direct methods
.method constructor <init>(Lcom/twitter/android/av/AutoPlayViewCountChromeView;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/twitter/android/av/ad;->a:Lcom/twitter/android/av/AutoPlayViewCountChromeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/android/av/ad;->a:Lcom/twitter/android/av/AutoPlayViewCountChromeView;

    iget-object v0, v0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/ad;->a:Lcom/twitter/android/av/AutoPlayViewCountChromeView;

    iget-object v0, v0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->e:Lcom/twitter/android/av/ViewCountBadgeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/ad;->a:Lcom/twitter/android/av/AutoPlayViewCountChromeView;

    iget-object v0, v0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/twitter/android/av/ad;->a:Lcom/twitter/android/av/AutoPlayViewCountChromeView;

    iget-object v0, v0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/twitter/android/av/ad;->a:Lcom/twitter/android/av/AutoPlayViewCountChromeView;

    iget-object v1, v0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->e:Lcom/twitter/android/av/ViewCountBadgeView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/twitter/android/av/ad;->a:Lcom/twitter/android/av/AutoPlayViewCountChromeView;

    iget v2, v2, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->g:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/av/ViewCountBadgeView;->setX(F)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/ad;->a:Lcom/twitter/android/av/AutoPlayViewCountChromeView;

    iget-object v0, v0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->e:Lcom/twitter/android/av/ViewCountBadgeView;

    iget-object v1, p0, Lcom/twitter/android/av/ad;->a:Lcom/twitter/android/av/AutoPlayViewCountChromeView;

    iget-object v1, v1, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/av/ad;->a:Lcom/twitter/android/av/AutoPlayViewCountChromeView;

    iget v2, v2, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->g:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/ViewCountBadgeView;->setX(F)V

    goto :goto_0
.end method
