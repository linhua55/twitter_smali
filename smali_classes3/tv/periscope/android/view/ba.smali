.class Ltv/periscope/android/view/ba;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/view/SheetImpl;


# direct methods
.method constructor <init>(Ltv/periscope/android/view/SheetImpl;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Ltv/periscope/android/view/ba;->a:Ltv/periscope/android/view/SheetImpl;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Ltv/periscope/android/view/ba;->a:Ltv/periscope/android/view/SheetImpl;

    invoke-static {v0}, Ltv/periscope/android/view/SheetImpl;->a(Ltv/periscope/android/view/SheetImpl;)Landroid/view/View;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 126
    return-void
.end method
