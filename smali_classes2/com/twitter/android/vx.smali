.class Lcom/twitter/android/vx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/twitter/media/ui/image/BaseMediaImageView;

.field final synthetic d:Lcom/twitter/android/vw;


# direct methods
.method constructor <init>(Lcom/twitter/android/vw;Landroid/support/v4/app/Fragment;Landroid/content/Intent;Lcom/twitter/media/ui/image/BaseMediaImageView;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/twitter/android/vx;->d:Lcom/twitter/android/vw;

    iput-object p2, p0, Lcom/twitter/android/vx;->a:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/twitter/android/vx;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/twitter/android/vx;->c:Lcom/twitter/media/ui/image/BaseMediaImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/twitter/android/vx;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/twitter/android/vx;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/vx;->c:Lcom/twitter/media/ui/image/BaseMediaImageView;

    .line 420
    invoke-static {v0, v1, v2}, Lcom/twitter/android/GalleryActivity;->a(Landroid/app/Activity;Landroid/content/Intent;Lcom/twitter/media/ui/image/BaseMediaImageView;)V

    .line 422
    :cond_0
    return-void
.end method
