.class Lcom/twitter/android/widget/ft;
.super Lcom/twitter/ui/view/a;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/TweetDetailView;

.field private final b:Lcom/twitter/model/core/Tweet;

.field private final c:J


# direct methods
.method constructor <init>(Lcom/twitter/android/widget/TweetDetailView;Landroid/content/Context;Lcom/twitter/model/core/Tweet;J)V
    .locals 2

    .prologue
    .line 947
    iput-object p1, p0, Lcom/twitter/android/widget/ft;->a:Lcom/twitter/android/widget/TweetDetailView;

    .line 948
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/ui/view/a;-><init>(I)V

    .line 949
    iput-object p3, p0, Lcom/twitter/android/widget/ft;->b:Lcom/twitter/model/core/Tweet;

    .line 950
    iput-wide p4, p0, Lcom/twitter/android/widget/ft;->c:J

    .line 951
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 955
    iget-object v0, p0, Lcom/twitter/android/widget/ft;->b:Lcom/twitter/model/core/Tweet;

    iget-object v0, v0, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    .line 956
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/widget/ft;->a:Lcom/twitter/android/widget/TweetDetailView;

    invoke-static {v0}, Lcom/twitter/android/widget/TweetDetailView;->b(Lcom/twitter/android/widget/TweetDetailView;)Lcom/twitter/library/view/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/twitter/android/widget/ft;->a:Lcom/twitter/android/widget/TweetDetailView;

    invoke-static {v0}, Lcom/twitter/android/widget/TweetDetailView;->b(Lcom/twitter/android/widget/TweetDetailView;)Lcom/twitter/library/view/m;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/ft;->b:Lcom/twitter/model/core/Tweet;

    iget-object v1, v1, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    invoke-interface {v0, v1}, Lcom/twitter/library/view/m;->a(Lcom/twitter/model/geo/TwitterPlace;)V

    .line 961
    const-string/jumbo v0, "tweet_footer"

    iget-object v1, p0, Lcom/twitter/android/widget/ft;->b:Lcom/twitter/model/core/Tweet;

    iget-wide v2, p0, Lcom/twitter/android/widget/ft;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/widget/TweetDetailView;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;J)V

    goto :goto_0
.end method
