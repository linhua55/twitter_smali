.class public Lcom/twitter/model/json/timeline/urt/JsonConversationComponent;
.super Lcom/twitter/model/json/common/f;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/f",
        "<",
        "Lctg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcud;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Lcom/twitter/model/timeline/dd;
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
.method public a()Lctg;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcti;

    iget-object v1, p0, Lcom/twitter/model/json/timeline/urt/JsonConversationComponent;->a:Lcud;

    iget-object v2, p0, Lcom/twitter/model/json/timeline/urt/JsonConversationComponent;->b:Lcom/twitter/model/timeline/dd;

    invoke-direct {v0, v1, v2}, Lcti;-><init>(Lcud;Lcom/twitter/model/timeline/dd;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/twitter/model/json/timeline/urt/JsonConversationComponent;->a()Lctg;

    move-result-object v0

    return-object v0
.end method
