.class Lcom/twitter/android/card/g;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/library/client/Session;

.field final synthetic b:Lcom/twitter/library/card/CardContext;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lcom/twitter/android/card/e;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/e;Lcom/twitter/library/client/Session;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/twitter/android/card/g;->e:Lcom/twitter/android/card/e;

    iput-object p2, p0, Lcom/twitter/android/card/g;->a:Lcom/twitter/library/client/Session;

    iput-object p3, p0, Lcom/twitter/android/card/g;->b:Lcom/twitter/library/card/CardContext;

    iput-object p4, p0, Lcom/twitter/android/card/g;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/card/g;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 271
    iget-object v0, p0, Lcom/twitter/android/card/g;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->h()Lcom/twitter/model/account/OAuthToken;

    move-result-object v1

    .line 272
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 273
    iget-object v0, p0, Lcom/twitter/android/card/g;->b:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/card/g;->b:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->i()Lcss;

    move-result-object v0

    .line 274
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/twitter/android/card/g;->c:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    new-instance v4, Lcom/twitter/library/network/av;

    invoke-direct {v4}, Lcom/twitter/library/network/av;-><init>()V

    .line 276
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcss;->c:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 277
    const-string/jumbo v5, "impression_id"

    iget-object v0, v0, Lcss;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v4}, Lcom/twitter/library/network/av;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/card/g;->e:Lcom/twitter/android/card/e;

    invoke-static {v4}, Lcom/twitter/android/card/e;->a(Lcom/twitter/android/card/e;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/twitter/android/WebViewActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "token"

    .line 282
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "headers"

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/twitter/android/card/g;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 285
    return-void

    .line 273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
