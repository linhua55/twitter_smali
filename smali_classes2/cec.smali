.class Lcec;
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
.field final synthetic a:Lceb;


# direct methods
.method constructor <init>(Lceb;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcec;->a:Lceb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/network/DataUsageEvent;)V
    .locals 6

    .prologue
    .line 54
    iget-object v0, p0, Lcec;->a:Lceb;

    iget-object v1, p0, Lcec;->a:Lceb;

    invoke-static {v1}, Lceb;->a(Lceb;)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/twitter/library/network/DataUsageEvent;->f:J

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lceb;->a(Lceb;J)J

    .line 55
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lcom/twitter/library/network/DataUsageEvent;

    invoke-virtual {p0, p1}, Lcec;->a(Lcom/twitter/library/network/DataUsageEvent;)V

    return-void
.end method
