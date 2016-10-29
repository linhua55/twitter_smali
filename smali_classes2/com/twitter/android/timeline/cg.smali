.class Lcom/twitter/android/timeline/cg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/TweetCarouselView;

.field final synthetic b:Lcom/twitter/android/timeline/cn;

.field final synthetic c:Lcom/twitter/android/timeline/cd;


# direct methods
.method constructor <init>(Lcom/twitter/android/timeline/cd;Lcom/twitter/android/widget/TweetCarouselView;Lcom/twitter/android/timeline/cn;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/twitter/android/timeline/cg;->c:Lcom/twitter/android/timeline/cd;

    iput-object p2, p0, Lcom/twitter/android/timeline/cg;->a:Lcom/twitter/android/widget/TweetCarouselView;

    iput-object p3, p0, Lcom/twitter/android/timeline/cg;->b:Lcom/twitter/android/timeline/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/android/timeline/cg;->a:Lcom/twitter/android/widget/TweetCarouselView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetCarouselView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 99
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 100
    check-cast v0, Landroid/view/ViewGroup;

    .line 101
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/timeline/cg;->c:Lcom/twitter/android/timeline/cd;

    invoke-static {v1}, Lcom/twitter/android/timeline/cd;->c(Lcom/twitter/android/timeline/cd;)Lcom/twitter/android/sn;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/timeline/cg;->a:Lcom/twitter/android/widget/TweetCarouselView;

    invoke-virtual {v2}, Lcom/twitter/android/widget/TweetCarouselView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/timeline/cg;->c:Lcom/twitter/android/timeline/cd;

    .line 104
    invoke-static {v3}, Lcom/twitter/android/timeline/cd;->a(Lcom/twitter/android/timeline/cd;)Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/timeline/cg;->b:Lcom/twitter/android/timeline/cn;

    invoke-virtual {v4}, Lcom/twitter/android/timeline/cn;->d()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 106
    :cond_1
    return-void
.end method
