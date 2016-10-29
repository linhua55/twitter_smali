.class public Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;
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
        "Lcom/twitter/model/dms/cq;",
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

.field public e:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/dj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/dms/cq;
    .locals 4

    .prologue
    .line 32
    new-instance v0, Lcom/twitter/model/dms/ct;

    invoke-direct {v0}, Lcom/twitter/model/dms/ct;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->f:Ljava/util/List;

    .line 33
    invoke-static {v1}, Lcom/twitter/model/dms/cq;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/ct;->a(Ljava/util/List;)Lcom/twitter/model/dms/cs;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ct;

    iget-wide v2, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->a:J

    .line 34
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/ct;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cs;

    iget-object v1, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/cs;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cs;

    iget-wide v2, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->b:J

    .line 36
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/cs;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cs;

    .line 37
    invoke-virtual {v0}, Lcom/twitter/model/dms/cs;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cq;

    .line 32
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->a()Lcom/twitter/model/dms/cq;

    move-result-object v0

    return-object v0
.end method
