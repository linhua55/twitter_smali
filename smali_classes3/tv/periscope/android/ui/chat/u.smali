.class Ltv/periscope/android/ui/chat/u;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/view/View;

.field private b:Ltv/periscope/android/ui/chat/j;

.field private c:Ltv/periscope/android/ui/chat/x;

.field private d:Landroid/animation/ValueAnimator;

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/chat/j;Ltv/periscope/android/ui/chat/x;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ltv/periscope/android/ui/chat/u;->a:Landroid/view/View;

    .line 39
    iput-object p2, p0, Ltv/periscope/android/ui/chat/u;->b:Ltv/periscope/android/ui/chat/j;

    .line 40
    iput-object p3, p0, Ltv/periscope/android/ui/chat/u;->c:Ltv/periscope/android/ui/chat/x;

    .line 41
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/chat/u;->a(Landroid/view/View;Ltv/periscope/android/ui/chat/j;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    .line 42
    return-void
.end method

.method private a(Landroid/view/View;Ltv/periscope/android/ui/chat/j;)Landroid/animation/ValueAnimator;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 76
    new-array v0, v4, [F

    const/4 v1, 0x0

    invoke-virtual {p2}, Ltv/periscope/android/ui/chat/j;->a()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 77
    invoke-virtual {p2}, Ltv/periscope/android/ui/chat/j;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    new-instance v1, Ltv/periscope/android/ui/chat/v;

    invoke-direct {v1, p0, p2, p1}, Ltv/periscope/android/ui/chat/v;-><init>(Ltv/periscope/android/ui/chat/u;Ltv/periscope/android/ui/chat/j;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 88
    new-instance v1, Ltv/periscope/android/ui/chat/w;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/chat/w;-><init>(Ltv/periscope/android/ui/chat/u;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p1, v4, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 105
    return-object v0
.end method

.method static synthetic a(Ltv/periscope/android/ui/chat/u;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic a(Ltv/periscope/android/ui/chat/u;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Ltv/periscope/android/ui/chat/u;->a:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Ltv/periscope/android/ui/chat/u;Ltv/periscope/android/ui/chat/j;)Ltv/periscope/android/ui/chat/j;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Ltv/periscope/android/ui/chat/u;->b:Ltv/periscope/android/ui/chat/j;

    return-object p1
.end method

.method static synthetic a(Ltv/periscope/android/ui/chat/u;)Ltv/periscope/android/ui/chat/x;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ltv/periscope/android/ui/chat/u;->c:Ltv/periscope/android/ui/chat/x;

    return-object v0
.end method

.method static synthetic a(Ltv/periscope/android/ui/chat/u;Ltv/periscope/android/ui/chat/x;)Ltv/periscope/android/ui/chat/x;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Ltv/periscope/android/ui/chat/u;->c:Ltv/periscope/android/ui/chat/x;

    return-object p1
.end method

.method static synthetic a(Ltv/periscope/android/ui/chat/u;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Ltv/periscope/android/ui/chat/u;->e:Z

    return p1
.end method

.method static synthetic b(Ltv/periscope/android/ui/chat/u;)Ltv/periscope/android/ui/chat/j;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ltv/periscope/android/ui/chat/u;->b:Ltv/periscope/android/ui/chat/j;

    return-object v0
.end method

.method static synthetic c(Ltv/periscope/android/ui/chat/u;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ltv/periscope/android/ui/chat/u;->a:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-boolean v0, p0, Ltv/periscope/android/ui/chat/u;->f:Z

    if-eqz v0, :cond_1

    .line 113
    long-to-float v1, p1

    iget-object v0, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 114
    iget-object v2, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 115
    iget-object v2, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 116
    iget-object v2, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 118
    iget-object v2, p0, Ltv/periscope/android/ui/chat/u;->b:Ltv/periscope/android/ui/chat/j;

    invoke-virtual {v2, v0, v1}, Ltv/periscope/android/ui/chat/j;->a(J)V

    .line 119
    iget-object v0, p0, Ltv/periscope/android/ui/chat/u;->a:Landroid/view/View;

    iget-object v1, p0, Ltv/periscope/android/ui/chat/u;->b:Ltv/periscope/android/ui/chat/j;

    invoke-direct {p0, v0, v1}, Ltv/periscope/android/ui/chat/u;->a(Landroid/view/View;Ltv/periscope/android/ui/chat/j;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    .line 120
    iget-object v0, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Ltv/periscope/android/ui/chat/u;->e:Z

    return v0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 54
    iget-boolean v1, p0, Ltv/periscope/android/ui/chat/u;->f:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 56
    iput-boolean v0, p0, Ltv/periscope/android/ui/chat/u;->f:Z

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 67
    :cond_0
    iput-object v2, p0, Ltv/periscope/android/ui/chat/u;->d:Landroid/animation/ValueAnimator;

    .line 68
    iget-object v0, p0, Ltv/periscope/android/ui/chat/u;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Ltv/periscope/android/ui/chat/u;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 70
    iput-object v2, p0, Ltv/periscope/android/ui/chat/u;->a:Landroid/view/View;

    .line 72
    :cond_1
    iput-object v2, p0, Ltv/periscope/android/ui/chat/u;->b:Ltv/periscope/android/ui/chat/j;

    .line 73
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0}, Ltv/periscope/android/ui/chat/u;->b()Z

    .line 47
    return-void
.end method
