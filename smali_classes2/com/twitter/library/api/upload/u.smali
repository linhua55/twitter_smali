.class Lcom/twitter/library/api/upload/u;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcom/twitter/library/api/upload/ab;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/api/upload/s;


# direct methods
.method constructor <init>(Lcom/twitter/library/api/upload/s;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/twitter/library/api/upload/u;->a:Lcom/twitter/library/api/upload/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/api/upload/ab;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p1, Lcom/twitter/library/api/upload/ab;->a:Lcom/twitter/library/api/upload/h;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/upload/h;

    iget-wide v0, v0, Lcom/twitter/library/api/upload/h;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    check-cast p1, Lcom/twitter/library/api/upload/ab;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/upload/u;->a(Lcom/twitter/library/api/upload/ab;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
