.class final Lcom/twitter/model/dms/cr;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lczn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lczn",
        "<",
        "Lcom/twitter/model/dms/dj;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/dms/dj;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 37
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/dj;

    iget-wide v0, v0, Lcom/twitter/model/dms/dj;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/twitter/model/dms/dj;

    invoke-virtual {p0, p1}, Lcom/twitter/model/dms/cr;->a(Lcom/twitter/model/dms/dj;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
