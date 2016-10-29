.class Lcom/twitter/android/ui;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/twitter/android/TweetFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 2563
    iput-object p1, p0, Lcom/twitter/android/ui;->b:Lcom/twitter/android/TweetFragment;

    iput-object p2, p0, Lcom/twitter/android/ui;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/twitter/android/ui;->b:Lcom/twitter/android/TweetFragment;

    new-instance v1, Lbrp;

    iget-object v2, p0, Lcom/twitter/android/ui;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/twitter/android/ui;->b:Lcom/twitter/android/TweetFragment;

    .line 2567
    invoke-static {v3}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/ui;->b:Lcom/twitter/android/TweetFragment;

    .line 2568
    invoke-static {v4}, Lcom/twitter/android/TweetFragment;->d(Lcom/twitter/android/TweetFragment;)Lcom/twitter/model/core/Tweet;

    move-result-object v4

    iget-wide v4, v4, Lcom/twitter/model/core/Tweet;->p:J

    iget-object v6, p0, Lcom/twitter/android/ui;->b:Lcom/twitter/android/TweetFragment;

    .line 2569
    invoke-static {v6}, Lcom/twitter/android/TweetFragment;->d(Lcom/twitter/android/TweetFragment;)Lcom/twitter/model/core/Tweet;

    move-result-object v6

    iget-wide v6, v6, Lcom/twitter/model/core/Tweet;->q:J

    invoke-direct/range {v1 .. v7}, Lbrp;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V

    iget-object v2, p0, Lcom/twitter/android/ui;->b:Lcom/twitter/android/TweetFragment;

    .line 2570
    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->d(Lcom/twitter/android/TweetFragment;)Lcom/twitter/model/core/Tweet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbrp;->a(Lcss;)Lbrp;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/ui;->b:Lcom/twitter/android/TweetFragment;

    .line 2571
    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->d(Lcom/twitter/android/TweetFragment;)Lcom/twitter/model/core/Tweet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->l()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbrp;->a(Ljava/lang/Boolean;)Lbrp;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 2566
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/TweetFragment;->e(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/service/x;II)Z

    .line 2574
    iget-object v0, p0, Lcom/twitter/android/ui;->b:Lcom/twitter/android/TweetFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/TweetFragment;->b(Lcom/twitter/android/TweetFragment;Z)V

    .line 2575
    iget-object v0, p0, Lcom/twitter/android/ui;->b:Lcom/twitter/android/TweetFragment;

    const-string/jumbo v1, "favorite"

    invoke-static {v0, v1}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;Ljava/lang/String;)V

    .line 2576
    return-void
.end method
