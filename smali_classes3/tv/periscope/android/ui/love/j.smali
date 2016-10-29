.class Ltv/periscope/android/ui/love/j;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/love/HeartView;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Ltv/periscope/android/ui/love/h;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/love/h;Ltv/periscope/android/ui/love/HeartView;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Ltv/periscope/android/ui/love/j;->c:Ltv/periscope/android/ui/love/h;

    iput-object p2, p0, Ltv/periscope/android/ui/love/j;->a:Ltv/periscope/android/ui/love/HeartView;

    iput-object p3, p0, Ltv/periscope/android/ui/love/j;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Ltv/periscope/android/ui/love/j;->c:Ltv/periscope/android/ui/love/h;

    invoke-static {v0}, Ltv/periscope/android/ui/love/h;->c(Ltv/periscope/android/ui/love/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ltv/periscope/android/ui/love/k;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/love/k;-><init>(Ltv/periscope/android/ui/love/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    iget-object v0, p0, Ltv/periscope/android/ui/love/j;->c:Ltv/periscope/android/ui/love/h;

    invoke-static {v0}, Ltv/periscope/android/ui/love/h;->b(Ltv/periscope/android/ui/love/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 90
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Ltv/periscope/android/ui/love/j;->c:Ltv/periscope/android/ui/love/h;

    invoke-static {v0}, Ltv/periscope/android/ui/love/h;->b(Ltv/periscope/android/ui/love/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 72
    iget-object v0, p0, Ltv/periscope/android/ui/love/j;->c:Ltv/periscope/android/ui/love/h;

    iget-object v0, v0, Ltv/periscope/android/ui/love/h;->a:Ltv/periscope/android/ui/love/c;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Ltv/periscope/android/ui/love/j;->c:Ltv/periscope/android/ui/love/h;

    iget-object v0, v0, Ltv/periscope/android/ui/love/h;->a:Ltv/periscope/android/ui/love/c;

    iget-object v1, p0, Ltv/periscope/android/ui/love/j;->a:Ltv/periscope/android/ui/love/HeartView;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/love/c;->a(Ltv/periscope/android/ui/love/HeartView;)V

    .line 75
    :cond_0
    return-void
.end method
