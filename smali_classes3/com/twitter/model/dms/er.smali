.class public Lcom/twitter/model/dms/er;
.super Lcom/twitter/model/dms/c;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/twitter/model/dms/eo;",
        "Lcom/twitter/model/dms/eq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    invoke-direct {p0, v0}, Lcom/twitter/model/dms/c;-><init>(Lcom/twitter/util/serialization/ah;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/eq;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/twitter/model/dms/eq;

    invoke-direct {v0}, Lcom/twitter/model/dms/eq;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/twitter/model/dms/er;->a()Lcom/twitter/model/dms/eq;

    move-result-object v0

    return-object v0
.end method
