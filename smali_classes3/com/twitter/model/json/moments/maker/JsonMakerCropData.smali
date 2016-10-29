.class public Lcom/twitter/model/json/moments/maker/JsonMakerCropData;
.super Lcom/twitter/model/json/common/b;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation


# instance fields
.field public a:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/model/json/common/b;-><init>()V

    .line 25
    const-string/jumbo v0, "PORTRAIT_9_16"

    iput-object v0, p0, Lcom/twitter/model/json/moments/maker/JsonMakerCropData;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/twitter/model/moments/g;)Lcom/twitter/model/json/moments/maker/JsonMakerCropData;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/twitter/model/json/moments/maker/JsonMakerCropData;

    invoke-direct {v0}, Lcom/twitter/model/json/moments/maker/JsonMakerCropData;-><init>()V

    .line 31
    iget v1, p0, Lcom/twitter/model/moments/g;->b:I

    iput v1, v0, Lcom/twitter/model/json/moments/maker/JsonMakerCropData;->a:I

    .line 32
    iget v1, p0, Lcom/twitter/model/moments/g;->c:I

    iput v1, v0, Lcom/twitter/model/json/moments/maker/JsonMakerCropData;->b:I

    .line 33
    iget v1, p0, Lcom/twitter/model/moments/g;->d:I

    iput v1, v0, Lcom/twitter/model/json/moments/maker/JsonMakerCropData;->c:I

    .line 34
    iget v1, p0, Lcom/twitter/model/moments/g;->e:I

    iput v1, v0, Lcom/twitter/model/json/moments/maker/JsonMakerCropData;->d:I

    .line 35
    return-object v0
.end method
