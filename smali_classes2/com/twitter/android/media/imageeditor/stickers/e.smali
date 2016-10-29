.class Lcom/twitter/android/media/imageeditor/stickers/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcpf;

.field final synthetic b:Lcpy;

.field final synthetic c:Lcom/twitter/media/ui/image/MediaImageView;

.field final synthetic d:Lcom/twitter/android/media/imageeditor/stickers/d;


# direct methods
.method constructor <init>(Lcom/twitter/android/media/imageeditor/stickers/d;Lcpf;Lcpy;Lcom/twitter/media/ui/image/MediaImageView;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/stickers/e;->d:Lcom/twitter/android/media/imageeditor/stickers/d;

    iput-object p2, p0, Lcom/twitter/android/media/imageeditor/stickers/e;->a:Lcpf;

    iput-object p3, p0, Lcom/twitter/android/media/imageeditor/stickers/e;->b:Lcpy;

    iput-object p4, p0, Lcom/twitter/android/media/imageeditor/stickers/e;->c:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/e;->d:Lcom/twitter/android/media/imageeditor/stickers/d;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/stickers/d;->a(Lcom/twitter/android/media/imageeditor/stickers/d;)Lcom/twitter/android/media/imageeditor/stickers/i;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/e;->a:Lcpf;

    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/stickers/e;->b:Lcpy;

    iget v2, v2, Lcpy;->c:I

    iget-object v3, p0, Lcom/twitter/android/media/imageeditor/stickers/e;->c:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v3}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/twitter/android/media/imageeditor/stickers/i;->a(Lcpf;ILandroid/graphics/drawable/Drawable;)V

    .line 125
    return-void
.end method
