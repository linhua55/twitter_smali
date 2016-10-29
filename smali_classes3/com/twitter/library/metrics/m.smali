.class Lcom/twitter/library/metrics/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/y",
        "<",
        "Lcom/twitter/library/network/DataUsageEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laxu;

.field final synthetic b:Laxu;

.field final synthetic c:Lcom/twitter/library/metrics/k;


# direct methods
.method constructor <init>(Lcom/twitter/library/metrics/k;Laxu;Laxu;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/twitter/library/metrics/m;->c:Lcom/twitter/library/metrics/k;

    iput-object p2, p0, Lcom/twitter/library/metrics/m;->a:Laxu;

    iput-object p3, p0, Lcom/twitter/library/metrics/m;->b:Laxu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/network/DataUsageEvent;)V
    .locals 4

    .prologue
    .line 128
    invoke-static {}, Lcom/twitter/app/common/util/f;->a()Lcom/twitter/app/common/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/util/f;->d()Z

    move-result v0

    .line 129
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/metrics/m;->a:Laxu;

    .line 130
    :goto_0
    iget-wide v2, p1, Lcom/twitter/library/network/DataUsageEvent;->f:J

    invoke-virtual {v0, v2, v3}, Laxu;->a(J)V

    .line 131
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/metrics/m;->b:Laxu;

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 125
    check-cast p1, Lcom/twitter/library/network/DataUsageEvent;

    invoke-virtual {p0, p1}, Lcom/twitter/library/metrics/m;->a(Lcom/twitter/library/network/DataUsageEvent;)V

    return-void
.end method
