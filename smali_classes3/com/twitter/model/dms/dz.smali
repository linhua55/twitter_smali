.class public Lcom/twitter/model/dms/dz;
.super Lcom/twitter/model/dms/c;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/c",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/twitter/model/dms/Participant;",
        ">;",
        "Lcom/twitter/model/dms/dw;",
        "Lcom/twitter/model/dms/dy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/twitter/model/dms/Participant;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/model/dms/c;-><init>(Lcom/twitter/util/serialization/ah;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/dy;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/twitter/model/dms/dy;

    invoke-direct {v0}, Lcom/twitter/model/dms/dy;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/twitter/model/dms/dz;->a()Lcom/twitter/model/dms/dy;

    move-result-object v0

    return-object v0
.end method
