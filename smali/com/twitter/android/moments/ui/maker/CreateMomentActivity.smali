.class public Lcom/twitter/android/moments/ui/maker/CreateMomentActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/android/moments/ui/maker/az;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const v0, 0x7f0401cd

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 31
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 32
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->a(I)V

    .line 33
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->b(Z)V

    .line 34
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V

    .line 40
    new-instance v1, Lcom/twitter/android/moments/ui/maker/bb;

    const v0, 0x7f130142

    .line 41
    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/maker/CreateMomentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {v1, v0}, Lcom/twitter/android/moments/ui/maker/bb;-><init>(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/CreateMomentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/ax;->a(Landroid/content/Intent;)Lcom/twitter/android/moments/ui/maker/ax;

    move-result-object v0

    iget-wide v2, v0, Lcom/twitter/android/moments/ui/maker/ax;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 42
    invoke-static {p0, v1, v0}, Lcom/twitter/android/moments/ui/maker/az;->a(Landroid/app/Activity;Lcom/twitter/android/moments/ui/maker/bb;Ljava/lang/Long;)Lcom/twitter/android/moments/ui/maker/az;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/CreateMomentActivity;->a:Lcom/twitter/android/moments/ui/maker/az;

    .line 44
    return-void
.end method

.method public a(Lcyd;)Z
    .locals 3

    .prologue
    .line 55
    invoke-interface {p1}, Lcyd;->a()I

    move-result v1

    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/CreateMomentActivity;->a:Lcom/twitter/android/moments/ui/maker/az;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/az;

    .line 57
    const v2, 0x7f1307d7

    if-ne v1, v2, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/az;->a()V

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyd;)Z

    move-result v0

    return v0
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyg;)Z

    .line 49
    const v0, 0x7f140010

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 50
    const/4 v0, 0x1

    return v0
.end method
