.class public Lcom/twitter/model/json/livepipeline/JsonTypingIndicatorEventBuilder;
.super Lcom/twitter/model/json/common/e;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/e",
        "<",
        "Lcom/twitter/model/livepipeline/j;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Ljava/lang/Long;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/livepipeline/k;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/model/livepipeline/k;

    invoke-direct {v0}, Lcom/twitter/model/livepipeline/k;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/livepipeline/JsonTypingIndicatorEventBuilder;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/model/livepipeline/k;->a(Ljava/lang/String;)Lcom/twitter/model/livepipeline/k;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/livepipeline/JsonTypingIndicatorEventBuilder;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/twitter/model/livepipeline/k;->a(Ljava/lang/Long;)Lcom/twitter/model/livepipeline/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/model/json/livepipeline/JsonTypingIndicatorEventBuilder;->a()Lcom/twitter/model/livepipeline/k;

    move-result-object v0

    return-object v0
.end method
