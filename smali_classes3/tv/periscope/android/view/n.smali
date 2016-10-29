.class Ltv/periscope/android/view/n;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/view/ActionSheet;


# direct methods
.method constructor <init>(Ltv/periscope/android/view/ActionSheet;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Ltv/periscope/android/view/n;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Ltv/periscope/android/view/n;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-static {v0}, Ltv/periscope/android/view/ActionSheet;->b(Ltv/periscope/android/view/ActionSheet;)Ltv/periscope/android/view/CarouselView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/periscope/android/view/CarouselView;->a(Z)V

    .line 412
    return-void
.end method
