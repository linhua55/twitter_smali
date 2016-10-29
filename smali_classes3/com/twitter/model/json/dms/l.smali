.class public Lcom/twitter/model/json/dms/l;
.super Lcom/twitter/model/json/common/m;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/m",
        "<",
        "Lcom/twitter/model/dms/ap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/twitter/model/json/common/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/dms/ap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 26
    const-string/jumbo v0, "dm_cards_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v1

    .line 52
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-class v0, Lclw;

    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclw;

    .line 32
    if-eqz v0, :cond_3

    .line 33
    invoke-virtual {v0}, Lclw;->b()Ljava/lang/String;

    move-result-object v1

    .line 34
    const-string/jumbo v2, "2586390716:feedback_nps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    new-instance v1, Lcom/twitter/model/dms/bb;

    invoke-direct {v1}, Lcom/twitter/model/dms/bb;-><init>()V

    .line 36
    invoke-virtual {v1, v0}, Lcom/twitter/model/dms/bb;->b(Lclw;)Lcom/twitter/model/dms/ay;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bb;

    .line 37
    invoke-virtual {v0}, Lcom/twitter/model/dms/bb;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ap;

    goto :goto_0

    .line 38
    :cond_1
    const-string/jumbo v2, "2586390716:feedback_csat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    new-instance v1, Lcom/twitter/model/dms/av;

    invoke-direct {v1}, Lcom/twitter/model/dms/av;-><init>()V

    .line 40
    invoke-virtual {v1, v0}, Lcom/twitter/model/dms/av;->b(Lclw;)Lcom/twitter/model/dms/ay;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/av;

    .line 41
    invoke-virtual {v0}, Lcom/twitter/model/dms/av;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ap;

    goto :goto_0

    .line 45
    :cond_2
    new-instance v1, Lcom/twitter/model/dms/bz;

    invoke-direct {v1}, Lcom/twitter/model/dms/bz;-><init>()V

    .line 46
    invoke-virtual {v1, v0}, Lcom/twitter/model/dms/bz;->a(Lclw;)Lcom/twitter/model/dms/aq;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/bz;

    .line 47
    invoke-virtual {v0}, Lclw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/model/dms/bz;->a(Ljava/lang/String;)Lcom/twitter/model/dms/j;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bz;

    .line 48
    invoke-virtual {v0}, Lcom/twitter/model/dms/bz;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ap;

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 52
    goto :goto_0
.end method

.method public synthetic parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/twitter/model/json/dms/l;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/dms/ap;

    move-result-object v0

    return-object v0
.end method
