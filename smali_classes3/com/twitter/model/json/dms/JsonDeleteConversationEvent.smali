.class public Lcom/twitter/model/json/dms/JsonDeleteConversationEvent;
.super Lcom/twitter/model/json/common/e;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/e",
        "<",
        "Lcom/twitter/model/dms/cn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "time"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/dms/cp;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/model/dms/cp;

    invoke-direct {v0}, Lcom/twitter/model/dms/cp;-><init>()V

    iget-wide v2, p0, Lcom/twitter/model/json/dms/JsonDeleteConversationEvent;->a:J

    .line 24
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/cp;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cp;

    iget-wide v2, p0, Lcom/twitter/model/json/dms/JsonDeleteConversationEvent;->b:J

    .line 25
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/cp;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cp;

    iget-object v1, p0, Lcom/twitter/model/json/dms/JsonDeleteConversationEvent;->c:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/cp;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cp;

    .line 23
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/model/json/dms/JsonDeleteConversationEvent;->a()Lcom/twitter/model/dms/cp;

    move-result-object v0

    return-object v0
.end method
