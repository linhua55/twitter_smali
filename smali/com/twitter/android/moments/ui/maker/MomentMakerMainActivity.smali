.class public Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/android/moments/ui/maker/ci;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/app/common/inject/t;)Lagw;
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lage;->a()Lagm;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/twitter/app/common/app/n;->w()Lcom/twitter/app/common/app/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lagm;->a(Lcom/twitter/app/common/app/n;)Lagm;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lagm;->a()Lagw;

    move-result-object v0

    .line 69
    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(Z)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 40
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/twitter/app/common/inject/v;
    .locals 7

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "moment_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 47
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "page_id"

    sget-object v4, Lcom/twitter/model/moments/ak;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1, v4}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ak;

    .line 48
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;->U()Lcom/twitter/app/common/inject/b;

    move-result-object v1

    check-cast v1, Lagw;

    .line 49
    invoke-interface {v1}, Lagw;->c()Ladk;

    move-result-object v4

    .line 50
    new-instance v5, Lcom/twitter/android/moments/ui/maker/cl;

    invoke-direct {v5, p0, v1}, Lcom/twitter/android/moments/ui/maker/cl;-><init>(Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;Lagw;)V

    .line 60
    invoke-interface {v1}, Lagw;->f()Laeo;

    move-result-object v6

    .line 61
    invoke-interface {v1}, Lagw;->g()Laer;

    move-result-object v1

    .line 50
    invoke-static {p0, v4, v5, v6, v1}, Lcom/twitter/android/moments/ui/maker/ci;->a(Lcom/twitter/app/common/inject/InjectedFragmentActivity;Ladj;Lcom/twitter/util/object/c;Laeo;Laer;)Lcom/twitter/android/moments/ui/maker/ci;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;->a:Lcom/twitter/android/moments/ui/maker/ci;

    .line 62
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;->a:Lcom/twitter/android/moments/ui/maker/ci;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ak;

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/android/moments/ui/maker/ci;->a(JLcom/twitter/model/moments/ak;)V

    .line 63
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;->a:Lcom/twitter/android/moments/ui/maker/ci;

    return-object v0
.end method

.method protected synthetic c(Lcom/twitter/app/common/inject/t;)Lcom/twitter/app/common/inject/b;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;->a(Lcom/twitter/app/common/inject/t;)Lagw;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;->a:Lcom/twitter/android/moments/ui/maker/ci;

    if-nez v0, :cond_0

    .line 77
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;->a:Lcom/twitter/android/moments/ui/maker/ci;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/ci;->d()V

    goto :goto_0
.end method
