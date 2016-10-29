.class Lcxc;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Lcwy;


# direct methods
.method constructor <init>(Lcwy;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcxc;->a:Lcwy;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcxc;->a:Lcwy;

    invoke-static {v0}, Lcwy;->b(Lcwy;)Lcvv;

    move-result-object v0

    invoke-virtual {v0}, Lcvv;->a()V

    .line 142
    iget-object v0, p0, Lcxc;->a:Lcwy;

    invoke-static {v0}, Lcwy;->d(Lcwy;)Lcxd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcxc;->a:Lcwy;

    invoke-static {v0}, Lcwy;->d(Lcwy;)Lcxd;

    move-result-object v0

    invoke-interface {v0}, Lcxd;->b()V

    .line 145
    :cond_0
    return-void
.end method
