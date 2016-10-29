.class Ltv/periscope/android/ui/love/e;
.super Ltv/periscope/android/view/al;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/love/HeartView;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Ltv/periscope/android/ui/love/d;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/love/d;Ltv/periscope/android/ui/love/HeartView;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Ltv/periscope/android/ui/love/e;->c:Ltv/periscope/android/ui/love/d;

    iput-object p2, p0, Ltv/periscope/android/ui/love/e;->a:Ltv/periscope/android/ui/love/HeartView;

    iput-object p3, p0, Ltv/periscope/android/ui/love/e;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ltv/periscope/android/view/al;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Ltv/periscope/android/ui/love/e;->c:Ltv/periscope/android/ui/love/d;

    invoke-static {v0}, Ltv/periscope/android/ui/love/d;->a(Ltv/periscope/android/ui/love/d;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/love/e;->a:Ltv/periscope/android/ui/love/HeartView;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Ltv/periscope/android/ui/love/e;->c:Ltv/periscope/android/ui/love/d;

    invoke-static {v0}, Ltv/periscope/android/ui/love/d;->c(Ltv/periscope/android/ui/love/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ltv/periscope/android/ui/love/f;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/love/f;-><init>(Ltv/periscope/android/ui/love/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    iget-object v0, p0, Ltv/periscope/android/ui/love/e;->c:Ltv/periscope/android/ui/love/d;

    invoke-static {v0}, Ltv/periscope/android/ui/love/d;->b(Ltv/periscope/android/ui/love/d;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 79
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Ltv/periscope/android/ui/love/e;->c:Ltv/periscope/android/ui/love/d;

    invoke-static {v0}, Ltv/periscope/android/ui/love/d;->a(Ltv/periscope/android/ui/love/d;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/love/e;->a:Ltv/periscope/android/ui/love/HeartView;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Ltv/periscope/android/ui/love/e;->c:Ltv/periscope/android/ui/love/d;

    invoke-static {v0}, Ltv/periscope/android/ui/love/d;->b(Ltv/periscope/android/ui/love/d;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 60
    iget-object v0, p0, Ltv/periscope/android/ui/love/e;->c:Ltv/periscope/android/ui/love/d;

    iget-object v0, v0, Ltv/periscope/android/ui/love/d;->a:Ltv/periscope/android/ui/love/c;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Ltv/periscope/android/ui/love/e;->c:Ltv/periscope/android/ui/love/d;

    iget-object v0, v0, Ltv/periscope/android/ui/love/d;->a:Ltv/periscope/android/ui/love/c;

    iget-object v1, p0, Ltv/periscope/android/ui/love/e;->a:Ltv/periscope/android/ui/love/HeartView;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/love/c;->a(Ltv/periscope/android/ui/love/HeartView;)V

    .line 63
    :cond_0
    return-void
.end method
