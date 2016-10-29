.class Lcxb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcvw;


# instance fields
.field final synthetic a:Lcwy;


# direct methods
.method constructor <init>(Lcwy;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcxb;->a:Lcwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcxb;->a:Lcwy;

    invoke-static {v0, v1}, Lcwy;->a(Lcwy;Z)Z

    .line 80
    iget-object v0, p0, Lcxb;->a:Lcwy;

    invoke-static {v0}, Lcwy;->c(Lcwy;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcxb;->a:Lcwy;

    invoke-static {v0}, Lcwy;->d(Lcwy;)Lcxd;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcxb;->a:Lcwy;

    invoke-static {v0}, Lcwy;->d(Lcwy;)Lcxd;

    move-result-object v0

    invoke-interface {v0}, Lcxd;->a()V

    .line 84
    iget-object v0, p0, Lcxb;->a:Lcwy;

    invoke-static {v0}, Lcwy;->e(Lcwy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcxb;->a:Lcwy;

    invoke-virtual {v0}, Lcwy;->b()V

    .line 86
    iget-object v0, p0, Lcxb;->a:Lcwy;

    invoke-static {v0, v1}, Lcwy;->b(Lcwy;Z)Z

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcxb;->a:Lcwy;

    invoke-static {v0}, Lcwy;->g(Lcwy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcxb;->a:Lcwy;

    invoke-static {v1}, Lcwy;->f(Lcwy;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcxb;->a:Lcwy;

    invoke-virtual {v0}, Lcwy;->b()V

    goto :goto_0
.end method
