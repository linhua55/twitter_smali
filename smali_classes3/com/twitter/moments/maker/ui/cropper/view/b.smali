.class Lcom/twitter/moments/maker/ui/cropper/view/b;
.super Lcyb;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;


# direct methods
.method private constructor <init>(Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/twitter/moments/maker/ui/cropper/view/b;->a:Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;

    invoke-direct {p0}, Lcyb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;Lcom/twitter/moments/maker/ui/cropper/view/a;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/twitter/moments/maker/ui/cropper/view/b;-><init>(Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/twitter/moments/maker/ui/cropper/view/b;->a:Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;

    invoke-static {v0}, Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;->c(Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;)Lcvb;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/twitter/moments/maker/ui/cropper/view/b;->a:Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;

    invoke-static {v0}, Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;->c(Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;)Lcvb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcvb;->a(I)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/twitter/moments/maker/ui/cropper/view/b;->a:Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;

    invoke-static {v0}, Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;->b(Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/moments/maker/ui/cropper/view/b;->a:Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;

    invoke-static {v0}, Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;->c(Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;)Lcvb;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/twitter/moments/maker/ui/cropper/view/b;->a:Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;

    invoke-static {v0}, Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;->c(Lcom/twitter/moments/maker/ui/cropper/view/CropContainerView;)Lcvb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcvb;->b(I)I

    move-result v0

    return v0
.end method
