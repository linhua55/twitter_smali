.class public Lcom/twitter/android/TotpGeneratorActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Lcom/twitter/ui/widget/TypefacesTextView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Lcom/twitter/internal/android/widget/ToolBar;

.field private f:Ljava/lang/Runnable;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TotpGeneratorActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/TotpGeneratorActivity;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/twitter/android/TotpGeneratorActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/twitter/android/TotpGeneratorActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->c:Lcom/twitter/ui/widget/TypefacesTextView;

    iget-object v1, p0, Lcom/twitter/android/TotpGeneratorActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->c:Lcom/twitter/ui/widget/TypefacesTextView;

    const v1, 0x7f0a08d1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0403b5

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 43
    return-object p2
.end method

.method protected a(Lcom/twitter/library/service/x;I)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcom/twitter/library/service/x;I)V

    .line 66
    packed-switch p2, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p1

    .line 68
    check-cast v0, Lbls;

    invoke-virtual {v0}, Lbls;->e()Lcom/twitter/model/account/i;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/twitter/model/account/i;->a()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iput-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->a:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lcom/twitter/android/TotpGeneratorActivity;->c()V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 6

    .prologue
    .line 48
    const v0, 0x7f0a04f5

    invoke-virtual {p0, v0}, Lcom/twitter/android/TotpGeneratorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TotpGeneratorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f13075d

    invoke-virtual {p0, v0}, Lcom/twitter/android/TotpGeneratorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    iput-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->c:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 51
    const v0, 0x7f13075e

    invoke-virtual {p0, v0}, Lcom/twitter/android/TotpGeneratorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->d:Landroid/widget/ProgressBar;

    .line 52
    const v0, 0x7f130070

    invoke-virtual {p0, v0}, Lcom/twitter/android/TotpGeneratorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    iput-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->e:Lcom/twitter/internal/android/widget/ToolBar;

    .line 54
    iget-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 55
    iget-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->e:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {p0}, Lcom/twitter/android/TotpGeneratorActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0}, Lcom/twitter/android/TotpGeneratorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "TotpGeneratorActivity_account_id"

    invoke-virtual {p0}, Lcom/twitter/android/TotpGeneratorActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->b:J

    .line 59
    iget-wide v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->b:J

    invoke-static {p0, v0, v1}, Lblh;->i(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->a:Ljava/lang/String;

    .line 60
    new-instance v0, Lbls;

    invoke-virtual {p0}, Lcom/twitter/android/TotpGeneratorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/TotpGeneratorActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v2

    iget-wide v4, p0, Lcom/twitter/android/TotpGeneratorActivity;->b:J

    invoke-virtual {v2, v4, v5}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbls;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TotpGeneratorActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 62
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onPause()V

    .line 95
    iget-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/TotpGeneratorActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 100
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->d:Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/twitter/util/ao;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 102
    invoke-direct {p0}, Lcom/twitter/android/TotpGeneratorActivity;->c()V

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->g:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/twitter/android/sm;

    invoke-direct {v0, p0}, Lcom/twitter/android/sm;-><init>(Lcom/twitter/android/TotpGeneratorActivity;)V

    iput-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->f:Ljava/lang/Runnable;

    .line 117
    iget-object v0, p0, Lcom/twitter/android/TotpGeneratorActivity;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/TotpGeneratorActivity;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    return-void
.end method
