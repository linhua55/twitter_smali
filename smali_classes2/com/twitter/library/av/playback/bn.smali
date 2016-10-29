.class public Lcom/twitter/library/av/playback/bn;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;)I
    .locals 1

    .prologue
    .line 14
    invoke-static {p1}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-static {p1}, Lcom/twitter/library/av/playback/bm;->q(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
