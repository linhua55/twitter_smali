.class Lcom/twitter/android/timeline/ce;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/TweetCarouselView;

.field final synthetic b:Lcom/twitter/android/timeline/cd;


# direct methods
.method constructor <init>(Lcom/twitter/android/timeline/cd;Lcom/twitter/android/widget/TweetCarouselView;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/twitter/android/timeline/ce;->b:Lcom/twitter/android/timeline/cd;

    iput-object p2, p0, Lcom/twitter/android/timeline/ce;->a:Lcom/twitter/android/widget/TweetCarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/android/timeline/ce;->b:Lcom/twitter/android/timeline/cd;

    invoke-static {v0}, Lcom/twitter/android/timeline/cd;->a(Lcom/twitter/android/timeline/cd;)Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/timeline/ce;->b:Lcom/twitter/android/timeline/cd;

    iget-object v2, p0, Lcom/twitter/android/timeline/ce;->a:Lcom/twitter/android/widget/TweetCarouselView;

    invoke-virtual {v2}, Lcom/twitter/android/widget/TweetCarouselView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/android/timeline/cd;->a(Lcom/twitter/android/timeline/cd;Lcom/twitter/model/core/Tweet;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method
