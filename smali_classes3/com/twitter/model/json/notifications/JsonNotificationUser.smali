.class public Lcom/twitter/model/json/notifications/JsonNotificationUser;
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
        "Lcse;",
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

.field public g:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "protected"
        }
    .end annotation
.end field

.field public h:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "following"
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
.method public a()Lcse;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 36
    iget-wide v2, p0, Lcom/twitter/model/json/notifications/JsonNotificationUser;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v2, "Missing id"

    invoke-direct {v1, v2}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationUser;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    new-instance v1, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v2, "Missing screen_name"

    invoke-direct {v1, v2}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcsg;

    invoke-direct {v0}, Lcsg;-><init>()V

    iget-wide v2, p0, Lcom/twitter/model/json/notifications/JsonNotificationUser;->a:J

    .line 44
    invoke-virtual {v0, v2, v3}, Lcsg;->a(J)Lcsg;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationUser;->b:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1}, Lcsg;->a(Ljava/lang/String;)Lcsg;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationUser;->c:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Lcsg;->b(Ljava/lang/String;)Lcsg;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationUser;->d:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v1}, Lcsg;->c(Ljava/lang/String;)Lcsg;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationUser;->e:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Lcsg;->d(Ljava/lang/String;)Lcsg;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationUser;->f:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Lcsg;->e(Ljava/lang/String;)Lcsg;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationUser;->g:Z

    .line 50
    invoke-virtual {v0, v1}, Lcsg;->a(Z)Lcsg;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationUser;->h:Z

    .line 51
    invoke-virtual {v0, v1}, Lcsg;->b(Z)Lcsg;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcsg;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcse;

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/twitter/model/json/notifications/JsonNotificationUser;->a()Lcse;

    move-result-object v0

    return-object v0
.end method
