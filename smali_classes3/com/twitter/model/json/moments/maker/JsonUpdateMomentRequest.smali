.class public Lcom/twitter/model/json/moments/maker/JsonUpdateMomentRequest;
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

.field public b:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:Lcom/twitter/model/json/moments/maker/JsonCoverData;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public e:Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/model/json/common/b;-><init>()V

    return-void
.end method

.method public static a(Lcom/twitter/model/moments/maker/MomentEditOperation;)Lcom/twitter/model/json/moments/maker/JsonUpdateMomentRequest;
    .locals 3

    .prologue
    .line 27
    new-instance v1, Lcom/twitter/model/json/moments/maker/JsonUpdateMomentRequest;

    invoke-direct {v1}, Lcom/twitter/model/json/moments/maker/JsonUpdateMomentRequest;-><init>()V

    .line 28
    iget-object v0, p0, Lcom/twitter/model/moments/maker/MomentEditOperation;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/twitter/model/json/moments/maker/JsonUpdateMomentRequest;->a:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/twitter/model/moments/maker/MomentEditOperation;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/twitter/model/json/moments/maker/JsonUpdateMomentRequest;->b:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/twitter/model/moments/maker/MomentEditOperation;->c:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/twitter/model/json/moments/maker/JsonUpdateMomentRequest;->c:Z

    .line 31
    iget-object v0, p0, Lcom/twitter/model/moments/maker/MomentEditOperation;->d:Lcom/twitter/model/moments/maker/n;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/twitter/model/moments/maker/MomentEditOperation;->d:Lcom/twitter/model/moments/maker/n;

    invoke-static {v0}, Lcom/twitter/model/json/moments/maker/JsonCoverData;->a(Lcom/twitter/model/moments/maker/n;)Lcom/twitter/model/json/moments/maker/JsonCoverData;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/json/moments/maker/JsonUpdateMomentRequest;->d:Lcom/twitter/model/json/moments/maker/JsonCoverData;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/twitter/model/moments/maker/MomentEditOperation;->e:Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;

    iput-object v0, v1, Lcom/twitter/model/json/moments/maker/JsonUpdateMomentRequest;->e:Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;

    .line 35
    return-object v1
.end method
