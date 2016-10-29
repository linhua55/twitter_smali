.class public Lcom/twitter/library/api/moments/maker/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/api/moments/maker/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/library/api/moments/maker/d",
        "<",
        "Lcom/twitter/model/moments/maker/ar;",
        "Lcom/twitter/model/core/cj;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/twitter/model/json/moments/maker/JsonCurateRequest;


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<+",
            "Lcom/twitter/model/moments/maker/an;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/twitter/library/api/moments/maker/b;->a:J

    .line 31
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 32
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/an;

    .line 33
    instance-of v3, v0, Lcom/twitter/model/moments/maker/a;

    if-eqz v3, :cond_0

    .line 34
    check-cast v0, Lcom/twitter/model/moments/maker/a;

    invoke-static {v0}, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;->a(Lcom/twitter/model/moments/maker/a;)Lcom/twitter/model/json/moments/maker/JsonCurateOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 35
    :cond_0
    instance-of v3, v0, Lcom/twitter/model/moments/maker/s;

    if-eqz v3, :cond_1

    .line 36
    check-cast v0, Lcom/twitter/model/moments/maker/s;

    invoke-static {v0}, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;->a(Lcom/twitter/model/moments/maker/s;)Lcom/twitter/model/json/moments/maker/JsonCurateOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 37
    :cond_1
    instance-of v3, v0, Lcom/twitter/model/moments/maker/h;

    if-eqz v3, :cond_2

    .line 38
    check-cast v0, Lcom/twitter/model/moments/maker/h;

    invoke-static {v0}, Lcom/twitter/model/json/moments/maker/JsonCurateOperation;->a(Lcom/twitter/model/moments/maker/h;)Lcom/twitter/model/json/moments/maker/JsonCurateOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 40
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got illegal operation type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/model/json/moments/maker/JsonCurateRequest;->a(Ljava/util/List;)Lcom/twitter/model/json/moments/maker/JsonCurateRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/moments/maker/b;->b:Lcom/twitter/model/json/moments/maker/JsonCurateRequest;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    const-string/jumbo v0, "moments"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "curate"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/twitter/library/api/moments/maker/b;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/twitter/model/json/moments/maker/JsonCurateRequest;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/b;->b:Lcom/twitter/model/json/moments/maker/JsonCurateRequest;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "curate"

    return-object v0
.end method

.method public d()Lcom/twitter/library/api/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const-class v0, Lcom/twitter/model/moments/maker/ar;

    invoke-static {v0}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lcom/twitter/model/json/common/b;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/twitter/library/api/moments/maker/b;->b()Lcom/twitter/model/json/moments/maker/JsonCurateRequest;

    move-result-object v0

    return-object v0
.end method
