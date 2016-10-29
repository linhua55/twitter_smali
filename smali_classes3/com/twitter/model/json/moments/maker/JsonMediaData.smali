.class public Lcom/twitter/model/json/moments/maker/JsonMediaData;
.super Lcom/twitter/model/json/common/b;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Lcom/twitter/model/json/core/JsonMakerMediaSize;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/json/moments/maker/JsonMakerCropData;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/twitter/model/json/common/b;-><init>()V

    return-void
.end method

.method public static a(Lcom/twitter/model/moments/maker/n;)Lcom/twitter/model/json/moments/maker/JsonMediaData;
    .locals 4

    .prologue
    .line 30
    new-instance v1, Lcom/twitter/model/json/moments/maker/JsonMediaData;

    invoke-direct {v1}, Lcom/twitter/model/json/moments/maker/JsonMediaData;-><init>()V

    .line 31
    iget-object v0, p0, Lcom/twitter/model/moments/maker/n;->b:Lcom/twitter/model/moments/ak;

    iget-object v0, v0, Lcom/twitter/model/moments/ak;->f:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/json/moments/maker/JsonMediaData;->a:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/twitter/model/moments/maker/n;->c:Lcom/twitter/model/moments/k;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/twitter/model/moments/maker/n;->c:Lcom/twitter/model/moments/k;

    iget-object v0, v0, Lcom/twitter/model/moments/k;->e:Lcom/twitter/model/moments/g;

    .line 35
    if-eqz v0, :cond_0

    .line 37
    invoke-static {v0}, Lcom/twitter/model/json/moments/maker/JsonMakerCropData;->a(Lcom/twitter/model/moments/g;)Lcom/twitter/model/json/moments/maker/JsonMakerCropData;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/json/moments/maker/JsonMediaData;->c:Ljava/util/List;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/twitter/model/moments/maker/n;->c:Lcom/twitter/model/moments/k;

    iget-boolean v0, v0, Lcom/twitter/model/moments/k;->h:Z

    iput-boolean v0, v1, Lcom/twitter/model/json/moments/maker/JsonMediaData;->d:Z

    .line 40
    iget-object v0, p0, Lcom/twitter/model/moments/maker/n;->c:Lcom/twitter/model/moments/k;

    iget-object v0, v0, Lcom/twitter/model/moments/k;->g:Lcom/twitter/util/math/Size;

    invoke-static {v0}, Lcom/twitter/model/json/core/JsonMakerMediaSize;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/json/core/JsonMakerMediaSize;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/json/moments/maker/JsonMediaData;->b:Lcom/twitter/model/json/core/JsonMakerMediaSize;

    .line 42
    :cond_1
    return-object v1
.end method
