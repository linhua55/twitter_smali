.class Ltv/periscope/android/ui/a;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/PermissionsActivity;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/PermissionsActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Ltv/periscope/android/ui/a;->a:Ltv/periscope/android/ui/PermissionsActivity;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ltv/periscope/android/ui/a;->a:Ltv/periscope/android/ui/PermissionsActivity;

    invoke-virtual {v0}, Ltv/periscope/android/ui/PermissionsActivity;->finish()V

    .line 64
    return-void
.end method
