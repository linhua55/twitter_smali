.class public Lcom/twitter/model/dms/ed;
.super Lcom/twitter/model/dms/c;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/c",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/twitter/model/dms/ea;",
        "Lcom/twitter/model/dms/ec;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/model/dms/c;-><init>(Lcom/twitter/util/serialization/ah;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/ec;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/twitter/model/dms/ec;

    invoke-direct {v0}, Lcom/twitter/model/dms/ec;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/twitter/model/dms/ed;->a()Lcom/twitter/model/dms/ec;

    move-result-object v0

    return-object v0
.end method
