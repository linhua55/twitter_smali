.class public Lcom/twitter/model/json/notifications/JsonNotificationAction;
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
        "Lcrp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
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
.method public a()Lcrp;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/model/json/notifications/JsonNotificationAction;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v1, "Notification action missing id"

    invoke-direct {v0, v1}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 26
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcrr;

    invoke-direct {v0}, Lcrr;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationAction;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Lcrr;->a(Ljava/lang/String;)Lcrr;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationAction;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Lcrr;->b(Ljava/lang/String;)Lcrr;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcrr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrp;

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/twitter/model/json/notifications/JsonNotificationAction;->a()Lcrp;

    move-result-object v0

    return-object v0
.end method
