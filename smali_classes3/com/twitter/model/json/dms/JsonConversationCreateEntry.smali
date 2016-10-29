.class public Lcom/twitter/model/json/dms/JsonConversationCreateEntry;
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
        "Lcom/twitter/model/dms/ag;",
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

.field public d:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/dms/ai;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Lcom/twitter/model/dms/ai;

    invoke-direct {v0}, Lcom/twitter/model/dms/ai;-><init>()V

    new-instance v1, Lcom/twitter/model/dms/e;

    invoke-direct {v1}, Lcom/twitter/model/dms/e;-><init>()V

    .line 27
    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/ai;->a(Ljava/lang/Object;)Lcom/twitter/model/dms/d;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ai;

    iget-wide v2, p0, Lcom/twitter/model/json/dms/JsonConversationCreateEntry;->a:J

    .line 28
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/ai;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ai;

    iget-wide v2, p0, Lcom/twitter/model/json/dms/JsonConversationCreateEntry;->b:J

    .line 29
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/ai;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ai;

    iget-object v1, p0, Lcom/twitter/model/json/dms/JsonConversationCreateEntry;->c:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/ai;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ai;

    iget-boolean v1, p0, Lcom/twitter/model/json/dms/JsonConversationCreateEntry;->d:Z

    .line 31
    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/ai;->a(Z)Lcom/twitter/model/dms/d;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ai;

    .line 26
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/model/json/dms/JsonConversationCreateEntry;->a()Lcom/twitter/model/dms/ai;

    move-result-object v0

    return-object v0
.end method
