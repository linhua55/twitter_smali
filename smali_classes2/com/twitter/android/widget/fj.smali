.class Lcom/twitter/android/widget/fj;
.super Lcom/twitter/library/view/b;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/model/core/Tweet;

.field final synthetic b:Lcom/twitter/android/widget/TweetCarouselView;


# direct methods
.method constructor <init>(Lcom/twitter/android/widget/TweetCarouselView;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/twitter/android/widget/fj;->b:Lcom/twitter/android/widget/TweetCarouselView;

    iput-object p2, p0, Lcom/twitter/android/widget/fj;->a:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0}, Lcom/twitter/library/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/cx;)V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/twitter/android/widget/fj;->a:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/fj;->b:Lcom/twitter/android/widget/TweetCarouselView;

    invoke-static {v0}, Lcom/twitter/android/widget/TweetCarouselView;->d(Lcom/twitter/android/widget/TweetCarouselView;)Lcom/twitter/android/sn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/twitter/android/widget/fj;->b:Lcom/twitter/android/widget/TweetCarouselView;

    invoke-static {v0}, Lcom/twitter/android/widget/TweetCarouselView;->a(Lcom/twitter/android/widget/TweetCarouselView;)Lcom/twitter/android/vw;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/fj;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1, p1}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;)V

    .line 282
    :cond_0
    return-void
.end method
