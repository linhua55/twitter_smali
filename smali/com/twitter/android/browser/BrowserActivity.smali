.class public Lcom/twitter/android/browser/BrowserActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/browser/g;


# instance fields
.field private a:Lcom/twitter/android/browser/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/android/browser/h;)Lcom/twitter/android/browser/a;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/twitter/android/browser/a;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/browser/a;-><init>(Lcom/twitter/android/browser/g;Lcom/twitter/android/browser/h;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 6

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/twitter/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "browser_data_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/twitter/library/client/BrowserDataSource;

    .line 43
    new-instance v5, Lcfw;

    invoke-direct {v5}, Lcfw;-><init>()V

    .line 44
    new-instance v0, Lcom/twitter/android/browser/h;

    invoke-virtual {p0}, Lcom/twitter/android/browser/BrowserActivity;->j()J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/browser/h;-><init>(Landroid/content/Context;JLcom/twitter/library/client/BrowserDataSource;Lcfw;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/twitter/android/browser/BrowserActivity;->a(Lcom/twitter/android/browser/h;)Lcom/twitter/android/browser/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/browser/BrowserActivity;->a:Lcom/twitter/android/browser/a;

    .line 46
    iget-object v0, p0, Lcom/twitter/android/browser/BrowserActivity;->a:Lcom/twitter/android/browser/a;

    invoke-virtual {p0}, Lcom/twitter/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/twitter/android/browser/a;->a(Lcom/twitter/app/common/base/y;Landroid/view/Window;)V

    .line 47
    return-object p2
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/twitter/android/browser/BrowserActivity;->setTitle(I)V

    .line 101
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/twitter/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method protected a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/twitter/android/browser/BrowserActivity;->a:Lcom/twitter/android/browser/a;

    invoke-virtual {v0}, Lcom/twitter/android/browser/a;->d()V

    .line 136
    return-void
.end method

.method protected a(Landroid/view/Window;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/twitter/android/browser/BrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public a(Lcyd;)Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/twitter/android/browser/BrowserActivity;->a:Lcom/twitter/android/browser/a;

    invoke-virtual {v0, p1}, Lcom/twitter/android/browser/a;->a(Lcyd;)Z

    move-result v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyd;)Z

    .line 151
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyg;)Z

    .line 141
    iget-object v0, p0, Lcom/twitter/android/browser/BrowserActivity;->a:Lcom/twitter/android/browser/a;

    invoke-virtual {v0, p1}, Lcom/twitter/android/browser/a;->a(Lcyg;)V

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public aw_()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/twitter/android/browser/BrowserActivity;->finish()V

    .line 131
    return-void
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 3

    .prologue
    .line 32
    const v0, 0x7f130425

    invoke-virtual {p0, v0}, Lcom/twitter/android/browser/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 33
    const v1, 0x7f13064c

    invoke-virtual {p0, v1}, Lcom/twitter/android/browser/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 34
    iget-object v2, p0, Lcom/twitter/android/browser/BrowserActivity;->a:Lcom/twitter/android/browser/a;

    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/browser/a;->a(Landroid/webkit/WebView;Landroid/widget/ProgressBar;)V

    .line 35
    iget-object v0, p0, Lcom/twitter/android/browser/BrowserActivity;->a:Lcom/twitter/android/browser/a;

    invoke-virtual {p0}, Lcom/twitter/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/browser/a;->a(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/twitter/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/browser/BrowserActivity;->a(Landroid/view/Window;)V

    .line 37
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/twitter/android/browser/BrowserActivity;->b(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    .line 91
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/twitter/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public i()Landroid/content/Context;
    .locals 0

    .prologue
    .line 115
    return-object p0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/twitter/android/browser/BrowserActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/browser/BrowserActivity;->a:Lcom/twitter/android/browser/a;

    invoke-virtual {v0}, Lcom/twitter/android/browser/a;->c()V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onDestroy()V

    .line 80
    iget-object v0, p0, Lcom/twitter/android/browser/BrowserActivity;->a:Lcom/twitter/android/browser/a;

    invoke-virtual {v0}, Lcom/twitter/android/browser/a;->b()V

    .line 81
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onPause()V

    .line 74
    iget-object v0, p0, Lcom/twitter/android/browser/BrowserActivity;->a:Lcom/twitter/android/browser/a;

    invoke-virtual {v0}, Lcom/twitter/android/browser/a;->a()V

    .line 75
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/twitter/android/browser/BrowserActivity;->a:Lcom/twitter/android/browser/a;

    invoke-virtual {v0, p1}, Lcom/twitter/android/browser/a;->a(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method
