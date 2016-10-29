.class public Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette;
.super Lcom/twitter/model/json/common/f;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->FIELD_NAME:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/f",
        "<",
        "Lcom/twitter/model/stratostore/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColorDescriptor;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "palette"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/stratostore/a;
    .locals 3

    .prologue
    .line 23
    new-instance v1, Lcom/twitter/model/stratostore/a;

    iget-object v0, p0, Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette;->a:[Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColorDescriptor;

    .line 25
    invoke-static {v0}, Lcom/twitter/util/collection/r;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x5

    .line 26
    invoke-static {v2}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Lcom/twitter/model/json/common/j;->a(Ljava/lang/Iterable;Lcom/twitter/util/collection/d;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/twitter/model/stratostore/a;-><init>(Ljava/util/List;)V

    .line 23
    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette;->a()Lcom/twitter/model/stratostore/a;

    move-result-object v0

    return-object v0
.end method
