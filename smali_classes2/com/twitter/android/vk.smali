.class Lcom/twitter/android/vk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lcom/twitter/android/ao;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/vr;

.field final synthetic b:Lcom/twitter/android/TweetFragment2;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment2;Lcom/twitter/android/vr;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/twitter/android/vk;->b:Lcom/twitter/android/TweetFragment2;

    iput-object p2, p0, Lcom/twitter/android/vk;->a:Lcom/twitter/android/vr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/ao;)V
    .locals 3

    .prologue
    .line 826
    .line 827
    invoke-virtual {p1}, Lcom/twitter/android/ao;->a()Lcom/twitter/model/av/o;

    move-result-object v1

    .line 829
    if-eqz v1, :cond_0

    .line 830
    iget-object v0, p0, Lcom/twitter/android/vk;->a:Lcom/twitter/android/vr;

    invoke-virtual {v0, v1}, Lcom/twitter/android/vr;->a(Lcom/twitter/model/av/o;)V

    .line 831
    iget-object v0, p0, Lcom/twitter/android/vk;->b:Lcom/twitter/android/TweetFragment2;

    iget-object v2, v0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    .line 832
    invoke-virtual {p1}, Lcom/twitter/android/ao;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 831
    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/model/av/o;Z)V

    .line 834
    :cond_0
    return-void

    .line 832
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 823
    check-cast p1, Lcom/twitter/android/ao;

    invoke-virtual {p0, p1}, Lcom/twitter/android/vk;->a(Lcom/twitter/android/ao;)V

    return-void
.end method
