.class public Lbaf;
.super Lazi;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Lazi",
        "<",
        "Lcom/twitter/database/model/g;",
        "Lcmf",
        "<TD;>;",
        "Lcom/twitter/database/model/c;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/database/model/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/model/q",
            "<TP;>;"
        }
    .end annotation
.end field

.field private final b:Lcmx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcmx",
            "<TP;TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/database/model/q;Lcmx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/model/q",
            "<TP;>;",
            "Lcmx",
            "<TP;TD;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-interface {p1}, Lcom/twitter/database/model/q;->d()Lrx/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lazi;-><init>(Lrx/o;)V

    .line 30
    iput-object p1, p0, Lbaf;->a:Lcom/twitter/database/model/q;

    .line 31
    iput-object p2, p0, Lbaf;->b:Lcmx;

    .line 32
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/database/model/g;)Lcmf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/model/g;",
            ")",
            "Lcmf",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lbaf;->a:Lcom/twitter/database/model/q;

    invoke-interface {v0, p1}, Lcom/twitter/database/model/q;->a(Lcom/twitter/database/model/g;)Lcom/twitter/database/model/j;

    move-result-object v0

    .line 39
    new-instance v1, Lbas;

    invoke-direct {v1, v0}, Lbas;-><init>(Lcom/twitter/database/model/j;)V

    .line 40
    new-instance v0, Lcmq;

    iget-object v2, p0, Lbaf;->b:Lcmx;

    invoke-direct {v0, v1, v2}, Lcmq;-><init>(Lcmf;Lcmy;)V

    return-object v0
.end method

.method protected synthetic b(Ljava/lang/Object;)Ljava/io/Closeable;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcom/twitter/database/model/g;

    invoke-virtual {p0, p1}, Lbaf;->a(Lcom/twitter/database/model/g;)Lcmf;

    move-result-object v0

    return-object v0
.end method
