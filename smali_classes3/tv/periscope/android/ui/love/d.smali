.class public Ltv/periscope/android/ui/love/d;
.super Ltv/periscope/android/ui/love/b;
.source "Twttr"


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ltv/periscope/android/ui/love/HeartView;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/love/b;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ltv/periscope/android/ui/love/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/love/d;->e:Ljava/util/Set;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    sget v1, Ltv/periscope/android/library/j;->ps__heart_size_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Ltv/periscope/android/ui/love/d;->b:I

    .line 39
    sget v1, Ltv/periscope/android/library/j;->ps__heart_size_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Ltv/periscope/android/ui/love/d;->c:I

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltv/periscope/android/ui/love/d;->f:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/love/d;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ltv/periscope/android/ui/love/d;->e:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Ltv/periscope/android/ui/love/d;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ltv/periscope/android/ui/love/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic c(Ltv/periscope/android/ui/love/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ltv/periscope/android/ui/love/d;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Ltv/periscope/android/ui/love/d;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltv/periscope/android/ui/love/d;->e:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/love/HeartView;

    .line 97
    invoke-virtual {v0}, Ltv/periscope/android/ui/love/HeartView;->clearAnimation()V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/love/d;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 101
    return-void
.end method

.method public a(Ltv/periscope/android/ui/love/HeartView;Landroid/view/ViewGroup;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 45
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Ltv/periscope/android/ui/love/d;->b:I

    iget v2, p0, Ltv/periscope/android/ui/love/d;->c:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 47
    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1}, Ltv/periscope/android/ui/love/HeartView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 48
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v0, p0, Ltv/periscope/android/ui/love/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0, p1, p2, v3}, Ltv/periscope/android/ui/love/d;->a(Ljava/util/concurrent/atomic/AtomicInteger;Ltv/periscope/android/ui/love/HeartView;Landroid/view/View;I)Landroid/graphics/Path;

    move-result-object v1

    .line 51
    new-instance v0, Ltv/periscope/android/ui/love/g;

    invoke-virtual {p0}, Ltv/periscope/android/ui/love/d;->b()F

    move-result v2

    if-eqz p3, :cond_0

    const v5, 0x3fb33333    # 1.4f

    :goto_0
    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/ui/love/g;-><init>(Landroid/graphics/Path;FLandroid/view/View;Landroid/view/View;F)V

    .line 53
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 54
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 55
    new-instance v1, Ltv/periscope/android/ui/love/e;

    invoke-direct {v1, p0, p1, p2}, Ltv/periscope/android/ui/love/e;-><init>(Ltv/periscope/android/ui/love/d;Ltv/periscope/android/ui/love/HeartView;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 83
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 84
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 86
    invoke-virtual {p1, v1}, Ltv/periscope/android/ui/love/HeartView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 87
    return-void

    .line 51
    :cond_0
    const v5, 0x3f8ccccd    # 1.1f

    goto :goto_0
.end method
