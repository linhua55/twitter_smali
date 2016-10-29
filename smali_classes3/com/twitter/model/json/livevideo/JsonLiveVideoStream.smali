.class public Lcom/twitter/model/json/livevideo/JsonLiveVideoStream;
.super Lcom/twitter/model/json/common/f;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/f",
        "<",
        "Lcom/twitter/model/av/m;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/twitter/model/json/livevideo/JsonLiveVideoStreamSource;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/av/m;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/twitter/model/json/livevideo/JsonLiveVideoStream;->a:Lcom/twitter/model/json/livevideo/JsonLiveVideoStreamSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/json/livevideo/JsonLiveVideoStream;->a:Lcom/twitter/model/json/livevideo/JsonLiveVideoStreamSource;

    iget-object v0, v0, Lcom/twitter/model/json/livevideo/JsonLiveVideoStreamSource;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/twitter/model/av/m;

    iget-object v1, p0, Lcom/twitter/model/json/livevideo/JsonLiveVideoStream;->a:Lcom/twitter/model/json/livevideo/JsonLiveVideoStreamSource;

    iget-object v1, v1, Lcom/twitter/model/json/livevideo/JsonLiveVideoStreamSource;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/twitter/model/av/m;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/model/json/livevideo/JsonLiveVideoStream;->a()Lcom/twitter/model/av/m;

    move-result-object v0

    return-object v0
.end method
