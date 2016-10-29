.class Ltv/periscope/android/ui/user/k;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/user/UserPickerSheet;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/user/UserPickerSheet;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Ltv/periscope/android/ui/user/k;->a:Ltv/periscope/android/ui/user/UserPickerSheet;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Ltv/periscope/android/ui/user/k;->a:Ltv/periscope/android/ui/user/UserPickerSheet;

    invoke-static {v0, v1}, Ltv/periscope/android/ui/user/UserPickerSheet;->a(Ltv/periscope/android/ui/user/UserPickerSheet;Z)Z

    .line 132
    iget-object v0, p0, Ltv/periscope/android/ui/user/k;->a:Ltv/periscope/android/ui/user/UserPickerSheet;

    invoke-static {v0, v1}, Ltv/periscope/android/ui/user/UserPickerSheet;->b(Ltv/periscope/android/ui/user/UserPickerSheet;Z)Z

    .line 133
    iget-object v0, p0, Ltv/periscope/android/ui/user/k;->a:Ltv/periscope/android/ui/user/UserPickerSheet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/user/UserPickerSheet;->setVisibility(I)V

    .line 134
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Ltv/periscope/android/ui/user/k;->a:Ltv/periscope/android/ui/user/UserPickerSheet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltv/periscope/android/ui/user/UserPickerSheet;->a(Ltv/periscope/android/ui/user/UserPickerSheet;Z)Z

    .line 127
    return-void
.end method
