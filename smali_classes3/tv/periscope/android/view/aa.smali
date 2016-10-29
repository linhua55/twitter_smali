.class public Ltv/periscope/android/view/aa;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    .line 11
    iput-object p1, p0, Ltv/periscope/android/view/aa;->a:Landroid/view/View;

    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Ltv/periscope/android/view/aa;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 17
    return-void
.end method
