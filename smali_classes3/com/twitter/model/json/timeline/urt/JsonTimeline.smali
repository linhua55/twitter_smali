.class public Lcom/twitter/model/json/timeline/urt/JsonTimeline;
.super Lcom/twitter/model/json/common/f;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/f",
        "<",
        "Lcto;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "id"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "instructions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lctt;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lctm;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "responseObjects"
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
.method public a()Lcto;
    .locals 5

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/JsonTimeline;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/JsonTimeline;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/JsonTimeline;->c:Lctm;

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcto;

    iget-object v1, p0, Lcom/twitter/model/json/timeline/urt/JsonTimeline;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/model/json/timeline/urt/JsonTimeline;->b:Ljava/util/List;

    invoke-static {v2}, Lcom/twitter/util/collection/ImmutableList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/model/json/timeline/urt/JsonTimeline;->c:Lctm;

    invoke-direct {v0, v1, v2, v3}, Lcto;-><init>(Ljava/lang/String;Ljava/util/List;Lctm;)V

    .line 38
    :goto_0
    return-object v0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A JsonTimeline must have a non-null id, a list of timeline instructions, and ResponseObjects. ID: %s, List<TimelineInstruction>: %s, ResponseObjects: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/model/json/timeline/urt/JsonTimeline;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/twitter/model/json/timeline/urt/JsonTimeline;->b:Ljava/util/List;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/twitter/model/json/timeline/urt/JsonTimeline;->c:Lctm;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 38
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/twitter/model/json/timeline/urt/JsonTimeline;->a()Lcto;

    move-result-object v0

    return-object v0
.end method
