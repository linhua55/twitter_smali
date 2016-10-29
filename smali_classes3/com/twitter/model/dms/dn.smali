.class public Lcom/twitter/model/dms/dn;
.super Lcom/twitter/model/dms/dm;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/dm",
        "<",
        "Lcom/twitter/model/dms/Participant;",
        "Lcom/twitter/model/dms/dn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/twitter/model/dms/dm;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bq_()Z
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/twitter/model/dms/dm;->bq_()Z

    move-result v0

    return v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/twitter/model/dms/dn;->e()Lcom/twitter/model/dms/Participant;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/Participant;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/twitter/model/dms/Participant;

    invoke-direct {v0, p0}, Lcom/twitter/model/dms/Participant;-><init>(Lcom/twitter/model/dms/dm;)V

    return-object v0
.end method
