.class Laxe;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/media/widget/f;


# instance fields
.field final synthetic a:Lawv;


# direct methods
.method constructor <init>(Lawv;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Laxe;->a:Lawv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Laxe;->a:Lawv;

    invoke-static {v0}, Lawv;->e(Lawv;)Lawu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Laxe;->a:Lawv;

    invoke-static {v0}, Lawv;->e(Lawv;)Lawu;

    move-result-object v0

    invoke-interface {v0}, Lawu;->e()V

    .line 600
    :cond_0
    iget-object v0, p0, Laxe;->a:Lawv;

    invoke-static {v0}, Lawv;->m(Lawv;)V

    .line 601
    return-void
.end method

.method public a(Lcom/twitter/model/media/EditableMedia;Lcom/twitter/android/media/widget/AttachmentMediaView;)V
    .locals 4

    .prologue
    .line 605
    iget-object v0, p0, Laxe;->a:Lawv;

    invoke-static {v0}, Lawv;->n(Lawv;)Lcom/twitter/android/media/selection/MediaAttachment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxe;->a:Lawv;

    invoke-static {v0}, Lawv;->n(Lawv;)Lcom/twitter/android/media/selection/MediaAttachment;

    move-result-object v0

    iget v0, v0, Lcom/twitter/android/media/selection/MediaAttachment;->a:I

    if-nez v0, :cond_0

    .line 606
    invoke-virtual {p1}, Lcom/twitter/model/media/EditableMedia;->g()Lcom/twitter/media/model/MediaType;

    move-result-object v0

    sget-object v1, Lcom/twitter/media/model/MediaType;->c:Lcom/twitter/media/model/MediaType;

    if-eq v0, v1, :cond_0

    .line 607
    iget-object v0, p0, Laxe;->a:Lawv;

    invoke-static {v0}, Lawv;->o(Lawv;)Lcom/twitter/android/media/selection/MediaAttachmentController;

    move-result-object v1

    iget-object v0, p0, Laxe;->a:Lawv;

    .line 609
    invoke-static {v0}, Lawv;->n(Lawv;)Lcom/twitter/android/media/selection/MediaAttachment;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/selection/MediaAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 608
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableMedia;

    const/4 v2, 0x0

    iget-object v3, p0, Laxe;->a:Lawv;

    .line 607
    invoke-virtual {v1, v0, v2, v3}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Lcom/twitter/model/media/EditableMedia;Landroid/view/View;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 612
    :cond_0
    return-void
.end method

.method public b(Lcom/twitter/model/media/EditableMedia;Lcom/twitter/android/media/widget/AttachmentMediaView;)V
    .locals 0

    .prologue
    .line 617
    return-void
.end method

.method public c(Lcom/twitter/model/media/EditableMedia;Lcom/twitter/android/media/widget/AttachmentMediaView;)V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public d(Lcom/twitter/model/media/EditableMedia;Lcom/twitter/android/media/widget/AttachmentMediaView;)V
    .locals 0

    .prologue
    .line 627
    return-void
.end method
