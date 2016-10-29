.class public Lcom/twitter/model/json/watchmode/JsonWatchModeSectionStatusMetadata;
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
        "Lcom/twitter/model/av/ae;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:F
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:I
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
.method public a()Lcom/twitter/model/av/ae;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/model/av/af;

    invoke-direct {v0}, Lcom/twitter/model/av/af;-><init>()V

    iget-wide v2, p0, Lcom/twitter/model/json/watchmode/JsonWatchModeSectionStatusMetadata;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/av/af;->a(J)Lcom/twitter/model/av/af;

    move-result-object v0

    iget v1, p0, Lcom/twitter/model/json/watchmode/JsonWatchModeSectionStatusMetadata;->b:F

    .line 24
    invoke-virtual {v0, v1}, Lcom/twitter/model/av/af;->a(F)Lcom/twitter/model/av/af;

    move-result-object v0

    iget v1, p0, Lcom/twitter/model/json/watchmode/JsonWatchModeSectionStatusMetadata;->c:I

    invoke-virtual {v0, v1}, Lcom/twitter/model/av/af;->a(I)Lcom/twitter/model/av/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/av/af;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/ae;

    .line 23
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/model/json/watchmode/JsonWatchModeSectionStatusMetadata;->a()Lcom/twitter/model/av/ae;

    move-result-object v0

    return-object v0
.end method
