.class public Lcom/twitter/model/json/moments/JsonLinkTitleCard;
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
        "Lcom/twitter/model/moments/z;",
        ">;"
    }
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

.field public d:Ljava/lang/String;
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
.method public a()Lcom/twitter/model/moments/z;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/twitter/model/moments/ab;

    invoke-direct {v0}, Lcom/twitter/model/moments/ab;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonLinkTitleCard;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/ab;->a(Ljava/lang/String;)Lcom/twitter/model/moments/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonLinkTitleCard;->b:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/ab;->b(Ljava/lang/String;)Lcom/twitter/model/moments/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonLinkTitleCard;->c:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/ab;->c(Ljava/lang/String;)Lcom/twitter/model/moments/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonLinkTitleCard;->d:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/ab;->d(Ljava/lang/String;)Lcom/twitter/model/moments/ab;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/twitter/model/moments/ab;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/z;

    .line 26
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/model/json/moments/JsonLinkTitleCard;->a()Lcom/twitter/model/moments/z;

    move-result-object v0

    return-object v0
.end method
