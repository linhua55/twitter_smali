.class public Lcom/twitter/model/dms/dv;
.super Lcom/twitter/model/dms/c;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/c",
        "<",
        "Lcom/twitter/model/dms/ds;",
        "Lcom/twitter/model/dms/dp;",
        "Lcom/twitter/model/dms/dr;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/twitter/model/dms/ds;->a:Lcom/twitter/util/serialization/ah;

    invoke-direct {p0, v0}, Lcom/twitter/model/dms/c;-><init>(Lcom/twitter/util/serialization/ah;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/dr;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/twitter/model/dms/dr;

    invoke-direct {v0}, Lcom/twitter/model/dms/dr;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/twitter/model/dms/dv;->a()Lcom/twitter/model/dms/dr;

    move-result-object v0

    return-object v0
.end method
