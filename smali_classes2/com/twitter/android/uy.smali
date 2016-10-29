.class Lcom/twitter/android/uy;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/model/core/Tweet;

.field final synthetic b:Lcom/twitter/android/ux;


# direct methods
.method constructor <init>(Lcom/twitter/android/ux;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/twitter/android/uy;->b:Lcom/twitter/android/ux;

    iput-object p2, p0, Lcom/twitter/android/uy;->a:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/twitter/android/uy;->b:Lcom/twitter/android/ux;

    iget-object v0, v0, Lcom/twitter/android/ux;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->b(Lcom/twitter/android/TweetFragment2;)Ljava/util/List;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/twitter/android/uy;->a:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 366
    iget-object v1, p0, Lcom/twitter/android/uy;->b:Lcom/twitter/android/ux;

    iget-object v1, v1, Lcom/twitter/android/ux;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v1}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/vo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/vo;->a(Ljava/util/List;Z)V

    .line 368
    return-void
.end method
