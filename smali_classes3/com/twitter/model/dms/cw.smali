.class public Lcom/twitter/model/dms/cw;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/dms/cu;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/dms/cw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/model/dms/cw;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/model/dms/cw;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/twitter/model/dms/cw;->a:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/twitter/util/object/h;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/dms/cw;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/twitter/model/dms/cw;->e()Lcom/twitter/model/dms/cu;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/cu;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/twitter/model/dms/cu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/cu;-><init>(Lcom/twitter/model/dms/cw;Lcom/twitter/model/dms/cv;)V

    return-object v0
.end method
