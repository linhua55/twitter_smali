.class Ltv/periscope/android/view/aq;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/view/PsLoading;


# direct methods
.method constructor <init>(Ltv/periscope/android/view/PsLoading;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Ltv/periscope/android/view/aq;->a:Ltv/periscope/android/view/PsLoading;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ltv/periscope/android/view/aq;->a:Ltv/periscope/android/view/PsLoading;

    invoke-static {v0}, Ltv/periscope/android/view/PsLoading;->c(Ltv/periscope/android/view/PsLoading;)V

    .line 123
    return-void
.end method
