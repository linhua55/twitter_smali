.class public Lcom/twitter/model/json/businessprofiles/JsonHourMinuteRange;
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
        "Lcom/twitter/model/businessprofiles/af;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/twitter/model/businessprofiles/ad;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Lcom/twitter/model/businessprofiles/ad;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/businessprofiles/af;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/twitter/model/businessprofiles/af;

    iget-object v1, p0, Lcom/twitter/model/json/businessprofiles/JsonHourMinuteRange;->a:Lcom/twitter/model/businessprofiles/ad;

    iget-object v2, p0, Lcom/twitter/model/json/businessprofiles/JsonHourMinuteRange;->b:Lcom/twitter/model/businessprofiles/ad;

    invoke-direct {v0, v1, v2}, Lcom/twitter/model/businessprofiles/af;-><init>(Lcom/twitter/model/businessprofiles/ad;Lcom/twitter/model/businessprofiles/ad;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/model/json/businessprofiles/JsonHourMinuteRange;->a()Lcom/twitter/model/businessprofiles/af;

    move-result-object v0

    return-object v0
.end method
