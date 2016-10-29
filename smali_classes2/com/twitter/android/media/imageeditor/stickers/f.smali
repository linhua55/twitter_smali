.class Lcom/twitter/android/media/imageeditor/stickers/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcqa;

.field final synthetic b:Lcom/twitter/android/media/imageeditor/stickers/w;

.field final synthetic c:Lcom/twitter/android/media/imageeditor/stickers/d;


# direct methods
.method constructor <init>(Lcom/twitter/android/media/imageeditor/stickers/d;Lcqa;Lcom/twitter/android/media/imageeditor/stickers/w;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/stickers/f;->c:Lcom/twitter/android/media/imageeditor/stickers/d;

    iput-object p2, p0, Lcom/twitter/android/media/imageeditor/stickers/f;->a:Lcqa;

    iput-object p3, p0, Lcom/twitter/android/media/imageeditor/stickers/f;->b:Lcom/twitter/android/media/imageeditor/stickers/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/f;->c:Lcom/twitter/android/media/imageeditor/stickers/d;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/stickers/d;->b(Lcom/twitter/android/media/imageeditor/stickers/d;)Lcom/twitter/android/media/imageeditor/stickers/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/f;->a:Lcqa;

    iget-object v0, v0, Lcqa;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/twitter/android/media/imageeditor/stickers/g;

    invoke-direct {v0, p0}, Lcom/twitter/android/media/imageeditor/stickers/g;-><init>(Lcom/twitter/android/media/imageeditor/stickers/f;)V

    .line 153
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/f;->c:Lcom/twitter/android/media/imageeditor/stickers/d;

    invoke-static {v1}, Lcom/twitter/android/media/imageeditor/stickers/d;->b(Lcom/twitter/android/media/imageeditor/stickers/d;)Lcom/twitter/android/media/imageeditor/stickers/j;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/stickers/f;->a:Lcqa;

    iget-object v2, v2, Lcqa;->a:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/twitter/android/media/imageeditor/stickers/j;->a(Ljava/util/List;Lcom/twitter/android/media/imageeditor/stickers/r;)V

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
