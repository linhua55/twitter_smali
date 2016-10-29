.class public Lcom/twitter/model/json/moments/maker/JsonCurateOperation;
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

.field public c:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:Lcov;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/twitter/model/json/common/b;-><init>()V

    return-void
.end method

.method private static a(Lcom/twitter/model/json/moments/maker/JsonCurateOperation;Lcom/twitter/model/moments/maker/aj;)Lcom/twitter/model/json/moments/maker/JsonCurateOperation;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 66
    iget v1, p1, Lcom/twitter/model/moments/maker/aj;->c:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 72
    :goto_0
    return-object p0

    .line 69
    :cond_0
    iget-wide v2, p1, Lcom/twitter/model/moments/maker/aj;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;->c:Ljava/lang/String;

    .line 70
    iget v1, p1, Lcom/twitter/model/moments/maker/aj;->c:I

    if-ne v1, v0, :cond_1

    :goto_1
    invoke-static {v0}, Lcov;->a(Z)Lcov;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;->d:Lcov;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/twitter/model/moments/maker/a;)Lcom/twitter/model/json/moments/maker/JsonCurateOperation;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;

    invoke-direct {v0}, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;-><init>()V

    .line 42
    const-string/jumbo v1, "ADD"

    iput-object v1, v0, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;->a:Ljava/lang/String;

    .line 43
    iget-wide v2, p0, Lcom/twitter/model/moments/maker/a;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;->b:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/twitter/model/moments/maker/a;->b:Lcom/twitter/model/moments/maker/aj;

    invoke-static {v0, v1}, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;->a(Lcom/twitter/model/json/moments/maker/JsonCurateOperation;Lcom/twitter/model/moments/maker/aj;)Lcom/twitter/model/json/moments/maker/JsonCurateOperation;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/twitter/model/moments/maker/h;)Lcom/twitter/model/json/moments/maker/JsonCurateOperation;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;

    invoke-direct {v0}, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;-><init>()V

    .line 58
    const-string/jumbo v1, "DELETE"

    iput-object v1, v0, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;->a:Ljava/lang/String;

    .line 59
    iget-wide v2, p0, Lcom/twitter/model/moments/maker/h;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;->b:Ljava/lang/String;

    .line 60
    return-object v0
.end method

.method public static a(Lcom/twitter/model/moments/maker/s;)Lcom/twitter/model/json/moments/maker/JsonCurateOperation;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;

    invoke-direct {v0}, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;-><init>()V

    .line 50
    const-string/jumbo v1, "MOVE"

    iput-object v1, v0, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;->a:Ljava/lang/String;

    .line 51
    iget-wide v2, p0, Lcom/twitter/model/moments/maker/s;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;->b:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/twitter/model/moments/maker/s;->b:Lcom/twitter/model/moments/maker/aj;

    invoke-static {v0, v1}, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;->a(Lcom/twitter/model/json/moments/maker/JsonCurateOperation;Lcom/twitter/model/moments/maker/aj;)Lcom/twitter/model/json/moments/maker/JsonCurateOperation;

    move-result-object v0

    return-object v0
.end method
