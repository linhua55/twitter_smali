.class Lcom/twitter/android/client/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/twitter/android/client/BrowserLoadingStatus;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/BrowserLoadingStatus;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/twitter/android/client/k;->b:Lcom/twitter/android/client/BrowserLoadingStatus;

    iput-object p2, p0, Lcom/twitter/android/client/k;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 156
    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Lcom/twitter/android/client/BrowserLoadingStatus;

    invoke-static {v0}, Lcom/twitter/android/client/BrowserLoadingStatus;->a(Lcom/twitter/android/client/BrowserLoadingStatus;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Lcom/twitter/android/client/BrowserLoadingStatus;

    invoke-static {v0}, Lcom/twitter/android/client/BrowserLoadingStatus;->b(Lcom/twitter/android/client/BrowserLoadingStatus;)Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/twitter/android/client/k;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/twitter/library/client/am;->a(Landroid/content/Context;)Lcom/twitter/library/client/am;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/k;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twitter/android/client/k;->b:Lcom/twitter/android/client/BrowserLoadingStatus;

    .line 159
    invoke-static {v2}, Lcom/twitter/android/client/BrowserLoadingStatus;->a(Lcom/twitter/android/client/BrowserLoadingStatus;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/client/k;->b:Lcom/twitter/android/client/BrowserLoadingStatus;

    invoke-static {v3}, Lcom/twitter/android/client/BrowserLoadingStatus;->b(Lcom/twitter/android/client/BrowserLoadingStatus;)Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/client/k;->b:Lcom/twitter/android/client/BrowserLoadingStatus;

    .line 160
    invoke-static {v4}, Lcom/twitter/android/client/BrowserLoadingStatus;->c(Lcom/twitter/android/client/BrowserLoadingStatus;)Lcom/twitter/library/client/BrowserDataSource;

    move-result-object v4

    .line 159
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/client/am;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/support/customtabs/CustomTabsIntent;Lcom/twitter/library/client/BrowserDataSource;)V

    .line 165
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Lcom/twitter/android/client/BrowserLoadingStatus;

    invoke-static {v0}, Lcom/twitter/android/client/BrowserLoadingStatus;->d(Lcom/twitter/android/client/BrowserLoadingStatus;)V

    .line 166
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/client/k;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/android/client/k;->b:Lcom/twitter/android/client/BrowserLoadingStatus;

    invoke-static {v1}, Lcom/twitter/android/client/BrowserLoadingStatus;->a(Lcom/twitter/android/client/BrowserLoadingStatus;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/client/k;->b:Lcom/twitter/android/client/BrowserLoadingStatus;

    invoke-static {v2}, Lcom/twitter/android/client/BrowserLoadingStatus;->c(Lcom/twitter/android/client/BrowserLoadingStatus;)Lcom/twitter/library/client/BrowserDataSource;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/BrowserDataSource;)V

    goto :goto_0
.end method
