.class final enum Lcom/twitter/android/client/tweetuploadmanager/TweetUploadManager$TweetUploadState$4;
.super Lcom/twitter/android/client/tweetuploadmanager/TweetUploadManager$TweetUploadState;
.source "Twttr"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/client/tweetuploadmanager/TweetUploadManager$TweetUploadState;-><init>(Ljava/lang/String;ILcom/twitter/android/client/tweetuploadmanager/e;)V

    return-void
.end method


# virtual methods
.method public a()Lvv;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lvw;

    invoke-direct {v0}, Lvw;-><init>()V

    return-object v0
.end method

.method public a(Lcom/twitter/android/client/tweetuploadmanager/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitter/android/client/tweetuploadmanager/TweetUploadException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {p1}, Lvw;->b(Lcom/twitter/android/client/tweetuploadmanager/c;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/twitter/android/client/tweetuploadmanager/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitter/android/client/tweetuploadmanager/TweetUploadException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {p1}, Lvw;->c(Lcom/twitter/android/client/tweetuploadmanager/c;)Z

    move-result v0

    return v0
.end method
