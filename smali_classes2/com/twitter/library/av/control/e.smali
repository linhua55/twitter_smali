.class Lcom/twitter/library/av/control/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/twitter/library/av/control/VideoControlView;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/control/VideoControlView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/twitter/library/av/control/e;->c:Lcom/twitter/library/av/control/VideoControlView;

    iput-object p2, p0, Lcom/twitter/library/av/control/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/twitter/library/av/control/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 249
    iget-object v0, p0, Lcom/twitter/library/av/control/e;->c:Lcom/twitter/library/av/control/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/library/av/control/VideoControlView;->f()V

    .line 250
    iget-object v0, p0, Lcom/twitter/library/av/control/e;->c:Lcom/twitter/library/av/control/VideoControlView;

    invoke-static {v0}, Lcom/twitter/library/av/control/VideoControlView;->a(Lcom/twitter/library/av/control/VideoControlView;)Landroid/view/View;

    move-result-object v0

    sget v1, Lbjw;->msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    iget-object v1, p0, Lcom/twitter/library/av/control/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/library/av/control/e;->a:Ljava/lang/String;

    .line 253
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/twitter/library/av/control/e;->c:Lcom/twitter/library/av/control/VideoControlView;

    invoke-static {v0}, Lcom/twitter/library/av/control/VideoControlView;->a(Lcom/twitter/library/av/control/VideoControlView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/twitter/library/av/control/e;->c:Lcom/twitter/library/av/control/VideoControlView;

    iget-object v1, p0, Lcom/twitter/library/av/control/e;->c:Lcom/twitter/library/av/control/VideoControlView;

    invoke-static {v1}, Lcom/twitter/library/av/control/VideoControlView;->a(Lcom/twitter/library/av/control/VideoControlView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/control/VideoControlView;->bringChildToFront(Landroid/view/View;)V

    .line 257
    return-void

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/twitter/library/av/control/e;->b:Landroid/content/Context;

    sget v2, Lbkb;->av_playlist_download_failed:I

    .line 252
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
