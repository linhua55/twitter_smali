.class public Lcom/twitter/model/json/core/JsonEscherbirdAnnotation;
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
        "Lcom/twitter/model/core/EscherbirdAnnotation;",
        ">;"
    }
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

.field public c:J
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
.method public a()Lcom/twitter/model/core/EscherbirdAnnotation;
    .locals 6

    .prologue
    .line 24
    new-instance v0, Lcom/twitter/model/core/EscherbirdAnnotation;

    iget v1, p0, Lcom/twitter/model/json/core/JsonEscherbirdAnnotation;->a:I

    invoke-static {v1}, Lcom/twitter/model/core/EscherbirdAnnotation$GroupType;->a(I)Lcom/twitter/model/core/EscherbirdAnnotation$GroupType;

    move-result-object v1

    iget v2, p0, Lcom/twitter/model/json/core/JsonEscherbirdAnnotation;->b:I

    .line 25
    invoke-static {v2}, Lcom/twitter/model/core/EscherbirdAnnotation$DomainType;->a(I)Lcom/twitter/model/core/EscherbirdAnnotation$DomainType;

    move-result-object v2

    iget-wide v4, p0, Lcom/twitter/model/json/core/JsonEscherbirdAnnotation;->c:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/twitter/model/core/EscherbirdAnnotation;-><init>(Lcom/twitter/model/core/EscherbirdAnnotation$GroupType;Lcom/twitter/model/core/EscherbirdAnnotation$DomainType;J)V

    .line 24
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/model/json/core/JsonEscherbirdAnnotation;->a()Lcom/twitter/model/core/EscherbirdAnnotation;

    move-result-object v0

    return-object v0
.end method
