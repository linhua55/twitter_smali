.class Lcom/twitter/android/ue;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/android/TweetFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment;J)V
    .locals 0

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/twitter/android/ue;->b:Lcom/twitter/android/TweetFragment;

    iput-wide p2, p0, Lcom/twitter/android/ue;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/twitter/android/ue;->b:Lcom/twitter/android/TweetFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment;->f(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/ut;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ue;->b:Lcom/twitter/android/TweetFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment;->w(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/widget/PageableListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/twitter/android/ue;->b:Lcom/twitter/android/TweetFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment;->f(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/ut;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/ue;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/ut;->c(J)V

    .line 1840
    iget-object v0, p0, Lcom/twitter/android/ue;->b:Lcom/twitter/android/TweetFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment;->w(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/widget/PageableListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/PageableListView;->b(Z)V

    .line 1842
    :cond_0
    return-void
.end method
