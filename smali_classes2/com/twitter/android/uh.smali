.class Lcom/twitter/android/uh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/media/widget/z;


# instance fields
.field final synthetic a:Lcom/twitter/library/widget/TweetView;

.field final synthetic b:Lcom/twitter/android/TweetFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/widget/TweetView;)V
    .locals 0

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/twitter/android/uh;->b:Lcom/twitter/android/TweetFragment;

    iput-object p2, p0, Lcom/twitter/android/uh;->a:Lcom/twitter/library/widget/TweetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/media/widget/TweetMediaView;Lclw;Z)V
    .locals 3

    .prologue
    .line 2044
    if-eqz p3, :cond_0

    .line 2045
    iget-object v0, p0, Lcom/twitter/android/uh;->b:Lcom/twitter/android/TweetFragment;

    const-string/jumbo v1, "show"

    iget-object v2, p0, Lcom/twitter/android/uh;->a:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v2}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    .line 2047
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/media/widget/TweetMediaView;Lcom/twitter/model/core/MediaEntity;Z)V
    .locals 3

    .prologue
    .line 2051
    if-eqz p3, :cond_0

    .line 2052
    iget-object v0, p0, Lcom/twitter/android/uh;->b:Lcom/twitter/android/TweetFragment;

    const-string/jumbo v1, "show"

    iget-object v2, p0, Lcom/twitter/android/uh;->a:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v2}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    .line 2054
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/media/widget/TweetMediaView;Lcom/twitter/model/media/EditableMedia;Z)V
    .locals 3

    .prologue
    .line 2059
    if-eqz p3, :cond_0

    .line 2060
    iget-object v0, p0, Lcom/twitter/android/uh;->b:Lcom/twitter/android/TweetFragment;

    const-string/jumbo v1, "show"

    iget-object v2, p0, Lcom/twitter/android/uh;->a:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v2}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    .line 2062
    :cond_0
    return-void
.end method
