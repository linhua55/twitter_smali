.class Lcom/twitter/android/sp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twitter/model/core/Tweet;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Landroid/support/v4/app/FragmentActivity;

.field final synthetic f:Lcom/twitter/android/sn;


# direct methods
.method constructor <init>(Lcom/twitter/android/sn;Landroid/view/View;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/Runnable;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/twitter/android/sp;->f:Lcom/twitter/android/sn;

    iput-object p2, p0, Lcom/twitter/android/sp;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/twitter/android/sp;->b:Lcom/twitter/model/core/Tweet;

    iput-object p4, p0, Lcom/twitter/android/sp;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/sp;->d:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/twitter/android/sp;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    .line 607
    const-string/jumbo v0, "dismiss_dialog"

    .line 608
    packed-switch p2, :pswitch_data_0

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 610
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/sp;->f:Lcom/twitter/android/sn;

    iget-object v1, p0, Lcom/twitter/android/sp;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/twitter/android/sp;->b:Lcom/twitter/model/core/Tweet;

    sget-object v3, Lcom/twitter/library/api/PromotedEvent;->j:Lcom/twitter/library/api/PromotedEvent;

    const-string/jumbo v4, "dismiss_dialog"

    const-string/jumbo v5, "dismiss_repetitive"

    iget-object v6, p0, Lcom/twitter/android/sp;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/sn;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/twitter/android/sp;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/twitter/android/sp;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 620
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/sp;->f:Lcom/twitter/android/sn;

    iget-object v1, p0, Lcom/twitter/android/sp;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/twitter/android/sp;->b:Lcom/twitter/model/core/Tweet;

    sget-object v3, Lcom/twitter/library/api/PromotedEvent;->k:Lcom/twitter/library/api/PromotedEvent;

    const-string/jumbo v4, "dismiss_dialog"

    const-string/jumbo v5, "dismiss_uninteresting"

    iget-object v6, p0, Lcom/twitter/android/sp;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/sn;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/twitter/android/sp;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/twitter/android/sp;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 630
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/sp;->f:Lcom/twitter/android/sn;

    iget-object v1, p0, Lcom/twitter/android/sp;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/twitter/android/sp;->b:Lcom/twitter/model/core/Tweet;

    sget-object v3, Lcom/twitter/library/api/PromotedEvent;->l:Lcom/twitter/library/api/PromotedEvent;

    const-string/jumbo v4, "dismiss_dialog"

    const-string/jumbo v5, "dismiss_spam"

    iget-object v6, p0, Lcom/twitter/android/sp;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/sn;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/twitter/android/sp;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/twitter/android/sp;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 639
    :pswitch_3
    const-string/jumbo v0, "ad_formats_ads_info_link"

    const-string/jumbo v1, "https://business.twitter.com/help/how-twitter-ads-work"

    invoke-static {v0, v1}, Lcom/twitter/config/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/sp;->f:Lcom/twitter/android/sn;

    iget-object v2, v2, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 642
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 643
    iget-object v0, p0, Lcom/twitter/android/sp;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 608
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
