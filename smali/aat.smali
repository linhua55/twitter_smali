.class Laat;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Laau;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/twitter/library/scribe/bj;

.field private final f:J

.field private final g:J

.field private h:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;Landroid/content/Context;Lcom/twitter/library/scribe/bj;JJ)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laat;->a:Ljava/util/List;

    .line 32
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Laat;->b:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Laat;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 50
    iput-object p2, p0, Laat;->d:Landroid/content/Context;

    .line 51
    iput-wide p4, p0, Laat;->f:J

    .line 52
    iput-wide p6, p0, Laat;->g:J

    .line 53
    iput-object p3, p0, Laat;->e:Lcom/twitter/library/scribe/bj;

    .line 54
    return-void
.end method

.method static synthetic a(Laat;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Laat;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Laat;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Laat;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Laat;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Laat;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method static synthetic d(Laat;)Lcom/twitter/library/scribe/bj;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Laat;->e:Lcom/twitter/library/scribe/bj;

    return-object v0
.end method

.method static synthetic e(Laat;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Laat;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Laat;)J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Laat;->g:J

    return-wide v0
.end method

.method static synthetic g(Laat;)J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Laat;->f:J

    return-wide v0
.end method


# virtual methods
.method a(Landroid/view/View;)Lcom/twitter/model/core/Tweet;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vy;

    .line 96
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(JZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Laat;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laau;

    .line 87
    invoke-virtual {v0, p1, p2, p3}, Laau;->a(JZ)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Laat;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/view/View;Lcom/twitter/model/core/Tweet;)V
    .locals 4

    .prologue
    .line 61
    iget-wide v2, p2, Lcom/twitter/model/core/Tweet;->K:J

    .line 62
    iget-object v0, p0, Laat;->b:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laau;

    .line 63
    if-nez v0, :cond_0

    .line 64
    new-instance v0, Laau;

    invoke-direct {v0, p0, p1, p2}, Laau;-><init>(Laat;Landroid/view/View;Lcom/twitter/model/core/Tweet;)V

    .line 65
    iget-object v1, p0, Laat;->b:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_0
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Laau;->a(JZ)V

    .line 70
    return-void

    .line 67
    :cond_0
    invoke-virtual {v0, p1}, Laau;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Laat;->h:Landroid/widget/ListView;

    .line 58
    return-void
.end method
