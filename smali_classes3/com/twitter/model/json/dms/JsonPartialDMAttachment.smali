.class public Lcom/twitter/model/json/dms/JsonPartialDMAttachment;
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
        "Lcom/twitter/model/dms/cb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        typeConverter = Lcom/twitter/model/json/dms/n;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/dms/cd;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/twitter/model/dms/cd;

    invoke-direct {v0}, Lcom/twitter/model/dms/cd;-><init>()V

    iget v1, p0, Lcom/twitter/model/json/dms/JsonPartialDMAttachment;->a:I

    .line 25
    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/cd;->c(I)Lcom/twitter/model/dms/cd;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/dms/JsonPartialDMAttachment;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/cd;->a(Ljava/lang/String;)Lcom/twitter/model/dms/j;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cd;

    .line 24
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/model/json/dms/JsonPartialDMAttachment;->a()Lcom/twitter/model/dms/cd;

    move-result-object v0

    return-object v0
.end method
