.class public Lcom/twitter/model/json/activity/JsonDisplayText;
.super Lcom/twitter/model/json/common/f;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/f",
        "<",
        "Lckt;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lczn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lczn",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/twitter/model/core/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "bold_indexes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/twitter/model/json/activity/b;

    invoke-direct {v0}, Lcom/twitter/model/json/activity/b;-><init>()V

    sput-object v0, Lcom/twitter/model/json/activity/JsonDisplayText;->c:Lczn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lckt;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lckv;

    invoke-direct {v0}, Lckv;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/activity/JsonDisplayText;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1}, Lckv;->a(Ljava/lang/String;)Lckv;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/model/json/activity/JsonDisplayText;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/json/activity/JsonDisplayText;->b:Ljava/util/List;

    sget-object v2, Lcom/twitter/model/json/activity/JsonDisplayText;->c:Lczn;

    .line 44
    invoke-static {v0, v2}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 43
    :goto_0
    invoke-virtual {v1, v0}, Lckv;->a(Ljava/util/List;)Lckv;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lckv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckt;

    .line 41
    return-object v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/twitter/model/json/activity/JsonDisplayText;->a()Lckt;

    move-result-object v0

    return-object v0
.end method
