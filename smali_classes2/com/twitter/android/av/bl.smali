.class Lcom/twitter/android/av/bl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/twitter/android/av/bk;


# direct methods
.method constructor <init>(Lcom/twitter/android/av/bk;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/twitter/android/av/bl;->b:Lcom/twitter/android/av/bk;

    iput-object p2, p0, Lcom/twitter/android/av/bl;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/twitter/android/av/bl;->b:Lcom/twitter/android/av/bk;

    iget-object v0, v0, Lcom/twitter/android/av/bk;->b:Lcom/twitter/android/av/bj;

    invoke-static {v0}, Lcom/twitter/android/av/bj;->a(Lcom/twitter/android/av/bj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/twitter/android/av/bl;->b:Lcom/twitter/android/av/bk;

    iget-object v0, v0, Lcom/twitter/android/av/bk;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/android/av/bl;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/av/bl;->b:Lcom/twitter/android/av/bk;

    iget-object v2, v2, Lcom/twitter/android/av/bk;->b:Lcom/twitter/android/av/bj;

    invoke-static {v2}, Lcom/twitter/android/av/bj;->b(Lcom/twitter/android/av/bj;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/bl;->b:Lcom/twitter/android/av/bk;

    iget-object v0, v0, Lcom/twitter/android/av/bk;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/av/bl;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
