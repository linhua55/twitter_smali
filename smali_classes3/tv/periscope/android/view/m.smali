.class Ltv/periscope/android/view/m;
.super Ltv/periscope/android/view/aa;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/view/ActionSheet;


# direct methods
.method constructor <init>(Ltv/periscope/android/view/ActionSheet;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Ltv/periscope/android/view/m;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-direct {p0, p2}, Ltv/periscope/android/view/aa;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Ltv/periscope/android/view/m;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-static {v0}, Ltv/periscope/android/view/ActionSheet;->f(Ltv/periscope/android/view/ActionSheet;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    return-void
.end method
