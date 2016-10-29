.class public Lcom/twitter/android/moments/ui/maker/MomentMakerAddTweetsActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/android/moments/ui/maker/cg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/app/common/inject/t;)Lagv;
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/MomentMakerAddTweetsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "moment_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 35
    invoke-static {}, Lafw;->a()Lagd;

    move-result-object v2

    new-instance v3, Laha;

    invoke-direct {v3, v0, v1}, Laha;-><init>(J)V

    .line 36
    invoke-virtual {v2, v3}, Lagd;->a(Laha;)Lagd;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/twitter/app/common/app/n;->w()Lcom/twitter/app/common/app/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lagd;->a(Lcom/twitter/app/common/app/n;)Lagd;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lagd;->a()Lagv;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 28
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/twitter/app/common/inject/v;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/MomentMakerAddTweetsActivity;->U()Lcom/twitter/app/common/inject/b;

    move-result-object v0

    check-cast v0, Lagv;

    .line 45
    invoke-interface {v0}, Lagv;->c()Laeo;

    move-result-object v1

    .line 46
    invoke-interface {v0}, Lagv;->d()Laeb;

    move-result-object v0

    .line 45
    invoke-static {p0, v1, v0}, Lcom/twitter/android/moments/ui/maker/cg;->a(Landroid/app/Activity;Laeo;Laeb;)Lcom/twitter/android/moments/ui/maker/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/MomentMakerAddTweetsActivity;->a:Lcom/twitter/android/moments/ui/maker/cg;

    .line 47
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/MomentMakerAddTweetsActivity;->a:Lcom/twitter/android/moments/ui/maker/cg;

    return-object v0
.end method

.method protected synthetic c(Lcom/twitter/app/common/inject/t;)Lcom/twitter/app/common/inject/b;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/MomentMakerAddTweetsActivity;->a(Lcom/twitter/app/common/inject/t;)Lagv;

    move-result-object v0

    return-object v0
.end method
