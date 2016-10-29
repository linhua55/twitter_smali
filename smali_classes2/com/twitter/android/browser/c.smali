.class Lcom/twitter/android/browser/c;
.super Landroid/webkit/WebViewClient;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/browser/a;


# direct methods
.method constructor <init>(Lcom/twitter/android/browser/a;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/twitter/android/browser/c;->a:Lcom/twitter/android/browser/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/twitter/android/browser/c;->a:Lcom/twitter/android/browser/a;

    invoke-virtual {v0, p2}, Lcom/twitter/android/browser/a;->b(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/twitter/android/browser/c;->a:Lcom/twitter/android/browser/a;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/browser/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 253
    iget-object v0, p0, Lcom/twitter/android/browser/c;->a:Lcom/twitter/android/browser/a;

    invoke-virtual {v0}, Lcom/twitter/android/browser/a;->e()V

    .line 254
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/twitter/android/browser/c;->a:Lcom/twitter/android/browser/a;

    invoke-static {v0}, Lcom/twitter/android/browser/a;->b(Lcom/twitter/android/browser/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/twitter/android/browser/c;->a:Lcom/twitter/android/browser/a;

    invoke-static {v0}, Lcom/twitter/android/browser/a;->c(Lcom/twitter/android/browser/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/browser/c;->a:Lcom/twitter/android/browser/a;

    invoke-virtual {v0, p2}, Lcom/twitter/android/browser/a;->a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method
