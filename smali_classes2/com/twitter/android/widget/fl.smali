.class Lcom/twitter/android/widget/fl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/TweetDetailView;


# direct methods
.method constructor <init>(Lcom/twitter/android/widget/TweetDetailView;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/twitter/android/widget/fl;->a:Lcom/twitter/android/widget/TweetDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/twitter/android/widget/fl;->a:Lcom/twitter/android/widget/TweetDetailView;

    invoke-static {v0}, Lcom/twitter/android/widget/TweetDetailView;->d(Lcom/twitter/android/widget/TweetDetailView;)Laci;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/fl;->a:Lcom/twitter/android/widget/TweetDetailView;

    invoke-static {v1}, Lcom/twitter/android/widget/TweetDetailView;->c(Lcom/twitter/android/widget/TweetDetailView;)Lcom/twitter/model/moments/ad;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/model/moments/ad;->b:J

    invoke-interface {v0, v2, v3}, Laci;->d(J)V

    .line 374
    return-void
.end method
