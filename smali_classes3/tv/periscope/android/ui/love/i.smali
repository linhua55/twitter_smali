.class Ltv/periscope/android/ui/love/i;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/love/h;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/love/h;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Ltv/periscope/android/ui/love/i;->a:Ltv/periscope/android/ui/love/h;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltv/periscope/android/ui/love/i;->a:Ltv/periscope/android/ui/love/h;

    invoke-static {v0}, Ltv/periscope/android/ui/love/h;->a(Ltv/periscope/android/ui/love/h;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ltv/periscope/android/ui/love/i;->a:Ltv/periscope/android/ui/love/h;

    invoke-static {v0}, Ltv/periscope/android/ui/love/h;->a(Ltv/periscope/android/ui/love/h;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method
