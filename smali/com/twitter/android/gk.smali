.class Lcom/twitter/android/gk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/GalleryActivity;)V
    .locals 0

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/twitter/android/gk;->a:Lcom/twitter/android/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/twitter/android/gk;->a:Lcom/twitter/android/GalleryActivity;

    invoke-static {v0}, Lcom/twitter/android/GalleryActivity;->b(Lcom/twitter/android/GalleryActivity;)Lcom/twitter/library/widget/SlidingPanel;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SlidingPanel;->setAlpha(F)V

    .line 1326
    iget-object v0, p0, Lcom/twitter/android/gk;->a:Lcom/twitter/android/GalleryActivity;

    invoke-static {v0}, Lcom/twitter/android/GalleryActivity;->b(Lcom/twitter/android/GalleryActivity;)Lcom/twitter/library/widget/SlidingPanel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/widget/SlidingPanel;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1327
    iget-object v0, p0, Lcom/twitter/android/gk;->a:Lcom/twitter/android/GalleryActivity;

    invoke-static {v0}, Lcom/twitter/android/GalleryActivity;->e(Lcom/twitter/android/GalleryActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcxe;->a(Landroid/view/View;)V

    .line 1328
    iget-object v0, p0, Lcom/twitter/android/gk;->a:Lcom/twitter/android/GalleryActivity;

    invoke-virtual {v0}, Lcom/twitter/android/GalleryActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    invoke-static {v0}, Lcxe;->b(Landroid/view/View;)V

    .line 1329
    return-void
.end method
