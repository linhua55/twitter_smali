.class final Lcom/twitter/library/platform/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldau",
        "<",
        "Lcks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 514
    iput-wide p1, p0, Lcom/twitter/library/platform/b;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcks;)Z
    .locals 4

    .prologue
    .line 517
    instance-of v0, p1, Lcle;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcks;->a:J

    iget-wide v2, p0, Lcom/twitter/library/platform/b;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 514
    check-cast p1, Lcks;

    invoke-virtual {p0, p1}, Lcom/twitter/library/platform/b;->a(Lcks;)Z

    move-result v0

    return v0
.end method
