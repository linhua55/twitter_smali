.class Ltv/periscope/android/view/ay;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/view/SheetImpl;


# direct methods
.method constructor <init>(Ltv/periscope/android/view/SheetImpl;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Ltv/periscope/android/view/ay;->a:Ltv/periscope/android/view/SheetImpl;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Ltv/periscope/android/view/ay;->a:Ltv/periscope/android/view/SheetImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/periscope/android/view/SheetImpl;->a(Ltv/periscope/android/view/SheetImpl;Z)Z

    .line 74
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    iget-object v0, p0, Ltv/periscope/android/view/ay;->a:Ltv/periscope/android/view/SheetImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/periscope/android/view/SheetImpl;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Ltv/periscope/android/view/ay;->a:Ltv/periscope/android/view/SheetImpl;

    invoke-static {v0, v2}, Ltv/periscope/android/view/SheetImpl;->a(Ltv/periscope/android/view/SheetImpl;Z)Z

    .line 68
    iget-object v0, p0, Ltv/periscope/android/view/ay;->a:Ltv/periscope/android/view/SheetImpl;

    invoke-static {v0, v2}, Ltv/periscope/android/view/SheetImpl;->b(Ltv/periscope/android/view/SheetImpl;Z)Z

    .line 69
    return-void
.end method
