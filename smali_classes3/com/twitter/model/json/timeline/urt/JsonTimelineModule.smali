.class public Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;
.super Lcom/twitter/model/json/common/b;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/json/timeline/urt/JsonTimelineModuleItem;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lctl;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "header"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "displayType"
        }
    .end annotation
.end field

.field public d:Lctp;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "clientEventInfo"
        }
    .end annotation
.end field

.field public e:Lctr;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "dismissInfo"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/twitter/model/json/common/b;-><init>()V

    return-void
.end method
