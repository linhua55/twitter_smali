.class public Ltv/periscope/android/view/PulseAnimationView;
.super Landroid/widget/FrameLayout;
.source "Twttr"


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Ltv/periscope/android/view/PulseAnimationView;->a()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Ltv/periscope/android/view/PulseAnimationView;->a()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Ltv/periscope/android/view/PulseAnimationView;->a()V

    .line 39
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x9c4

    const/16 v3, 0x8

    const/4 v2, -0x1

    .line 42
    invoke-virtual {p0, v3}, Ltv/periscope/android/view/PulseAnimationView;->setVisibility(I)V

    .line 43
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Ltv/periscope/android/view/PulseAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->c:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->c:Landroid/widget/ImageView;

    sget v1, Ltv/periscope/android/library/k;->ps__location_pulse:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    iget-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/PulseAnimationView;->addView(Landroid/view/View;)V

    .line 46
    new-instance v0, Ltv/periscope/android/view/at;

    iget-object v1, p0, Ltv/periscope/android/view/PulseAnimationView;->c:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Ltv/periscope/android/view/at;-><init>(Ltv/periscope/android/view/PulseAnimationView;Landroid/view/View;)V

    iput-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->a:Landroid/view/animation/Animation;

    .line 47
    iget-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    iget-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 49
    iget-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 51
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Ltv/periscope/android/view/PulseAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->d:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->d:Landroid/widget/ImageView;

    sget v1, Ltv/periscope/android/library/k;->ps__location_pulse:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/PulseAnimationView;->addView(Landroid/view/View;)V

    .line 55
    new-instance v0, Ltv/periscope/android/view/at;

    iget-object v1, p0, Ltv/periscope/android/view/PulseAnimationView;->d:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Ltv/periscope/android/view/at;-><init>(Ltv/periscope/android/view/PulseAnimationView;Landroid/view/View;)V

    iput-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->b:Landroid/view/animation/Animation;

    .line 56
    iget-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 57
    iget-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 58
    iget-object v0, p0, Ltv/periscope/android/view/PulseAnimationView;->b:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 59
    return-void
.end method
