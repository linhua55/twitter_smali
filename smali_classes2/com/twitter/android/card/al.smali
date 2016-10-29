.class Lcom/twitter/android/card/al;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/card/ak;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/ak;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/twitter/android/card/al;->a:Lcom/twitter/android/card/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/android/card/al;->a:Lcom/twitter/android/card/ak;

    invoke-static {v0}, Lcom/twitter/android/card/ak;->a(Lcom/twitter/android/card/ak;)Lcom/twitter/android/moments/viewmodels/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/twitter/android/card/al;->a:Lcom/twitter/android/card/ak;

    invoke-virtual {v0}, Lcom/twitter/android/card/ak;->l()Landroid/app/Activity;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/twitter/android/card/al;->a:Lcom/twitter/android/card/ak;

    invoke-static {v1}, Lcom/twitter/android/card/ak;->a(Lcom/twitter/android/card/ak;)Lcom/twitter/android/moments/viewmodels/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/moments/viewmodels/ai;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Lcom/twitter/android/card/al;->a:Lcom/twitter/android/card/ak;

    iget-object v1, v1, Lcom/twitter/android/card/ak;->v:Lcom/twitter/android/card/CardActionHelper;

    iget-object v2, p0, Lcom/twitter/android/card/al;->a:Lcom/twitter/android/card/ak;

    .line 123
    invoke-static {v2}, Lcom/twitter/android/card/ak;->a(Lcom/twitter/android/card/ak;)Lcom/twitter/android/moments/viewmodels/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/moments/viewmodels/ai;->b()J

    move-result-wide v2

    .line 122
    invoke-static {v0, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->c(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "open_link"

    .line 121
    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/card/CardActionHelper;->a(Landroid/content/Intent;Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/al;->a:Lcom/twitter/android/card/ak;

    iget-object v0, v0, Lcom/twitter/android/card/ak;->v:Lcom/twitter/android/card/CardActionHelper;

    iget-object v1, p0, Lcom/twitter/android/card/al;->a:Lcom/twitter/android/card/ak;

    invoke-static {v1}, Lcom/twitter/android/card/ak;->a(Lcom/twitter/android/card/ak;)Lcom/twitter/android/moments/viewmodels/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/moments/viewmodels/ai;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/CardActionHelper;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
