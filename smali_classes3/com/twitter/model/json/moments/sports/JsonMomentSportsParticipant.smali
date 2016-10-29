.class public Lcom/twitter/model/json/moments/sports/JsonMomentSportsParticipant;
.super Lcom/twitter/model/json/common/e;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/e",
        "<",
        "Lcri;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcrl;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:J
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
.method public a()Lcrk;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Lcrk;

    invoke-direct {v0}, Lcrk;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/moments/sports/JsonMomentSportsParticipant;->a:Lcrl;

    .line 25
    invoke-virtual {v0, v1}, Lcrk;->a(Lcrl;)Lcrk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/sports/JsonMomentSportsParticipant;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Lcrk;->a(Ljava/lang/String;)Lcrk;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/json/moments/sports/JsonMomentSportsParticipant;->c:J

    .line 27
    invoke-virtual {v0, v2, v3}, Lcrk;->a(J)Lcrk;

    move-result-object v0

    .line 24
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/model/json/moments/sports/JsonMomentSportsParticipant;->a()Lcrk;

    move-result-object v0

    return-object v0
.end method
