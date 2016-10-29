.class public Lawd;
.super Lcmq;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmq",
        "<",
        "Lbew;",
        "Lcom/twitter/model/core/cm;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/database/model/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/model/j",
            "<",
            "Lbew;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lawc;


# direct methods
.method public constructor <init>(Lawc;Lcom/twitter/database/model/j;Lcmx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/model/j",
            "<",
            "Lbew;",
            ">;",
            "Lcmx",
            "<-",
            "Lbew;",
            "Lcom/twitter/model/core/cm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lawd;->b:Lawc;

    .line 38
    new-instance v0, Lbas;

    invoke-direct {v0, p2}, Lbas;-><init>(Lcom/twitter/database/model/j;)V

    invoke-direct {p0, v0, p3}, Lcmq;-><init>(Lcmf;Lcmy;)V

    .line 39
    iput-object p2, p0, Lawd;->a:Lcom/twitter/database/model/j;

    .line 40
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lawd;->a:Lcom/twitter/database/model/j;

    invoke-virtual {v0}, Lcom/twitter/database/model/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawd;->a:Lcom/twitter/database/model/j;

    iget-object v0, v0, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbew;

    invoke-interface {v0}, Lbew;->h()Lbdu;

    move-result-object v0

    invoke-interface {v0}, Lbdu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
