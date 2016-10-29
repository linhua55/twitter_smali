.class Lcom/twitter/library/api/dm/requests/u;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/model/drafts/DraftAttachment;

.field final synthetic b:Lcom/twitter/library/api/dm/requests/s;


# direct methods
.method constructor <init>(Lcom/twitter/library/api/dm/requests/s;Lcom/twitter/model/drafts/DraftAttachment;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/u;->b:Lcom/twitter/library/api/dm/requests/s;

    iput-object p2, p0, Lcom/twitter/library/api/dm/requests/u;->a:Lcom/twitter/model/drafts/DraftAttachment;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 149
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/dm/requests/u;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/u;->b:Lcom/twitter/library/api/dm/requests/s;

    invoke-static {v0}, Lcom/twitter/library/api/dm/requests/s;->b(Lcom/twitter/library/api/dm/requests/s;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/u;->b:Lcom/twitter/library/api/dm/requests/s;

    invoke-static {v0, v3}, Lcom/twitter/library/api/dm/requests/s;->a(Lcom/twitter/library/api/dm/requests/s;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    check-cast p1, Lcom/twitter/library/media/manager/k;

    invoke-virtual {p1}, Lcom/twitter/library/media/manager/k;->a()Lcom/twitter/media/model/MediaFile;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/u;->a:Lcom/twitter/model/drafts/DraftAttachment;

    iget-object v1, v1, Lcom/twitter/model/drafts/DraftAttachment;->e:Landroid/net/Uri;

    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/u;->a:Lcom/twitter/model/drafts/DraftAttachment;

    iget-object v2, v2, Lcom/twitter/model/drafts/DraftAttachment;->h:Lcom/twitter/model/media/MediaSource;

    invoke-static {v0, v1, v2}, Lcom/twitter/model/media/EditableMedia;->a(Lcom/twitter/media/model/MediaFile;Landroid/net/Uri;Lcom/twitter/model/media/MediaSource;)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 165
    instance-of v1, v0, Lcom/twitter/model/media/EditableAnimatedGif;

    if-nez v1, :cond_2

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "found media downloaded non-gif media "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/u;->a:Lcom/twitter/model/drafts/DraftAttachment;

    iget-object v2, v2, Lcom/twitter/model/drafts/DraftAttachment;->f:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/u;->a:Lcom/twitter/model/drafts/DraftAttachment;

    invoke-virtual {v1, v3}, Lcom/twitter/model/drafts/DraftAttachment;->b(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/util/concurrent/j;

    .line 171
    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/u;->b:Lcom/twitter/library/api/dm/requests/s;

    new-instance v2, Lcom/twitter/model/drafts/DraftAttachment;

    invoke-direct {v2, v0}, Lcom/twitter/model/drafts/DraftAttachment;-><init>(Lcom/twitter/model/media/EditableMedia;)V

    invoke-virtual {v1, v2}, Lcom/twitter/library/api/dm/requests/s;->a(Lcom/twitter/model/drafts/DraftAttachment;)V

    goto :goto_0
.end method
