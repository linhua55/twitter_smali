.class public Lcom/twitter/android/timeline/cb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/widget/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/android/widget/n",
        "<",
        "Lcom/twitter/android/timeline/cn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/timeline/cn;I)V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->a:Lcom/twitter/library/api/PromotedEvent;

    iget-object v1, p1, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v1

    invoke-static {v0, v1}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v0

    invoke-virtual {v0}, Lcfv;->a()Lcft;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 20
    return-void
.end method

.method public a(Lcom/twitter/android/timeline/cn;Z)V
    .locals 2

    .prologue
    .line 24
    if-eqz p2, :cond_0

    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->ar:Lcom/twitter/library/api/PromotedEvent;

    .line 27
    :goto_0
    iget-object v1, p1, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v1

    invoke-static {v0, v1}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v0

    invoke-virtual {v0}, Lcfv;->a()Lcft;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 28
    return-void

    .line 24
    :cond_0
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->as:Lcom/twitter/library/api/PromotedEvent;

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/twitter/android/timeline/cn;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/timeline/cb;->a(Lcom/twitter/android/timeline/cn;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/twitter/android/timeline/cn;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/timeline/cb;->a(Lcom/twitter/android/timeline/cn;Z)V

    return-void
.end method

.method public a(Lcom/twitter/android/timeline/cn;)Z
    .locals 1

    .prologue
    .line 14
    iget-object v0, p1, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/twitter/android/timeline/cn;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cb;->a(Lcom/twitter/android/timeline/cn;)Z

    move-result v0

    return v0
.end method
