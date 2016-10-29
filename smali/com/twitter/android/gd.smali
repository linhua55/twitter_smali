.class Lcom/twitter/android/gd;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/xo;

.field final synthetic b:Lcom/twitter/android/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/GalleryActivity;Lcom/twitter/android/xo;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/twitter/android/gd;->b:Lcom/twitter/android/GalleryActivity;

    iput-object p2, p0, Lcom/twitter/android/gd;->a:Lcom/twitter/android/xo;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 521
    iget-object v2, p0, Lcom/twitter/android/gd;->a:Lcom/twitter/android/xo;

    invoke-virtual {v2}, Lcom/twitter/android/xo;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    iget-object v2, p0, Lcom/twitter/android/gd;->a:Lcom/twitter/android/xo;

    invoke-virtual {v2, v0}, Lcom/twitter/android/xo;->a(Z)V

    .line 528
    :cond_0
    :goto_0
    return v1

    .line 524
    :cond_1
    invoke-static {}, Lcom/twitter/util/ui/a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 525
    iget-object v2, p0, Lcom/twitter/android/gd;->b:Lcom/twitter/android/GalleryActivity;

    iget-object v3, p0, Lcom/twitter/android/gd;->b:Lcom/twitter/android/GalleryActivity;

    iget-boolean v3, v3, Lcom/twitter/android/GalleryActivity;->b:Z

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/twitter/android/GalleryActivity;->c(Z)V

    goto :goto_0
.end method
