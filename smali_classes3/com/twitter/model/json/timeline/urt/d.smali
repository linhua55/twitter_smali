.class Lcom/twitter/model/json/timeline/urt/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lczn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lczn",
        "<",
        "Ljava/lang/String;",
        "Lcom/twitter/model/timeline/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/model/json/timeline/urt/JsonResponseObjects;


# direct methods
.method private constructor <init>(Lcom/twitter/model/json/timeline/urt/JsonResponseObjects;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/twitter/model/json/timeline/urt/d;->a:Lcom/twitter/model/json/timeline/urt/JsonResponseObjects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/json/timeline/urt/JsonResponseObjects;Lcom/twitter/model/json/timeline/urt/c;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/twitter/model/json/timeline/urt/d;-><init>(Lcom/twitter/model/json/timeline/urt/JsonResponseObjects;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/model/timeline/i;
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/d;->a:Lcom/twitter/model/json/timeline/urt/JsonResponseObjects;

    iget-object v0, v0, Lcom/twitter/model/json/timeline/urt/JsonResponseObjects;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/timeline/urt/JsonResponseObjects$JsonFeedbackAction;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/json/timeline/urt/JsonResponseObjects$JsonFeedbackAction;

    iget-object v1, v1, Lcom/twitter/model/json/timeline/urt/JsonResponseObjects$JsonFeedbackAction;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/twitter/model/json/timeline/urt/JsonResponseObjects$JsonFeedbackAction;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/twitter/model/json/timeline/urt/JsonResponseObjects$JsonFeedbackAction;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/twitter/model/timeline/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/model/timeline/i;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twitter/model/json/timeline/urt/d;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/i;

    move-result-object v0

    return-object v0
.end method
