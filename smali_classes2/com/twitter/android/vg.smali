.class Lcom/twitter/android/vg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laum",
        "<",
        "Lcom/twitter/model/av/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetFragment2;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment2;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/twitter/android/vg;->a:Lcom/twitter/android/TweetFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/twitter/model/av/o;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 410
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/twitter/android/vg;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->d(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/vg;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->d(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->R()Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_0

    .line 421
    new-instance v1, Lbmp;

    iget-object v2, p0, Lcom/twitter/android/vg;->a:Lcom/twitter/android/TweetFragment2;

    .line 422
    invoke-virtual {v2}, Lcom/twitter/android/TweetFragment2;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/vg;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v3}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, v0, Lcom/twitter/model/core/MediaEntity;->c:J

    .line 423
    invoke-static {p2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/model/av/o;

    invoke-direct/range {v1 .. v6}, Lbmp;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcom/twitter/model/av/o;)V

    .line 424
    iget-object v0, p0, Lcom/twitter/android/vg;->a:Lcom/twitter/android/TweetFragment2;

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, v7}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/android/TweetFragment2;Lcom/twitter/library/service/x;II)Z

    .line 426
    iget-object v0, p0, Lcom/twitter/android/vg;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->e(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/vr;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/twitter/android/vr;->a(Lcom/twitter/model/av/o;)V

    .line 427
    iget-object v0, p0, Lcom/twitter/android/vg;->a:Lcom/twitter/android/TweetFragment2;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0, p2, v7}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/model/av/o;Z)V

    goto :goto_0
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 406
    check-cast p2, Lcom/twitter/model/av/o;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/vg;->a(ILcom/twitter/model/av/o;)V

    return-void
.end method
