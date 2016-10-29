.class Ltv/periscope/android/ui/chat/w;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/chat/u;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/chat/u;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Ltv/periscope/android/ui/chat/w;->a:Ltv/periscope/android/ui/chat/u;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Ltv/periscope/android/ui/chat/w;->a:Ltv/periscope/android/ui/chat/u;

    invoke-static {v0}, Ltv/periscope/android/ui/chat/u;->a(Ltv/periscope/android/ui/chat/u;)Ltv/periscope/android/ui/chat/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/chat/w;->a:Ltv/periscope/android/ui/chat/u;

    invoke-static {v0}, Ltv/periscope/android/ui/chat/u;->b(Ltv/periscope/android/ui/chat/u;)Ltv/periscope/android/ui/chat/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Ltv/periscope/android/ui/chat/w;->a:Ltv/periscope/android/ui/chat/u;

    invoke-static {v0}, Ltv/periscope/android/ui/chat/u;->a(Ltv/periscope/android/ui/chat/u;)Ltv/periscope/android/ui/chat/x;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/chat/w;->a:Ltv/periscope/android/ui/chat/u;

    invoke-static {v1}, Ltv/periscope/android/ui/chat/u;->b(Ltv/periscope/android/ui/chat/u;)Ltv/periscope/android/ui/chat/j;

    move-result-object v1

    iget-object v1, v1, Ltv/periscope/android/ui/chat/j;->a:Ltv/periscope/model/chat/Message;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/chat/x;->b(Ltv/periscope/model/chat/Message;)V

    .line 94
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/chat/w;->a:Ltv/periscope/android/ui/chat/u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltv/periscope/android/ui/chat/u;->a(Ltv/periscope/android/ui/chat/u;Z)Z

    .line 95
    iget-object v0, p0, Ltv/periscope/android/ui/chat/w;->a:Ltv/periscope/android/ui/chat/u;

    invoke-static {v0, v2}, Ltv/periscope/android/ui/chat/u;->a(Ltv/periscope/android/ui/chat/u;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 96
    iget-object v0, p0, Ltv/periscope/android/ui/chat/w;->a:Ltv/periscope/android/ui/chat/u;

    invoke-static {v0, v2}, Ltv/periscope/android/ui/chat/u;->a(Ltv/periscope/android/ui/chat/u;Ltv/periscope/android/ui/chat/j;)Ltv/periscope/android/ui/chat/j;

    .line 97
    iget-object v0, p0, Ltv/periscope/android/ui/chat/w;->a:Ltv/periscope/android/ui/chat/u;

    invoke-static {v0}, Ltv/periscope/android/ui/chat/u;->c(Ltv/periscope/android/ui/chat/u;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Ltv/periscope/android/ui/chat/w;->a:Ltv/periscope/android/ui/chat/u;

    invoke-static {v0}, Ltv/periscope/android/ui/chat/u;->c(Ltv/periscope/android/ui/chat/u;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 99
    iget-object v0, p0, Ltv/periscope/android/ui/chat/w;->a:Ltv/periscope/android/ui/chat/u;

    invoke-static {v0, v2}, Ltv/periscope/android/ui/chat/u;->a(Ltv/periscope/android/ui/chat/u;Landroid/view/View;)Landroid/view/View;

    .line 101
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/chat/w;->a:Ltv/periscope/android/ui/chat/u;

    invoke-static {v0, v2}, Ltv/periscope/android/ui/chat/u;->a(Ltv/periscope/android/ui/chat/u;Ltv/periscope/android/ui/chat/x;)Ltv/periscope/android/ui/chat/x;

    .line 102
    return-void
.end method
