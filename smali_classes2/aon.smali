.class Laon;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laom;


# direct methods
.method constructor <init>(Laom;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Laon;->a:Laom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoo;

    .line 65
    iget-object v2, v0, Laoo;->d:Lcom/twitter/library/widget/TweetView;

    .line 66
    invoke-virtual {v2}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v3

    .line 67
    if-eqz v3, :cond_0

    .line 68
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v4, p0, Laon;->a:Laom;

    .line 69
    invoke-static {v4}, Laom;->b(Laom;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Laon;->a:Laom;

    invoke-static {v5}, Laom;->a(Laom;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    new-array v4, v10, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Laon;->a:Laom;

    .line 70
    invoke-static {v6}, Laom;->a(Laom;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v6

    const-string/jumbo v7, "tweet"

    const-string/jumbo v8, "tweet"

    const-string/jumbo v9, "click"

    invoke-static {v6, v7, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v4, p0, Laon;->a:Laom;

    .line 71
    invoke-static {v4}, Laom;->a(Laom;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 72
    invoke-virtual {v2}, Lcom/twitter/library/widget/TweetView;->getScribeItem()Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 73
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    .line 74
    invoke-virtual {v1, v10}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-wide v4, v3, Lcom/twitter/model/core/Tweet;->p:J

    .line 75
    invoke-virtual {v1, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v2, p0, Laon;->a:Laom;

    .line 76
    invoke-static {v2}, Laom;->a(Laom;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v2, p0, Laon;->a:Laom;

    .line 77
    invoke-static {v2}, Laom;->a(Laom;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v0, v0, Laoo;->a:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 79
    new-instance v1, Lcom/twitter/android/ty;

    iget-object v2, p0, Laon;->a:Laom;

    invoke-static {v2}, Laom;->b(Laom;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/android/ty;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Laon;->a:Laom;

    .line 80
    invoke-static {v2}, Laom;->c(Laom;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/ty;->a(Z)Lcom/twitter/android/ty;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v0}, Lcom/twitter/android/ty;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/android/ty;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v3}, Lcom/twitter/android/ty;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/ty;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/twitter/android/ty;->b()V

    .line 85
    :cond_0
    return-void
.end method
