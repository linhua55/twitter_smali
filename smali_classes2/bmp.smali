.class public Lbmp;
.super Lcom/twitter/library/service/b;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/b",
        "<",
        "Lcom/twitter/library/service/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/twitter/model/av/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcom/twitter/model/av/o;)V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lbmp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 40
    iput-wide p3, p0, Lbmp;->a:J

    .line 41
    iput-object p5, p0, Lbmp;->b:Lcom/twitter/model/av/o;

    .line 42
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/service/d;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lbmp;->b()Lcom/twitter/library/service/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/twitter/library/service/e;
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lbmp;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 48
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "amplify/marketplace/videos"

    aput-object v3, v1, v2

    .line 49
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "video_id"

    iget-wide v2, p0, Lbmp;->a:J

    .line 50
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "monetize"

    iget-object v2, p0, Lbmp;->b:Lcom/twitter/model/av/o;

    .line 51
    invoke-virtual {v2}, Lcom/twitter/model/av/o;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lbmp;->b:Lcom/twitter/model/av/o;

    invoke-virtual {v1}, Lcom/twitter/model/av/o;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const-string/jumbo v1, "monetization_categorization"

    iget-object v2, p0, Lbmp;->b:Lcom/twitter/model/av/o;

    invoke-virtual {v2}, Lcom/twitter/model/av/o;->b()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/util/Collection;)Lcom/twitter/library/service/e;

    .line 57
    :cond_0
    iget-object v1, p0, Lbmp;->b:Lcom/twitter/model/av/o;

    invoke-virtual {v1}, Lcom/twitter/model/av/o;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    const-string/jumbo v1, "advertiser_blacklist"

    iget-object v2, p0, Lbmp;->b:Lcom/twitter/model/av/o;

    invoke-virtual {v2}, Lcom/twitter/model/av/o;->c()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/util/Collection;)Lcom/twitter/library/service/e;

    .line 61
    :cond_1
    iget-object v1, p0, Lbmp;->b:Lcom/twitter/model/av/o;

    invoke-virtual {v1}, Lcom/twitter/model/av/o;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 62
    const-string/jumbo v1, "monetization_category_blacklist"

    iget-object v2, p0, Lbmp;->b:Lcom/twitter/model/av/o;

    invoke-virtual {v2}, Lcom/twitter/model/av/o;->d()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/util/Collection;)Lcom/twitter/library/service/e;

    .line 65
    :cond_2
    iget-object v1, p0, Lbmp;->b:Lcom/twitter/model/av/o;

    invoke-virtual {v1}, Lcom/twitter/model/av/o;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 66
    const-string/jumbo v1, "advertiser_whitelist"

    iget-object v2, p0, Lbmp;->b:Lcom/twitter/model/av/o;

    invoke-virtual {v2}, Lcom/twitter/model/av/o;->e()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/util/Collection;)Lcom/twitter/library/service/e;

    .line 69
    :cond_3
    iget-object v1, p0, Lbmp;->b:Lcom/twitter/model/av/o;

    invoke-virtual {v1}, Lcom/twitter/model/av/o;->f()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 70
    const-string/jumbo v1, "monetization_category_whitelist"

    iget-object v2, p0, Lbmp;->b:Lcom/twitter/model/av/o;

    invoke-virtual {v2}, Lcom/twitter/model/av/o;->f()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/util/Collection;)Lcom/twitter/library/service/e;

    .line 73
    :cond_4
    return-object v0
.end method

.method protected f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method
