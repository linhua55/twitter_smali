.class public Ltv/periscope/android/view/ab;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    .line 13
    iput-object p1, p0, Ltv/periscope/android/view/ab;->a:Landroid/view/View;

    .line 14
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Ltv/periscope/android/view/ab;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 20
    return-void
.end method
