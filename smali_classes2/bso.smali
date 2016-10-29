.class public Lbso;
.super Lcom/twitter/library/api/t;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/api/t",
        "<",
        "Lcom/twitter/model/timeline/ap;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/twitter/library/api/t;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lbso;->b(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/timeline/ap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic a(Lcom/fasterxml/jackson/core/JsonParser;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lbso;->b(Lcom/fasterxml/jackson/core/JsonParser;I)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/timeline/ap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const-class v0, Lcom/twitter/model/core/cs;

    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    .line 46
    new-instance v1, Lcom/twitter/model/timeline/cf;

    invoke-direct {v1}, Lcom/twitter/model/timeline/cf;-><init>()V

    .line 47
    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/cf;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/model/timeline/cf;

    move-result-object v1

    iget-wide v4, v0, Lcom/twitter/model/core/cs;->b:J

    .line 48
    invoke-virtual {v1, v4, v5}, Lcom/twitter/model/timeline/cf;->a(J)Lcom/twitter/model/timeline/az;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/timeline/cf;

    iget-wide v4, v0, Lcom/twitter/model/core/cs;->L:J

    .line 49
    invoke-virtual {v1, v4, v5}, Lcom/twitter/model/timeline/cf;->b(J)Lcom/twitter/model/timeline/az;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/timeline/cf;

    .line 50
    invoke-virtual {v0}, Lcom/twitter/model/core/cs;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/cf;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    .line 51
    invoke-virtual {v0}, Lcom/twitter/model/timeline/cf;->r()Ljava/lang/Object;

    move-result-object v0

    .line 46
    invoke-virtual {v2, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 53
    :cond_0
    new-instance v1, Lcom/twitter/model/timeline/ap;

    invoke-virtual {v2}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/twitter/model/timeline/ap;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected b(Lcom/fasterxml/jackson/core/JsonParser;I)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    const-string/jumbo v0, "StatusListEntityPR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed with parse error on status-code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method
