.class Lcom/twitter/android/client/aq;
.super Lcom/twitter/android/client/o;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0}, Lcom/twitter/android/client/o;-><init>()V

    .line 687
    iput-object p1, p0, Lcom/twitter/android/client/aq;->a:Landroid/content/Context;

    .line 688
    iput-object p2, p0, Lcom/twitter/android/client/aq;->b:Ljava/lang/String;

    .line 689
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 692
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 693
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/twitter/android/client/aq;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/android/client/OpenUriHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string/jumbo v1, "onerr"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string/jumbo v1, "format"

    const-string/jumbo v2, "html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v1, p0, Lcom/twitter/android/client/aq;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/twitter/android/client/aq;->a:Landroid/content/Context;

    const-class v4, Lcom/twitter/android/WebViewActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "readability_v2_proxy_uri"

    .line 698
    invoke-static {v3}, Lcom/twitter/config/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "com.twitter.android.EXTRA_POST_PARAMS"

    .line 700
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 697
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 701
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x1

    return v0
.end method
