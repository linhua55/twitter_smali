.class final Lcom/twitter/android/dialog/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/twitter/android/dialog/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/twitter/android/dialog/d;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/twitter/android/dialog/d;->c:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 39
    invoke-static {v0, v1}, Lcom/twitter/android/people/bb;->a(J)Lcom/twitter/android/people/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/dialog/d;->a:Ljava/lang/String;

    const-string/jumbo v2, "learn_more"

    const-string/jumbo v3, "click"

    .line 40
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/people/bb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 41
    iget-object v0, p0, Lcom/twitter/android/dialog/d;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/dialog/d;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/twitter/android/dialog/d;->c:Landroid/content/res/Resources;

    const v3, 0x7f0a0b15

    .line 42
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method
