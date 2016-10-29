.class Lcom/twitter/app/main/s;
.super Landroid/support/design/widget/Snackbar$Callback;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/app/main/r;


# direct methods
.method constructor <init>(Lcom/twitter/app/main/r;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/twitter/app/main/s;->a:Lcom/twitter/app/main/r;

    invoke-direct {p0}, Landroid/support/design/widget/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Landroid/support/design/widget/Snackbar;I)V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/Snackbar$Callback;->onDismissed(Landroid/support/design/widget/Snackbar;I)V

    .line 26
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/app/main/s;->a:Lcom/twitter/app/main/r;

    invoke-static {v0}, Lcom/twitter/app/main/r;->a(Lcom/twitter/app/main/r;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/twitter/app/main/s;->a:Lcom/twitter/app/main/r;

    invoke-static {v0}, Lcom/twitter/app/main/r;->a(Lcom/twitter/app/main/r;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 29
    :cond_0
    return-void
.end method
