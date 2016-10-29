.class Lcom/twitter/android/gg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcvw;


# instance fields
.field final synthetic a:Lcom/twitter/android/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/GalleryActivity;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/twitter/android/gg;->a:Lcom/twitter/android/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/twitter/android/gg;->a:Lcom/twitter/android/GalleryActivity;

    invoke-virtual {v0}, Lcom/twitter/android/GalleryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/gg;->a:Lcom/twitter/android/GalleryActivity;

    invoke-static {v0}, Lcom/twitter/android/GalleryActivity;->a(Lcom/twitter/android/GalleryActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/twitter/android/gg;->a:Lcom/twitter/android/GalleryActivity;

    iget-object v1, p0, Lcom/twitter/android/gg;->a:Lcom/twitter/android/GalleryActivity;

    invoke-static {v1}, Lcom/twitter/android/GalleryActivity;->a(Lcom/twitter/android/GalleryActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/GalleryActivity;->a(Lcom/twitter/android/GalleryActivity;Ljava/util/List;)V

    .line 707
    iget-object v0, p0, Lcom/twitter/android/gg;->a:Lcom/twitter/android/GalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/GalleryActivity;->b(Lcom/twitter/android/GalleryActivity;Ljava/util/List;)Ljava/util/List;

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/gg;->a:Lcom/twitter/android/GalleryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/GalleryActivity;->a(Lcom/twitter/android/GalleryActivity;Z)Z

    goto :goto_0
.end method
