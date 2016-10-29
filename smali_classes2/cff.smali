.class public Lcff;
.super Lceo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lceo",
        "<",
        "Lcrc;",
        "Lbff;",
        "Lbfg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/twitter/util/serialization/ah;Lcom/twitter/database/model/q;Lcom/twitter/database/model/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcrc;",
            ">;",
            "Lcom/twitter/database/model/q",
            "<",
            "Lbff;",
            ">;",
            "Lcom/twitter/database/model/r",
            "<",
            "Lbfg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lceo;-><init>(Lcom/twitter/util/serialization/ah;Lcom/twitter/database/model/q;Lcom/twitter/database/model/r;)V

    .line 32
    return-void
.end method

.method public static a(Lcom/twitter/library/provider/dm;)Lcff;
    .locals 5

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/twitter/library/provider/dm;->d()Lcom/twitter/database/schema/TwitterSchema;

    move-result-object v1

    .line 23
    new-instance v2, Lcff;

    sget-object v3, Lcrc;->a:Lcom/twitter/util/serialization/ah;

    const-class v0, Lbfe;

    .line 24
    invoke-interface {v1, v0}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbfe;

    invoke-interface {v0}, Lbfe;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    const-class v4, Lbfh;

    .line 25
    invoke-interface {v1, v4}, Lcom/twitter/database/model/l;->c(Ljava/lang/Class;)Lcom/twitter/database/model/r;

    move-result-object v1

    invoke-direct {v2, v3, v0, v1}, Lcff;-><init>(Lcom/twitter/util/serialization/ah;Lcom/twitter/database/model/q;Lcom/twitter/database/model/r;)V

    .line 23
    return-object v2
.end method
