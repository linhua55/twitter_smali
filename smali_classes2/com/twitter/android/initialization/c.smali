.class Lcom/twitter/android/initialization/c;
.super Lcom/twitter/app/common/util/i;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/initialization/AppStyleInitializer;


# direct methods
.method constructor <init>(Lcom/twitter/android/initialization/AppStyleInitializer;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/twitter/android/initialization/c;->a:Lcom/twitter/android/initialization/AppStyleInitializer;

    invoke-direct {p0}, Lcom/twitter/app/common/util/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 35
    instance-of v0, p1, Lcom/twitter/app/common/base/h;

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/twitter/library/util/g;->a()Lcom/twitter/library/util/g;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/twitter/app/common/base/h;

    invoke-virtual {v1, v0}, Lcom/twitter/library/util/g;->a(Lcom/twitter/app/common/base/h;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/initialization/c;->a:Lcom/twitter/android/initialization/AppStyleInitializer;

    invoke-static {v0, p1}, Lcom/twitter/android/initialization/AppStyleInitializer;->a(Lcom/twitter/android/initialization/AppStyleInitializer;Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 43
    instance-of v0, p1, Lcom/twitter/app/common/base/h;

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/twitter/library/util/g;->a()Lcom/twitter/library/util/g;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/twitter/app/common/base/h;

    .line 45
    invoke-virtual {v1, p1, v0}, Lcom/twitter/library/util/g;->a(Landroid/app/Activity;Lcom/twitter/app/common/base/h;)V

    .line 47
    :cond_0
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0d01a2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 50
    :cond_1
    return-void
.end method
