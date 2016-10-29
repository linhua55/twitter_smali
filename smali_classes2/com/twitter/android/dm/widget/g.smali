.class Lcom/twitter/android/dm/widget/g;
.super Lcom/twitter/ui/view/a;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twitter/android/dm/widget/ReadOnlyConversationFooterView;


# direct methods
.method constructor <init>(Lcom/twitter/android/dm/widget/ReadOnlyConversationFooterView;IIZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/twitter/android/dm/widget/g;->b:Lcom/twitter/android/dm/widget/ReadOnlyConversationFooterView;

    iput-object p5, p0, Lcom/twitter/android/dm/widget/g;->a:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4}, Lcom/twitter/ui/view/a;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/android/dm/widget/g;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/dm/widget/g;->a:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/twitter/android/dm/widget/g;->a:Landroid/content/Context;

    const v3, 0x7f0a0a9b

    .line 40
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method
