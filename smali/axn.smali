.class public Laxn;
.super Lcom/twitter/app/common/inject/w;
.source "Twttr"


# instance fields
.field a:Lawp;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/LayoutInflater;Landroid/os/Bundle;Lcom/twitter/app/common/base/n;Lcom/twitter/android/media/selection/MediaAttachmentController;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f130482

    .line 26
    invoke-direct {p0, p3}, Lcom/twitter/app/common/inject/w;-><init>(Landroid/os/Bundle;)V

    .line 27
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    const v0, 0x7f0403c9

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Laxn;->a(Landroid/view/View;)V

    .line 29
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f049d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 30
    invoke-virtual {p0}, Laxn;->aK_()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130342

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 31
    new-instance v2, Lawq;

    invoke-direct {v2, v1, v0}, Lawq;-><init>(Landroid/view/View;I)V

    .line 32
    invoke-virtual {p0}, Laxn;->aK_()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 33
    new-instance v1, Laxf;

    invoke-direct {v1}, Laxf;-><init>()V

    .line 34
    invoke-virtual {v1, v0}, Laxf;->a(Landroid/view/View;)Laxf;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Laxf;->a(Landroid/support/v4/app/FragmentActivity;)Laxf;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p3}, Laxf;->a(Landroid/os/Bundle;)Laxf;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p4}, Laxf;->a(Lcom/twitter/app/common/base/n;)Laxf;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p5}, Laxf;->a(Lcom/twitter/android/media/selection/MediaAttachmentController;)Laxf;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v2}, Laxf;->a(Lawq;)Laxf;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Laxf;->b()Lawv;

    move-result-object v0

    iput-object v0, p0, Laxn;->a:Lawp;

    .line 41
    iget-object v0, p0, Laxn;->a:Lawp;

    invoke-interface {v0}, Lawp;->p()Lcom/twitter/app/common/inject/v;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Laxn;->a(ILcom/twitter/app/common/inject/v;)V

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    const v0, 0x7f0403d3

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Laxn;->a(Landroid/view/View;)V

    .line 44
    new-instance v0, Laws;

    invoke-direct {v0}, Laws;-><init>()V

    iput-object v0, p0, Laxn;->a:Lawp;

    goto :goto_0
.end method


# virtual methods
.method public f()Lawp;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Laxn;->a:Lawp;

    return-object v0
.end method
