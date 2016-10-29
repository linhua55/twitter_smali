.class Lcom/twitter/library/client/au;
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
        "Lcom/twitter/library/client/ba;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/library/client/as;


# direct methods
.method constructor <init>(Lcom/twitter/library/client/as;J)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/twitter/library/client/au;->b:Lcom/twitter/library/client/as;

    iput-wide p2, p0, Lcom/twitter/library/client/au;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/ba;)Z
    .locals 4

    .prologue
    .line 96
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ba;

    iget-wide v0, v0, Lcom/twitter/library/client/ba;->d:J

    iget-wide v2, p0, Lcom/twitter/library/client/au;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

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
    .line 93
    check-cast p1, Lcom/twitter/library/client/ba;

    invoke-virtual {p0, p1}, Lcom/twitter/library/client/au;->a(Lcom/twitter/library/client/ba;)Z

    move-result v0

    return v0
.end method
