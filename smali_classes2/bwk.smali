.class public Lbwk;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lbwk;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbwj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbwk;->b:Ljava/util/List;

    .line 27
    return-void
.end method

.method public static a()Lbwk;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lbwk;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 31
    sget-object v0, Lbwk;->a:Lbwk;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lbwk;

    invoke-direct {v0}, Lbwk;-><init>()V

    sput-object v0, Lbwk;->a:Lbwk;

    .line 34
    :cond_0
    sget-object v0, Lbwk;->a:Lbwk;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/playback/AVPlayer;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/av/playback/AVPlayer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbvs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v0, p0, Lbwk;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwj;

    .line 79
    invoke-interface {v0, p1}, Lbwj;->a(Lcom/twitter/library/av/playback/AVPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 82
    :cond_0
    return-object v1
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/av/playback/AVPlayer;",
            "Lcom/twitter/model/av/AVMedia;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbvs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v0, p0, Lbwk;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwj;

    .line 62
    invoke-interface {v0, p1, p2}, Lbwj;->a(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 65
    :cond_0
    return-object v1
.end method

.method public a(Lbwj;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lbwk;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method
