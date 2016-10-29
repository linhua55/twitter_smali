.class public Lcom/twitter/model/json/core/JsonMakerMediaSize;
.super Lcom/twitter/model/json/common/b;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/model/json/common/b;-><init>()V

    return-void
.end method

.method public static a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/json/core/JsonMakerMediaSize;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/twitter/model/json/core/JsonMakerMediaSize;

    invoke-direct {v0}, Lcom/twitter/model/json/core/JsonMakerMediaSize;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/twitter/util/math/Size;->a()I

    move-result v1

    iput v1, v0, Lcom/twitter/model/json/core/JsonMakerMediaSize;->a:I

    .line 23
    invoke-virtual {p0}, Lcom/twitter/util/math/Size;->b()I

    move-result v1

    iput v1, v0, Lcom/twitter/model/json/core/JsonMakerMediaSize;->b:I

    .line 24
    return-object v0
.end method
