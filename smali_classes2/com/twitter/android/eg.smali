.class public Lcom/twitter/android/eg;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/twitter/model/core/TweetActionType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 29
    invoke-static {v3}, Lcom/twitter/util/collection/v;->a(I)Lcom/twitter/util/collection/v;

    move-result-object v0

    const/4 v1, 0x1

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->f:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const/4 v1, 0x2

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->m:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->k:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 28
    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableMap;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/eg;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(I)Lcom/twitter/model/core/TweetActionType;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/twitter/android/eg;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TweetActionType;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/android/timeline/bp;)Lcom/twitter/model/timeline/l;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/twitter/android/timeline/bp;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v1

    iget v1, v1, Lcom/twitter/android/timeline/bj;->n:I

    packed-switch v1, :pswitch_data_0

    .line 69
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 60
    :pswitch_1
    invoke-static {v0, p1}, Lcom/twitter/android/eg;->a(Landroid/content/res/Resources;Lcom/twitter/android/timeline/bp;)Lcom/twitter/model/timeline/l;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_2
    invoke-static {v0, p1}, Lcom/twitter/android/eg;->b(Landroid/content/res/Resources;Lcom/twitter/android/timeline/bp;)Lcom/twitter/model/timeline/l;

    move-result-object v0

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/content/res/Resources;Lcom/twitter/android/timeline/bp;)Lcom/twitter/model/timeline/l;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 75
    instance-of v1, p1, Lcom/twitter/android/timeline/cn;

    if-eqz v1, :cond_0

    .line 76
    const-string/jumbo v1, ""

    const v2, 0x7f0a091c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast p1, Lcom/twitter/android/timeline/cn;

    iget-object v5, p1, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    iget-object v5, v5, Lcom/twitter/model/core/Tweet;->v:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 77
    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/twitter/model/timeline/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/model/timeline/i;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/twitter/util/collection/ImmutableList;->c()Lcom/twitter/util/collection/ImmutableList;

    move-result-object v1

    const v2, 0x7f0a091d

    .line 80
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v0, v1, v2}, Lcom/twitter/model/timeline/l;->a(Lcom/twitter/model/timeline/i;Ljava/util/List;Ljava/lang/String;)Lcom/twitter/model/timeline/l;

    move-result-object v0

    .line 82
    :cond_0
    return-object v0
.end method

.method private static b(Landroid/content/res/Resources;Lcom/twitter/android/timeline/bp;)Lcom/twitter/model/timeline/l;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 88
    instance-of v1, p1, Lcom/twitter/android/timeline/cn;

    if-eqz v1, :cond_0

    .line 89
    const-string/jumbo v1, ""

    const v2, 0x7f0a0586

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast p1, Lcom/twitter/android/timeline/cn;

    iget-object v5, p1, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    iget-object v5, v5, Lcom/twitter/model/core/Tweet;->v:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 90
    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/twitter/model/timeline/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/model/timeline/i;

    move-result-object v0

    .line 92
    invoke-static {}, Lcom/twitter/util/collection/ImmutableList;->c()Lcom/twitter/util/collection/ImmutableList;

    move-result-object v1

    const v2, 0x7f0a0587

    .line 93
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v0, v1, v2}, Lcom/twitter/model/timeline/l;->a(Lcom/twitter/model/timeline/i;Ljava/util/List;Ljava/lang/String;)Lcom/twitter/model/timeline/l;

    move-result-object v0

    .line 95
    :cond_0
    return-object v0
.end method
