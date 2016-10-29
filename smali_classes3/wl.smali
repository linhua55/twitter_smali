.class Lwl;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/util/concurrent/ObservablePromise;

.field final synthetic b:Lcom/twitter/android/client/tweetuploadmanager/c;

.field final synthetic c:Lcom/twitter/model/drafts/DraftAttachment;

.field final synthetic d:Lcom/twitter/model/drafts/d;

.field final synthetic e:Lwk;


# direct methods
.method constructor <init>(Lwk;Lcom/twitter/util/concurrent/ObservablePromise;Lcom/twitter/android/client/tweetuploadmanager/c;Lcom/twitter/model/drafts/DraftAttachment;Lcom/twitter/model/drafts/d;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lwl;->e:Lwk;

    iput-object p2, p0, Lwl;->a:Lcom/twitter/util/concurrent/ObservablePromise;

    iput-object p3, p0, Lwl;->b:Lcom/twitter/android/client/tweetuploadmanager/c;

    iput-object p4, p0, Lwl;->c:Lcom/twitter/model/drafts/DraftAttachment;

    iput-object p5, p0, Lwl;->d:Lcom/twitter/model/drafts/d;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 61
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lwl;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 5
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 65
    iget-object v0, p0, Lwl;->e:Lwk;

    iget-object v0, v0, Lwk;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lwl;->e:Lwk;

    iput-object v4, v0, Lwk;->a:Ljava/lang/String;

    .line 70
    check-cast p1, Lcom/twitter/library/media/manager/k;

    invoke-virtual {p1}, Lcom/twitter/library/media/manager/k;->a()Lcom/twitter/media/model/MediaFile;

    move-result-object v0

    .line 71
    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lwl;->a:Lcom/twitter/util/concurrent/ObservablePromise;

    new-instance v1, Lcom/twitter/android/client/tweetuploadmanager/TweetUploadException;

    iget-object v2, p0, Lwl;->b:Lcom/twitter/android/client/tweetuploadmanager/c;

    const-string/jumbo v3, "cannot download media"

    invoke-direct {v1, v2, v3}, Lcom/twitter/android/client/tweetuploadmanager/TweetUploadException;-><init>(Lcom/twitter/android/client/tweetuploadmanager/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/util/concurrent/ObservablePromise;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, p0, Lwl;->c:Lcom/twitter/model/drafts/DraftAttachment;

    iget-object v1, v1, Lcom/twitter/model/drafts/DraftAttachment;->e:Landroid/net/Uri;

    iget-object v2, p0, Lwl;->c:Lcom/twitter/model/drafts/DraftAttachment;

    iget-object v2, v2, Lcom/twitter/model/drafts/DraftAttachment;->h:Lcom/twitter/model/media/MediaSource;

    .line 77
    invoke-static {v0, v1, v2}, Lcom/twitter/model/media/EditableMedia;->a(Lcom/twitter/media/model/MediaFile;Landroid/net/Uri;Lcom/twitter/model/media/MediaSource;)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 78
    instance-of v1, v0, Lcom/twitter/model/media/EditableAnimatedGif;

    if-nez v1, :cond_2

    .line 79
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "found media downloaded non-gif media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lwl;->c:Lcom/twitter/model/drafts/DraftAttachment;

    iget-object v3, v3, Lcom/twitter/model/drafts/DraftAttachment;->f:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 83
    :cond_2
    iget-object v1, p0, Lwl;->c:Lcom/twitter/model/drafts/DraftAttachment;

    invoke-virtual {v1, v4}, Lcom/twitter/model/drafts/DraftAttachment;->b(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/util/concurrent/j;

    .line 85
    new-instance v1, Lcom/twitter/model/drafts/e;

    invoke-direct {v1}, Lcom/twitter/model/drafts/e;-><init>()V

    iget-object v2, p0, Lwl;->d:Lcom/twitter/model/drafts/d;

    .line 86
    invoke-virtual {v1, v2}, Lcom/twitter/model/drafts/e;->a(Lcom/twitter/model/drafts/d;)Lcom/twitter/model/drafts/e;

    move-result-object v1

    new-instance v2, Lcom/twitter/model/drafts/DraftAttachment;

    invoke-direct {v2, v0}, Lcom/twitter/model/drafts/DraftAttachment;-><init>(Lcom/twitter/model/media/EditableMedia;)V

    .line 87
    invoke-static {v2}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/model/drafts/e;->a(Ljava/util/List;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/d;

    .line 89
    iget-object v1, p0, Lwl;->b:Lcom/twitter/android/client/tweetuploadmanager/c;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/tweetuploadmanager/c;->a(Lcom/twitter/model/drafts/d;)V

    .line 90
    iget-object v0, p0, Lwl;->a:Lcom/twitter/util/concurrent/ObservablePromise;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/concurrent/ObservablePromise;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
