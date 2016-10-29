.class public Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColorDescriptor;
.super Lcom/twitter/model/json/common/f;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/f",
        "<",
        "Lcom/twitter/model/media/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:F
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColor;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/media/a;
    .locals 5

    .prologue
    .line 39
    new-instance v0, Lcom/twitter/model/media/a;

    iget v1, p0, Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColorDescriptor;->a:F

    iget-object v2, p0, Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColorDescriptor;->b:Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColor;

    iget v2, v2, Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColor;->c:I

    iget-object v3, p0, Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColorDescriptor;->b:Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColor;

    iget v3, v3, Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColor;->b:I

    iget-object v4, p0, Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColorDescriptor;->b:Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColor;

    iget v4, v4, Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColor;->a:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/model/media/a;-><init>(FIII)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/twitter/model/json/stratostore/JsonMediaEntityColorPalette$JsonMediaEntityColorDescriptor;->a()Lcom/twitter/model/media/a;

    move-result-object v0

    return-object v0
.end method
