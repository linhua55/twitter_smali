.class Lcwa;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcvz;


# direct methods
.method constructor <init>(Lcvz;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcwa;->a:Lcvz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 151
    iget-object v1, p0, Lcwa;->a:Lcvz;

    invoke-static {v1}, Lcvz;->a(Lcvz;)Lcwb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcwa;->a:Lcvz;

    invoke-static {v1}, Lcvz;->a(Lcvz;)Lcwb;

    move-result-object v1

    invoke-interface {v1, v0}, Lcwb;->a(F)V

    .line 154
    :cond_0
    return-void
.end method
