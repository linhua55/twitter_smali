.class Lcom/twitter/android/av/bk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twitter/android/av/bj;


# direct methods
.method constructor <init>(Lcom/twitter/android/av/bj;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/twitter/android/av/bk;->b:Lcom/twitter/android/av/bj;

    iput-object p2, p0, Lcom/twitter/android/av/bk;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/android/av/bk;->b:Lcom/twitter/android/av/bj;

    iget-object v1, p0, Lcom/twitter/android/av/bk;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/twitter/android/av/bj;->a(Lcom/twitter/android/av/bj;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/twitter/android/av/bl;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/av/bl;-><init>(Lcom/twitter/android/av/bk;Landroid/content/Intent;)V

    .line 122
    iget-object v0, p0, Lcom/twitter/android/av/bk;->b:Lcom/twitter/android/av/bj;

    invoke-static {v0}, Lcom/twitter/android/av/bj;->c(Lcom/twitter/android/av/bj;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/bk;->b:Lcom/twitter/android/av/bj;

    invoke-static {v0}, Lcom/twitter/android/av/bj;->d(Lcom/twitter/android/av/bj;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/twitter/android/av/bk;->b:Lcom/twitter/android/av/bj;

    invoke-static {v0}, Lcom/twitter/android/av/bj;->f(Lcom/twitter/android/av/bj;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/av/bk;->b:Lcom/twitter/android/av/bj;

    invoke-static {v2}, Lcom/twitter/android/av/bj;->e(Lcom/twitter/android/av/bj;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
