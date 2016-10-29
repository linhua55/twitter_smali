.class public Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate;
.super Lcom/twitter/model/json/common/b;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonControlType;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonNotificationSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/twitter/model/json/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcsr;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcsr;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v4, Lcsr;

    invoke-direct {v4}, Lcsr;-><init>()V

    .line 32
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v5

    .line 33
    iget-object v0, p0, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate;->b:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 34
    iget-object v0, p0, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonNotificationSetting;

    .line 35
    iget-object v1, p0, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate;->b:Ljava/util/Map;

    iget-object v2, v0, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonNotificationSetting;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonControlType;

    .line 36
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonControlType;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, v1, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonControlType;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v7, v2, [Ljava/lang/String;

    .line 38
    array-length v2, v7

    new-array v8, v2, [Ljava/lang/String;

    .line 39
    array-length v2, v7

    new-array v9, v2, [Ljava/lang/String;

    .line 40
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v2, v1, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonControlType;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 41
    iget-object v2, v1, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonControlType;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v7, v3

    .line 42
    iget-object v2, v1, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonControlType;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    aget-object v10, v7, v3

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v8, v3

    .line 43
    iget-object v2, v0, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonNotificationSetting;->d:Ljava/util/Map;

    aget-object v10, v7, v3

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v9, v3

    .line 40
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 45
    :cond_1
    new-instance v1, Lcrz;

    invoke-direct {v1}, Lcrz;-><init>()V

    iget-object v2, v0, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonNotificationSetting;->b:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v2}, Lcrz;->a(Ljava/lang/String;)Lcrz;

    move-result-object v1

    iget-object v2, v0, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonNotificationSetting;->c:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v2}, Lcrz;->b(Ljava/lang/String;)Lcrz;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v7}, Lcrz;->a([Ljava/lang/String;)Lcrz;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v8}, Lcrz;->b([Ljava/lang/String;)Lcrz;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v9}, Lcrz;->c([Ljava/lang/String;)Lcrz;

    move-result-object v1

    .line 51
    if-eqz p1, :cond_2

    iget-object v2, v0, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonNotificationSetting;->b:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 52
    iget-object v0, v0, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate$JsonNotificationSetting;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcrz;->c(Ljava/lang/String;)Lcrz;

    .line 56
    :goto_2
    invoke-virtual {v1}, Lcrz;->r()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto/16 :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcrz;->a(Z)Lcrz;

    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {v5}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/model/json/notifications/JsonNotificationSettingsTemplate;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 61
    invoke-virtual {v4, v0}, Lcsr;->a(Ljava/util/List;)Lcsr;

    .line 64
    :cond_4
    return-object v4
.end method
