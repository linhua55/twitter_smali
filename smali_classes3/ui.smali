.class public Lui;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcmf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcmf",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/library/av/ac;


# direct methods
.method public constructor <init>(Lcmf;Ljava/util/Map;Lcom/twitter/library/av/ac;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twitter/library/av/ac;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lui;->a:Lcmf;

    .line 98
    iput-object p2, p0, Lui;->b:Ljava/util/Map;

    .line 99
    iput-object p3, p0, Lui;->c:Lcom/twitter/library/av/ac;

    .line 100
    return-void
.end method

.method public static a(Lcom/twitter/library/av/playback/AVDataSource;)Lui;
    .locals 5

    .prologue
    .line 46
    new-instance v0, Lcmp;

    invoke-direct {v0}, Lcmp;-><init>()V

    .line 47
    invoke-virtual {v0, p0}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    .line 48
    new-instance v1, Lui;

    invoke-virtual {v0}, Lcmp;->a()Lcmo;

    move-result-object v0

    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/twitter/library/av/af;

    .line 49
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/twitter/library/av/af;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v0, v2, v3}, Lui;-><init>(Lcmf;Ljava/util/Map;Lcom/twitter/library/av/ac;)V

    .line 48
    return-object v1
.end method

.method public static a(Ltz;Lcom/twitter/library/av/playback/AVDataSource;Lcmf;)Lui;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltz;",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/ac;",
            ">;)",
            "Lui;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v2, Lcmp;

    invoke-direct {v2}, Lcmp;-><init>()V

    .line 59
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v3

    .line 61
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v4

    .line 63
    invoke-virtual {v2, p1}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    .line 66
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p2}, Lcmf;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/ac;

    .line 69
    invoke-virtual {v0}, Lcom/twitter/model/av/ac;->a()Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-static {v6}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    .line 73
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/model/av/ac;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    .line 74
    invoke-virtual {p0, v0}, Ltz;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/library/av/playback/TweetAVDataSource;

    move-result-object v0

    .line 76
    invoke-virtual {v2, v0}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    .line 77
    new-instance v7, Luj;

    invoke-direct {v7, v0}, Luj;-><init>(Lcom/twitter/library/av/playback/TweetAVDataSource;)V

    invoke-virtual {v4, v7}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    goto :goto_0

    .line 89
    :cond_2
    new-instance v5, Lui;

    invoke-virtual {v2}, Lcmp;->a()Lcmo;

    move-result-object v2

    invoke-virtual {v3}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v3, Lcom/twitter/library/av/af;

    .line 90
    invoke-virtual {v4}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v3, v1}, Lcom/twitter/library/av/af;-><init>(Ljava/util/List;)V

    invoke-direct {v5, v2, v0, v3}, Lui;-><init>(Lcmf;Ljava/util/Map;Lcom/twitter/library/av/ac;)V

    .line 89
    return-object v5
.end method


# virtual methods
.method public a()Lcmf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcmf",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lui;->a:Lcmf;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lui;->b:Ljava/util/Map;

    return-object v0
.end method

.method public c()Lcom/twitter/library/av/ac;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lui;->c:Lcom/twitter/library/av/ac;

    return-object v0
.end method
