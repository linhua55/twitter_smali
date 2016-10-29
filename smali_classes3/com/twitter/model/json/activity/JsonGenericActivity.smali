.class public Lcom/twitter/model/json/activity/JsonGenericActivity;
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
        "Lckx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Lckt;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:Lckt;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
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

.field public h:Lclc;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lckx;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcky;

    invoke-direct {v0}, Lcky;-><init>()V

    iget-wide v2, p0, Lcom/twitter/model/json/activity/JsonGenericActivity;->a:J

    .line 50
    invoke-virtual {v0, v2, v3}, Lcky;->a(J)Lcky;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/json/activity/JsonGenericActivity;->a:J

    .line 51
    invoke-virtual {v0, v2, v3}, Lcky;->b(J)Lcky;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/json/activity/JsonGenericActivity;->a:J

    .line 52
    invoke-virtual {v0, v2, v3}, Lcky;->c(J)Lcky;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/activity/JsonGenericActivity;->b:Lckt;

    .line 53
    invoke-virtual {v0, v1}, Lcky;->a(Lckt;)Lcky;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/activity/JsonGenericActivity;->c:Lckt;

    .line 54
    invoke-virtual {v0, v1}, Lcky;->b(Lckt;)Lcky;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/activity/JsonGenericActivity;->d:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1}, Lcky;->a(Ljava/lang/String;)Lcky;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/activity/JsonGenericActivity;->f:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1}, Lcky;->c(Ljava/lang/String;)Lcky;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/activity/JsonGenericActivity;->g:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v1}, Lcky;->d(Ljava/lang/String;)Lcky;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/activity/JsonGenericActivity;->h:Lclc;

    .line 58
    invoke-virtual {v0, v1}, Lcky;->a(Lclc;)Lcky;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/activity/JsonGenericActivity;->e:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Lcky;->b(Ljava/lang/String;)Lcky;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/activity/JsonGenericActivity;->k:Ljava/util/List;

    .line 60
    invoke-virtual {v0, v1}, Lcky;->a(Ljava/util/List;)Lcky;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/activity/JsonGenericActivity;->m:Ljava/util/List;

    .line 61
    invoke-virtual {v0, v1}, Lcky;->b(Ljava/util/List;)Lcky;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/activity/JsonGenericActivity;->l:Ljava/util/List;

    .line 62
    invoke-virtual {v0, v1}, Lcky;->c(Ljava/util/List;)Lcky;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcky;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckx;

    .line 49
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/twitter/model/json/activity/JsonGenericActivity;->a()Lckx;

    move-result-object v0

    return-object v0
.end method
