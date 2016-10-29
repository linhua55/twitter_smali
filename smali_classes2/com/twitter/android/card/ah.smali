.class Lcom/twitter/android/card/ah;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/twitter/android/card/ag;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/ag;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/twitter/android/card/ah;->b:Lcom/twitter/android/card/ag;

    iput-object p2, p0, Lcom/twitter/android/card/ah;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/twitter/android/card/ah;->b:Lcom/twitter/android/card/ag;

    invoke-static {v0}, Lcom/twitter/android/card/ag;->a(Lcom/twitter/android/card/ag;)Lcdq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lcom/twitter/android/livevideo/landing/a;

    iget-object v1, p0, Lcom/twitter/android/card/ah;->b:Lcom/twitter/android/card/ag;

    .line 168
    invoke-static {v1}, Lcom/twitter/android/card/ag;->a(Lcom/twitter/android/card/ag;)Lcdq;

    move-result-object v1

    invoke-virtual {v1}, Lcdq;->c()J

    move-result-wide v2

    iget-object v1, p0, Lcom/twitter/android/card/ah;->b:Lcom/twitter/android/card/ag;

    .line 169
    invoke-static {v1}, Lcom/twitter/android/card/ag;->a(Lcom/twitter/android/card/ag;)Lcdq;

    move-result-object v1

    invoke-virtual {v1}, Lcdq;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/twitter/android/livevideo/landing/a;-><init>(JLjava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/twitter/android/card/ah;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->a(Landroid/content/Context;Lcom/twitter/android/livevideo/landing/a;)Landroid/content/Intent;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/twitter/android/card/ah;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 173
    :cond_0
    return-void
.end method
