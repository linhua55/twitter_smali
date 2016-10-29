.class Lcom/twitter/model/dms/bw;
.super Lcom/twitter/model/dms/o;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/o",
        "<",
        "Lcom/twitter/model/dms/bu;",
        "Lcom/twitter/model/dms/bv;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/twitter/model/dms/o;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/dms/bp;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/twitter/model/dms/bw;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/bv;
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/twitter/model/dms/bv;

    invoke-direct {v0}, Lcom/twitter/model/dms/bv;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/twitter/model/dms/bw;->a()Lcom/twitter/model/dms/bv;

    move-result-object v0

    return-object v0
.end method
