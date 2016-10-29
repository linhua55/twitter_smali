.class public Lcom/twitter/model/json/timeline/urt/JsonTimelineInstruction;
.super Lcom/twitter/model/json/common/f;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/f",
        "<",
        "Lctt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcte;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "addEntries"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lctt;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineInstruction;->a:Lcte;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/model/json/timeline/urt/JsonTimelineInstruction;->a()Lctt;

    move-result-object v0

    return-object v0
.end method
