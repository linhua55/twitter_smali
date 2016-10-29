.class Lcom/twitter/android/ub;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/model/core/Tweet;

.field final synthetic b:Lcom/twitter/android/ua;


# direct methods
.method constructor <init>(Lcom/twitter/android/ua;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/twitter/android/ub;->b:Lcom/twitter/android/ua;

    iput-object p2, p0, Lcom/twitter/android/ub;->a:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/twitter/android/ub;->b:Lcom/twitter/android/ua;

    iget-object v0, v0, Lcom/twitter/android/ua;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment;->b(Lcom/twitter/android/TweetFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ub;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lcom/twitter/android/ub;->b:Lcom/twitter/android/ua;

    iget-object v0, v0, Lcom/twitter/android/ua;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/uu;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ub;->b:Lcom/twitter/android/ua;

    iget-object v1, v1, Lcom/twitter/android/ua;->a:Lcom/twitter/android/TweetFragment;

    .line 365
    invoke-static {v1}, Lcom/twitter/android/TweetFragment;->b(Lcom/twitter/android/TweetFragment;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    .line 364
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/uu;->a(Ljava/util/List;Z)V

    .line 366
    return-void
.end method
