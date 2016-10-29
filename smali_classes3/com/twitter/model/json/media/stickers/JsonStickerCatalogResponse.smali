.class public Lcom/twitter/model/json/media/stickers/JsonStickerCatalogResponse;
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
        "Lcpj;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lczn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lczn",
            "<",
            "Lcpy;",
            "Lcpy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcpy;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcpy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/twitter/model/json/media/stickers/a;

    invoke-direct {v0}, Lcom/twitter/model/json/media/stickers/a;-><init>()V

    sput-object v0, Lcom/twitter/model/json/media/stickers/JsonStickerCatalogResponse;->c:Lczn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcpj;
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCatalogResponse;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v1, "Sticker response must include categories"

    invoke-direct {v0, v1}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcpj;

    iget-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCatalogResponse;->a:Ljava/util/List;

    .line 58
    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCatalogResponse;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    .line 61
    :goto_1
    invoke-direct {v1, v2, v0}, Lcpj;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object v0, v1

    .line 57
    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCatalogResponse;->b:Ljava/util/List;

    sget-object v3, Lcom/twitter/model/json/media/stickers/JsonStickerCatalogResponse;->c:Lczn;

    .line 61
    invoke-static {v0, v3}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;Lczn;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/twitter/model/json/media/stickers/JsonStickerCatalogResponse;->a()Lcpj;

    move-result-object v0

    return-object v0
.end method
