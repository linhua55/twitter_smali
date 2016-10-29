.class Ltv/periscope/android/view/i;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/view/ActionSheet;


# direct methods
.method constructor <init>(Ltv/periscope/android/view/ActionSheet;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Ltv/periscope/android/view/i;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Ltv/periscope/android/view/i;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-static {v0}, Ltv/periscope/android/view/ActionSheet;->c(Ltv/periscope/android/view/ActionSheet;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/view/i;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-static {v1}, Ltv/periscope/android/view/ActionSheet;->d(Ltv/periscope/android/view/ActionSheet;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 364
    iget-object v0, p0, Ltv/periscope/android/view/i;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-static {v0}, Ltv/periscope/android/view/ActionSheet;->c(Ltv/periscope/android/view/ActionSheet;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 365
    return-void
.end method
