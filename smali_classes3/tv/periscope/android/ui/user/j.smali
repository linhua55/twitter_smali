.class Ltv/periscope/android/ui/user/j;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/user/UserPickerSheet;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/user/UserPickerSheet;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Ltv/periscope/android/ui/user/j;->a:Ltv/periscope/android/ui/user/UserPickerSheet;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Ltv/periscope/android/ui/user/j;->a:Ltv/periscope/android/ui/user/UserPickerSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/periscope/android/ui/user/UserPickerSheet;->a(Ltv/periscope/android/ui/user/UserPickerSheet;Z)Z

    .line 120
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 111
    iget-object v0, p0, Ltv/periscope/android/ui/user/j;->a:Ltv/periscope/android/ui/user/UserPickerSheet;

    invoke-static {v0}, Ltv/periscope/android/ui/user/UserPickerSheet;->a(Ltv/periscope/android/ui/user/UserPickerSheet;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Ltv/periscope/android/util/l;->a(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Ltv/periscope/android/ui/user/j;->a:Ltv/periscope/android/ui/user/UserPickerSheet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/user/UserPickerSheet;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Ltv/periscope/android/ui/user/j;->a:Ltv/periscope/android/ui/user/UserPickerSheet;

    invoke-static {v0, v2}, Ltv/periscope/android/ui/user/UserPickerSheet;->a(Ltv/periscope/android/ui/user/UserPickerSheet;Z)Z

    .line 114
    iget-object v0, p0, Ltv/periscope/android/ui/user/j;->a:Ltv/periscope/android/ui/user/UserPickerSheet;

    invoke-static {v0, v2}, Ltv/periscope/android/ui/user/UserPickerSheet;->b(Ltv/periscope/android/ui/user/UserPickerSheet;Z)Z

    .line 115
    return-void
.end method
