.class public Lcom/twitter/model/json/media/stickers/JsonStickerCategory;
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
        "Lcpy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:Lcpk;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcqa;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public h:Ljava/util/Date;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        typeConverter = Lcom/twitter/model/json/media/stickers/b;
    .end annotation
.end field

.field public i:Ljava/util/Date;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        typeConverter = Lcom/twitter/model/json/media/stickers/b;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcpy;
    .locals 13

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 46
    iget-wide v2, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v2, "JsonStickerCategory must have an annotation id"

    invoke-direct {v0, v2}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 55
    :goto_0
    return-object v1

    .line 50
    :cond_0
    iget-wide v2, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->d:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v2, "JsonStickerCategory must have an id"

    invoke-direct {v0, v2}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 55
    :cond_1
    new-instance v1, Lcpy;

    iget-wide v2, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->d:J

    iget-wide v4, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->a:J

    iget-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->e:Ljava/util/List;

    .line 58
    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->b:Ljava/lang/String;

    .line 59
    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->c:Lcpk;

    const/4 v9, 0x0

    const-string/jumbo v0, "promoted"

    iget-object v10, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->f:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iget-object v11, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->h:Ljava/util/Date;

    iget-object v12, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->i:Ljava/util/Date;

    .line 64
    invoke-static {v0, v12}, Lcqb;->a(Ljava/util/Date;Ljava/util/Date;)Lcqb;

    move-result-object v12

    invoke-direct/range {v1 .. v12}, Lcpy;-><init>(JJLjava/util/List;Ljava/lang/String;Lcpk;IZLjava/lang/String;Lcqb;)V

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->a()Lcpy;

    move-result-object v0

    return-object v0
.end method
