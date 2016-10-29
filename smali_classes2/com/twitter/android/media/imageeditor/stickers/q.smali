.class Lcom/twitter/android/media/imageeditor/stickers/q;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcpf;

.field final synthetic b:Lcom/twitter/android/media/imageeditor/stickers/p;


# direct methods
.method constructor <init>(Lcom/twitter/android/media/imageeditor/stickers/p;Lcpf;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/stickers/q;->b:Lcom/twitter/android/media/imageeditor/stickers/p;

    iput-object p2, p0, Lcom/twitter/android/media/imageeditor/stickers/q;->a:Lcpf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/q;->b:Lcom/twitter/android/media/imageeditor/stickers/p;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/stickers/p;->b(Lcom/twitter/android/media/imageeditor/stickers/p;)Lcom/twitter/android/media/imageeditor/stickers/r;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/q;->b:Lcom/twitter/android/media/imageeditor/stickers/p;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/stickers/p;->a(Lcom/twitter/android/media/imageeditor/stickers/p;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/stickers/q;->a:Lcpf;

    invoke-interface {v1, v0, v2}, Lcom/twitter/android/media/imageeditor/stickers/r;->a(Lcpf;Lcpf;)V

    .line 42
    return-void
.end method
