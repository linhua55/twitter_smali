.class public Lcom/twitter/model/json/timeline/urt/JsonResponseObjects;
.super Lcom/twitter/model/json/common/f;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/f",
        "<",
        "Lctm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "feedbackActions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/json/timeline/urt/JsonResponseObjects$JsonFeedbackAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    .line 27
    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/timeline/urt/JsonResponseObjects;->a:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Lctm;
    .locals 6

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/JsonResponseObjects;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/v;->a(I)Lcom/twitter/util/collection/v;

    move-result-object v2

    .line 33
    new-instance v3, Lcom/twitter/model/json/timeline/urt/d;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/twitter/model/json/timeline/urt/d;-><init>(Lcom/twitter/model/json/timeline/urt/JsonResponseObjects;Lcom/twitter/model/json/timeline/urt/c;)V

    .line 35
    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/JsonResponseObjects;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/timeline/urt/JsonResponseObjects$JsonFeedbackAction;

    .line 38
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v3, v1}, Lcom/twitter/model/json/timeline/urt/d;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/i;

    move-result-object v5

    .line 41
    if-eqz v5, :cond_0

    .line 43
    iget-object v0, v0, Lcom/twitter/model/json/timeline/urt/JsonResponseObjects$JsonFeedbackAction;->d:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;Lczn;)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-static {v5, v0}, Lcom/twitter/model/timeline/l;->a(Lcom/twitter/model/timeline/i;Ljava/util/List;)Lcom/twitter/model/timeline/l;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    goto :goto_0

    .line 52
    :cond_1
    new-instance v1, Lctm;

    invoke-virtual {v2}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lctm;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/twitter/model/json/timeline/urt/JsonResponseObjects;->a()Lctm;

    move-result-object v0

    return-object v0
.end method
