.class Lcom/twitter/android/media/widget/c;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/media/EditableMedia;

.field final synthetic b:Lcom/twitter/android/media/widget/AttachmentMediaView;


# direct methods
.method constructor <init>(Lcom/twitter/android/media/widget/AttachmentMediaView;Lcom/twitter/model/media/EditableMedia;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/twitter/android/media/widget/c;->b:Lcom/twitter/android/media/widget/AttachmentMediaView;

    iput-object p2, p0, Lcom/twitter/android/media/widget/c;->a:Lcom/twitter/model/media/EditableMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/twitter/android/media/widget/c;->b:Lcom/twitter/android/media/widget/AttachmentMediaView;

    invoke-static {v0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->a(Lcom/twitter/android/media/widget/AttachmentMediaView;)Lcom/twitter/android/media/widget/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/twitter/android/media/widget/c;->b:Lcom/twitter/android/media/widget/AttachmentMediaView;

    invoke-static {v0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->a(Lcom/twitter/android/media/widget/AttachmentMediaView;)Lcom/twitter/android/media/widget/f;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/media/widget/c;->a:Lcom/twitter/model/media/EditableMedia;

    iget-object v2, p0, Lcom/twitter/android/media/widget/c;->b:Lcom/twitter/android/media/widget/AttachmentMediaView;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/media/widget/f;->c(Lcom/twitter/model/media/EditableMedia;Lcom/twitter/android/media/widget/AttachmentMediaView;)V

    .line 126
    :cond_0
    return-void
.end method
