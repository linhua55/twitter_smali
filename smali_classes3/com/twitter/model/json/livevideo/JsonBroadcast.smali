.class public Lcom/twitter/model/json/livevideo/JsonBroadcast;
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
        "Lcom/twitter/model/livevideo/a;",
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

.field public c:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:Lcom/twitter/model/livevideo/BroadcastState;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "state"
        }
        typeConverter = Lcom/twitter/model/json/livevideo/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/livevideo/c;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/twitter/model/livevideo/c;

    invoke-direct {v0}, Lcom/twitter/model/livevideo/c;-><init>()V

    iget-wide v2, p0, Lcom/twitter/model/json/livevideo/JsonBroadcast;->a:J

    .line 34
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/livevideo/c;->a(J)Lcom/twitter/model/livevideo/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/livevideo/JsonBroadcast;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Lcom/twitter/model/livevideo/c;->a(Ljava/lang/String;)Lcom/twitter/model/livevideo/c;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/model/json/livevideo/JsonBroadcast;->d:Lcom/twitter/model/livevideo/BroadcastState;

    sget-object v2, Lcom/twitter/model/livevideo/BroadcastState;->b:Lcom/twitter/model/livevideo/BroadcastState;

    .line 36
    invoke-static {v0, v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/livevideo/BroadcastState;

    invoke-virtual {v1, v0}, Lcom/twitter/model/livevideo/c;->a(Lcom/twitter/model/livevideo/BroadcastState;)Lcom/twitter/model/livevideo/c;

    move-result-object v0

    .line 37
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/twitter/model/json/livevideo/JsonBroadcast;->a()Lcom/twitter/model/livevideo/c;

    move-result-object v0

    return-object v0
.end method
