.class Lcxv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcxs;


# direct methods
.method private constructor <init>(Lcxs;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcxv;->a:Lcxs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcxs;Lcxt;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcxv;-><init>(Lcxs;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcxv;->a:Lcxs;

    invoke-virtual {v0}, Lcxs;->g()Lcxu;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcxv;->a:Lcxs;

    iget-object v2, p0, Lcxv;->a:Lcxs;

    invoke-static {v2}, Lcxs;->a(Lcxs;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcxu;->a(Lcxs;Z)V

    .line 241
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 254
    iget-object v1, p0, Lcxv;->a:Lcxs;

    invoke-virtual {v1, v0}, Lcxs;->b(F)V

    .line 255
    iget-object v0, p0, Lcxv;->a:Lcxs;

    invoke-virtual {v0}, Lcxs;->invalidateSelf()V

    .line 256
    return-void
.end method
