.class public Ladw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ladj;
.implements Lazt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladj;",
        "Lazt",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/util/collection/ar",
        "<",
        "Lcom/twitter/model/moments/viewmodels/d;",
        "Lcom/twitter/model/moments/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/twitter/android/moments/data/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/moments/data/d",
            "<",
            "Lavh;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/account/UserIdentifier;Lcom/twitter/android/moments/data/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/account/UserIdentifier;",
            "Lcom/twitter/android/moments/data/d",
            "<",
            "Lavh;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v0

    iput-wide v0, p0, Ladw;->a:J

    .line 34
    iput-object p2, p0, Ladw;->b:Lcom/twitter/android/moments/data/d;

    .line 35
    return-void
.end method


# virtual methods
.method public a(J)Lrx/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lavj;

    invoke-direct {v0}, Lavj;-><init>()V

    .line 47
    invoke-static {p1, p2}, Lcom/twitter/library/provider/by;->a(J)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Ladw;->a:J

    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lavj;->a(Landroid/net/Uri;)Lavj;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Lavj;->a([Ljava/lang/String;)Lavj;

    move-result-object v0

    const-string/jumbo v1, "_id ASC"

    .line 49
    invoke-virtual {v0, v1}, Lavj;->b(Ljava/lang/String;)Lavj;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lavj;->a()Lavh;

    move-result-object v0

    .line 51
    iget-object v1, p0, Ladw;->b:Lcom/twitter/android/moments/data/d;

    invoke-virtual {v1}, Lcom/twitter/android/moments/data/d;->a()Lazt;

    move-result-object v1

    invoke-interface {v1, v0}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    new-instance v1, Ladx;

    invoke-direct {v1, p0}, Ladx;-><init>(Ladw;)V

    .line 52
    invoke-virtual {v0, v1}, Lrx/o;->f(Ldjj;)Lrx/o;

    move-result-object v0

    .line 51
    return-object v0
.end method

.method public a(Ljava/lang/Long;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ladw;->a(J)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a_(Ljava/lang/Object;)Lrx/o;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ladw;->a(Ljava/lang/Long;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Ladw;->b:Lcom/twitter/android/moments/data/d;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/d;->close()V

    .line 71
    return-void
.end method
