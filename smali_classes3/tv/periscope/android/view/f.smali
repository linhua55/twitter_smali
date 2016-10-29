.class Ltv/periscope/android/view/f;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/view/ActionSheet;


# direct methods
.method constructor <init>(Ltv/periscope/android/view/ActionSheet;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Ltv/periscope/android/view/f;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Ltv/periscope/android/view/f;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-static {v0}, Ltv/periscope/android/view/ActionSheet;->f(Ltv/periscope/android/view/ActionSheet;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    return-void
.end method
