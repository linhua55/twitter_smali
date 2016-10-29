.class Lcom/twitter/app/common/util/g;
.super Lcom/twitter/app/common/util/i;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/app/common/util/f;


# direct methods
.method constructor <init>(Lcom/twitter/app/common/util/f;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/twitter/app/common/util/g;->a:Lcom/twitter/app/common/util/f;

    invoke-direct {p0}, Lcom/twitter/app/common/util/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/app/common/util/g;->a:Lcom/twitter/app/common/util/f;

    invoke-static {v0}, Lcom/twitter/app/common/util/f;->b(Lcom/twitter/app/common/util/f;)V

    .line 69
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/app/common/util/g;->a:Lcom/twitter/app/common/util/f;

    invoke-static {v0}, Lcom/twitter/app/common/util/f;->a(Lcom/twitter/app/common/util/f;)V

    .line 63
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/app/common/util/g;->a:Lcom/twitter/app/common/util/f;

    invoke-static {v0, p1}, Lcom/twitter/app/common/util/f;->a(Lcom/twitter/app/common/util/f;Landroid/app/Activity;)V

    .line 74
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/app/common/util/g;->a:Lcom/twitter/app/common/util/f;

    invoke-static {v0, p1}, Lcom/twitter/app/common/util/f;->b(Lcom/twitter/app/common/util/f;Landroid/app/Activity;)V

    .line 79
    return-void
.end method
