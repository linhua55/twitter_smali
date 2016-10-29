.class public Lcom/twitter/model/json/moments/JsonMomentInfoBadge;
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
        "Lcom/twitter/model/moments/x;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/moments/x;
    .locals 5

    .prologue
    const/16 v4, 0xff

    .line 24
    new-instance v0, Lcom/twitter/model/moments/x;

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMomentInfoBadge;->a:Ljava/lang/String;

    iget v2, p0, Lcom/twitter/model/json/moments/JsonMomentInfoBadge;->c:I

    invoke-static {v2, v4}, Lcom/twitter/util/ui/h;->a(II)I

    move-result v2

    iget v3, p0, Lcom/twitter/model/json/moments/JsonMomentInfoBadge;->b:I

    invoke-static {v3, v4}, Lcom/twitter/util/ui/h;->a(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/model/moments/x;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/model/json/moments/JsonMomentInfoBadge;->a()Lcom/twitter/model/moments/x;

    move-result-object v0

    return-object v0
.end method
