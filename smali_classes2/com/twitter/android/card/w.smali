.class Lcom/twitter/android/card/w;
.super Lcom/twitter/util/ui/c;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/card/ConsumerPollCard;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/ConsumerPollCard;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/twitter/android/card/w;->a:Lcom/twitter/android/card/ConsumerPollCard;

    invoke-direct {p0}, Lcom/twitter/util/ui/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-object v0, p0, Lcom/twitter/android/card/w;->a:Lcom/twitter/android/card/ConsumerPollCard;

    invoke-static {v0}, Lcom/twitter/android/card/ConsumerPollCard;->a(Lcom/twitter/android/card/ConsumerPollCard;)Landroid/widget/ViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 338
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/card/w;->a:Lcom/twitter/android/card/ConsumerPollCard;

    invoke-static {v2}, Lcom/twitter/android/card/ConsumerPollCard;->b(Lcom/twitter/android/card/ConsumerPollCard;)Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    move-result-object v2

    iget v2, v2, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    if-ge v0, v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/twitter/android/card/w;->a:Lcom/twitter/android/card/ConsumerPollCard;

    invoke-static {v2}, Lcom/twitter/android/card/ConsumerPollCard;->c(Lcom/twitter/android/card/ConsumerPollCard;)[Lcom/twitter/android/card/PollResultBarView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/twitter/android/card/PollResultBarView;->setPercentage(I)V

    .line 340
    iget-object v2, p0, Lcom/twitter/android/card/w;->a:Lcom/twitter/android/card/ConsumerPollCard;

    invoke-static {v2}, Lcom/twitter/android/card/ConsumerPollCard;->c(Lcom/twitter/android/card/ConsumerPollCard;)[Lcom/twitter/android/card/PollResultBarView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/twitter/android/card/PollResultBarView;->a()V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/w;->a:Lcom/twitter/android/card/ConsumerPollCard;

    invoke-static {v0, v1}, Lcom/twitter/android/card/ConsumerPollCard;->a(Lcom/twitter/android/card/ConsumerPollCard;Z)Z

    .line 344
    return-void
.end method
