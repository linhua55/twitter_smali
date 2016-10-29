.class Lcom/twitter/android/composer/ac;
.super Lcom/twitter/app/common/util/i;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/app/common/util/c;

.field final synthetic b:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/app/common/util/c;)V
    .locals 0

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/twitter/android/composer/ac;->b:Lcom/twitter/android/composer/ComposerActivity;

    iput-object p2, p0, Lcom/twitter/android/composer/ac;->a:Lcom/twitter/app/common/util/c;

    invoke-direct {p0}, Lcom/twitter/app/common/util/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/twitter/android/composer/ac;->b:Lcom/twitter/android/composer/ComposerActivity;

    if-ne p1, v0, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/twitter/android/composer/ac;->a:Lcom/twitter/app/common/util/c;

    invoke-virtual {v0, p0}, Lcom/twitter/app/common/util/c;->b(Lcom/twitter/app/common/util/a;)V

    .line 1695
    iget-object v0, p0, Lcom/twitter/android/composer/ac;->b:Lcom/twitter/android/composer/ComposerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/app/common/util/a;)Lcom/twitter/app/common/util/a;

    .line 1697
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1686
    instance-of v0, p1, Lcom/twitter/android/media/camera/CameraActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1687
    iget-object v0, p0, Lcom/twitter/android/composer/ac;->b:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->B(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1689
    :cond_0
    return-void
.end method
