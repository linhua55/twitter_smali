.class Ltv/periscope/android/view/l;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:I

.field final synthetic b:Ltv/periscope/android/view/ActionSheet;


# direct methods
.method constructor <init>(Ltv/periscope/android/view/ActionSheet;I)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Ltv/periscope/android/view/l;->b:Ltv/periscope/android/view/ActionSheet;

    iput p2, p0, Ltv/periscope/android/view/l;->a:I

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Ltv/periscope/android/view/l;->b:Ltv/periscope/android/view/ActionSheet;

    invoke-static {v0}, Ltv/periscope/android/view/ActionSheet;->b(Ltv/periscope/android/view/ActionSheet;)Ltv/periscope/android/view/CarouselView;

    move-result-object v0

    iget v1, p0, Ltv/periscope/android/view/l;->a:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/view/CarouselView;->setTranslationY(F)V

    .line 396
    return-void
.end method
