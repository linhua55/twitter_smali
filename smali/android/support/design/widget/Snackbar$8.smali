.class Landroid/support/design/widget/Snackbar$8;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$8;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$8;->this$0:Landroid/support/design/widget/Snackbar;

    # invokes: Landroid/support/design/widget/Snackbar;->onViewShown()V
    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->access$700(Landroid/support/design/widget/Snackbar;)V

    .line 549
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 552
    return-void
.end method
