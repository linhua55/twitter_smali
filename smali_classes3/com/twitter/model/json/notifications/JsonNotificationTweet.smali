.class public Lcom/twitter/model/json/notifications/JsonNotificationTweet;
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
        "Lcsa;",
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
    .end annotation
.end field

.field public c:J
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

.field public f:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/json/notifications/JsonNotificationMentionEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcsa;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 38
    iget-wide v2, p0, Lcom/twitter/model/json/notifications/JsonNotificationTweet;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v2, "Missing id"

    invoke-direct {v1, v2}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 48
    :goto_0
    return-object v0

    .line 41
    :cond_0
    iget-wide v2, p0, Lcom/twitter/model/json/notifications/JsonNotificationTweet;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 42
    new-instance v1, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v2, "Missing created_at"

    invoke-direct {v1, v2}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationTweet;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    new-instance v1, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v2, "Missing text"

    invoke-direct {v1, v2}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 48
    :cond_2
    new-instance v0, Lcsc;

    invoke-direct {v0}, Lcsc;-><init>()V

    iget-wide v2, p0, Lcom/twitter/model/json/notifications/JsonNotificationTweet;->a:J

    .line 49
    invoke-virtual {v0, v2, v3}, Lcsc;->a(J)Lcsc;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/json/notifications/JsonNotificationTweet;->b:J

    .line 50
    invoke-virtual {v0, v2, v3}, Lcsc;->b(J)Lcsc;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/json/notifications/JsonNotificationTweet;->c:J

    .line 51
    invoke-virtual {v0, v2, v3}, Lcsc;->c(J)Lcsc;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationTweet;->d:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1}, Lcsc;->a(Ljava/lang/String;)Lcsc;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationTweet;->e:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1}, Lcsc;->b(Ljava/lang/String;)Lcsc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationTweet;->f:Z

    .line 54
    invoke-virtual {v0, v1}, Lcsc;->a(Z)Lcsc;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationTweet;->g:Ljava/util/List;

    .line 55
    invoke-static {v1}, Lcom/twitter/model/json/common/j;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/model/core/j;->a(Ljava/util/List;)Lcom/twitter/model/core/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcsc;->a(Lcom/twitter/model/core/j;)Lcsc;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcsc;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsa;

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/twitter/model/json/notifications/JsonNotificationTweet;->a()Lcsa;

    move-result-object v0

    return-object v0
.end method
