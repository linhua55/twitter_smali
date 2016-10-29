.class public Lcom/twitter/model/json/notifications/JsonNotificationUsers;
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
        "Lcsi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcse;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Lcse;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:Lcse;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcrt;",
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
.method public a()Lcsi;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/model/json/notifications/JsonNotificationUsers;->a:Lcse;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v1, "Missing recipient"

    invoke-direct {v0, v1}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcsk;

    invoke-direct {v0}, Lcsk;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationUsers;->a:Lcse;

    .line 36
    invoke-virtual {v0, v1}, Lcsk;->a(Lcse;)Lcsk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationUsers;->b:Lcse;

    .line 37
    invoke-virtual {v0, v1}, Lcsk;->b(Lcse;)Lcsk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationUsers;->c:Lcse;

    .line 38
    invoke-virtual {v0, v1}, Lcsk;->c(Lcse;)Lcsk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationUsers;->d:Ljava/util/List;

    .line 39
    invoke-virtual {v0, v1}, Lcsk;->a(Ljava/util/List;)Lcsk;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcsk;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsi;

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/twitter/model/json/notifications/JsonNotificationUsers;->a()Lcsi;

    move-result-object v0

    return-object v0
.end method
