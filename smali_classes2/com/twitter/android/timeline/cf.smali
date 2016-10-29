.class Lcom/twitter/android/timeline/cf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/TweetCarouselView;

.field final synthetic b:Lcom/twitter/android/timeline/cn;

.field final synthetic c:Lcom/twitter/android/timeline/cd;


# direct methods
.method constructor <init>(Lcom/twitter/android/timeline/cd;Lcom/twitter/android/widget/TweetCarouselView;Lcom/twitter/android/timeline/cn;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/twitter/android/timeline/cf;->c:Lcom/twitter/android/timeline/cd;

    iput-object p2, p0, Lcom/twitter/android/timeline/cf;->a:Lcom/twitter/android/widget/TweetCarouselView;

    iput-object p3, p0, Lcom/twitter/android/timeline/cf;->b:Lcom/twitter/android/timeline/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    .line 88
    iget-object v0, p0, Lcom/twitter/android/timeline/cf;->a:Lcom/twitter/android/widget/TweetCarouselView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetCarouselView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/timeline/cf;->c:Lcom/twitter/android/timeline/cd;

    invoke-static {v1}, Lcom/twitter/android/timeline/cd;->b(Lcom/twitter/android/timeline/cd;)Lcom/twitter/library/util/FriendshipCache;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/timeline/cf;->c:Lcom/twitter/android/timeline/cd;

    invoke-static {v2}, Lcom/twitter/android/timeline/cd;->a(Lcom/twitter/android/timeline/cd;)Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/timeline/cf;->c:Lcom/twitter/android/timeline/cd;

    .line 89
    invoke-static {v3}, Lcom/twitter/android/timeline/cd;->c(Lcom/twitter/android/timeline/cd;)Lcom/twitter/android/sn;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/timeline/cf;->b:Lcom/twitter/android/timeline/cn;

    invoke-virtual {v4}, Lcom/twitter/android/timeline/cn;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/timeline/cf;->c:Lcom/twitter/android/timeline/cd;

    invoke-static {v5}, Lcom/twitter/android/timeline/cd;->d(Lcom/twitter/android/timeline/cd;)Lcom/twitter/ui/view/s;

    move-result-object v5

    iget-boolean v5, v5, Lcom/twitter/ui/view/s;->f:Z

    const/4 v6, 0x0

    .line 88
    invoke-static/range {v0 .. v6}, Lcom/twitter/android/tj;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Landroid/support/v4/app/FragmentActivity;Lciv;Ljava/lang/String;ZLjava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method
