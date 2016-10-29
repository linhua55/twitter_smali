.class public Lcom/twitter/model/dms/dc;
.super Lcom/twitter/model/dms/c;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/c",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/twitter/model/dms/cz;",
        "Lcom/twitter/model/dms/db;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/model/dms/c;-><init>(Lcom/twitter/util/serialization/ah;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/db;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/twitter/model/dms/db;

    invoke-direct {v0}, Lcom/twitter/model/dms/db;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/twitter/model/dms/dc;->a()Lcom/twitter/model/dms/db;

    move-result-object v0

    return-object v0
.end method
