.class Lcom/twitter/android/client/l;
.super Landroid/support/design/widget/Snackbar$Callback;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/client/BrowserLoadingStatus;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/BrowserLoadingStatus;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/twitter/android/client/l;->a:Lcom/twitter/android/client/BrowserLoadingStatus;

    invoke-direct {p0}, Landroid/support/design/widget/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Landroid/support/design/widget/Snackbar;I)V
    .locals 1

    .prologue
    .line 171
    if-nez p2, :cond_0

    .line 172
    iget-object v0, p0, Lcom/twitter/android/client/l;->a:Lcom/twitter/android/client/BrowserLoadingStatus;

    invoke-static {v0}, Lcom/twitter/android/client/BrowserLoadingStatus;->d(Lcom/twitter/android/client/BrowserLoadingStatus;)V

    .line 174
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/Snackbar$Callback;->onDismissed(Landroid/support/design/widget/Snackbar;I)V

    .line 175
    return-void
.end method
