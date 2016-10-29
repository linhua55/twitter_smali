.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;->a:Landroid/view/View;

    .line 29
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;->b:Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;

    .line 30
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;
    .locals 2

    .prologue
    .line 23
    const v0, 0x7f13045c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;

    .line 24
    new-instance v1, Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;

    invoke-direct {v1, v0, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;-><init>(Landroid/view/View;Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;)V

    return-object v1
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/twitter/util/math/c;Z)V
    .locals 4

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;->aK_()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040195

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;->b:Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;

    const/4 v3, 0x0

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;->b:Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;

    invoke-virtual {v1, v0, p2, p3}, Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;->a(Landroid/view/View;Lcom/twitter/util/math/c;Z)V

    .line 44
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()Lcom/twitter/util/math/c;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;->b:Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;

    invoke-virtual {v0}, Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;->getCurrentCropRect()Lcom/twitter/util/math/c;

    move-result-object v0

    return-object v0
.end method
