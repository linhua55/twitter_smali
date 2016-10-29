.class Lcom/twitter/library/widget/az;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/n;


# instance fields
.field final synthetic a:Lcom/twitter/library/widget/TweetView;


# direct methods
.method constructor <init>(Lcom/twitter/library/widget/TweetView;)V
    .locals 0

    .prologue
    .line 1941
    iput-object p1, p0, Lcom/twitter/library/widget/az;->a:Lcom/twitter/library/widget/TweetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/TweetActionType;)V
    .locals 2

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/twitter/library/widget/az;->a:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/TweetView;->b(Lcom/twitter/model/core/TweetActionType;)V

    .line 1947
    iget-object v0, p0, Lcom/twitter/library/widget/az;->a:Lcom/twitter/library/widget/TweetView;

    invoke-static {v0}, Lcom/twitter/library/widget/TweetView;->c(Lcom/twitter/library/widget/TweetView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1948
    iget-object v0, p0, Lcom/twitter/library/widget/az;->a:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/TweetView;->getActionPrompt()Lcom/twitter/model/timeline/w;

    move-result-object v0

    .line 1949
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/timeline/w;->j()Lcom/twitter/model/core/TweetActionType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/twitter/library/widget/az;->a:Lcom/twitter/library/widget/TweetView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/TweetView;->b(I)V

    .line 1953
    :cond_0
    return-void
.end method
