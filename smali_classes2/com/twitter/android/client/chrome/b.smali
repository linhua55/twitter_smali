.class final Lcom/twitter/android/client/chrome/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/client/BrowserLoadingStatus;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/twitter/library/scribe/ScribeItemsProvider;

.field final synthetic e:Lcom/twitter/library/client/BrowserDataSource;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/BrowserLoadingStatus;Landroid/app/Activity;Ljava/lang/String;Lcom/twitter/library/scribe/ScribeItemsProvider;Lcom/twitter/library/client/BrowserDataSource;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/twitter/android/client/chrome/b;->a:Lcom/twitter/android/client/BrowserLoadingStatus;

    iput-object p2, p0, Lcom/twitter/android/client/chrome/b;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/twitter/android/client/chrome/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/client/chrome/b;->d:Lcom/twitter/library/scribe/ScribeItemsProvider;

    iput-object p5, p0, Lcom/twitter/android/client/chrome/b;->e:Lcom/twitter/library/client/BrowserDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/android/client/chrome/b;->a:Lcom/twitter/android/client/BrowserLoadingStatus;

    iget-object v1, p0, Lcom/twitter/android/client/chrome/b;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twitter/android/client/chrome/b;->c:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/twitter/android/client/chrome/b;->d:Lcom/twitter/library/scribe/ScribeItemsProvider;

    .line 58
    invoke-static {v1, v2, v3, v4}, Lcom/twitter/android/client/chrome/a;->a(Landroid/app/Activity;Ljava/lang/String;ZLcom/twitter/library/scribe/ScribeItemsProvider;)Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/client/chrome/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/client/chrome/b;->e:Lcom/twitter/library/client/BrowserDataSource;

    iget-object v4, p0, Lcom/twitter/android/client/chrome/b;->b:Landroid/app/Activity;

    .line 57
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/BrowserLoadingStatus;->a(Landroid/support/customtabs/CustomTabsIntent;Ljava/lang/String;Lcom/twitter/library/client/BrowserDataSource;Landroid/app/Activity;)V

    .line 60
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 61
    return-void
.end method
