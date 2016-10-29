.class public Lcom/twitter/android/moments/data/ae;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:J

.field private final b:Lcom/twitter/android/moments/data/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/moments/data/d",
            "<",
            "Lavh;",
            "Lcmf",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/android/moments/data/s;


# direct methods
.method public constructor <init>(JLcom/twitter/android/moments/data/d;Lcom/twitter/android/moments/data/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/android/moments/data/d",
            "<",
            "Lavh;",
            "Lcmf",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;>;",
            "Lcom/twitter/android/moments/data/s;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/twitter/android/moments/data/ae;->a:J

    .line 30
    iput-object p3, p0, Lcom/twitter/android/moments/data/ae;->b:Lcom/twitter/android/moments/data/d;

    .line 31
    iput-object p4, p0, Lcom/twitter/android/moments/data/ae;->c:Lcom/twitter/android/moments/data/s;

    .line 32
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/data/ae;->c:Lcom/twitter/android/moments/data/s;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/moments/data/s;->a(J)V

    .line 36
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/android/moments/data/ae;->c:Lcom/twitter/android/moments/data/s;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/moments/data/s;->b(J)V

    .line 40
    return-void
.end method

.method public c(J)Lrx/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lavj;

    invoke-direct {v0}, Lavj;-><init>()V

    .line 45
    invoke-static {p1, p2}, Lcom/twitter/library/provider/bz;->a(J)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/moments/data/ae;->a:J

    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lavj;->a(Landroid/net/Uri;)Lavj;

    move-result-object v0

    sget-object v1, Lbfi;->a:[Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Lavj;->a([Ljava/lang/String;)Lavj;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lavj;->a()Lavh;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/twitter/android/moments/data/ae;->b:Lcom/twitter/android/moments/data/d;

    invoke-virtual {v1}, Lcom/twitter/android/moments/data/d;->a()Lazt;

    move-result-object v1

    invoke-interface {v1, v0}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/af;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/af;-><init>(Lcom/twitter/android/moments/data/ae;)V

    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

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
    .line 59
    iget-object v0, p0, Lcom/twitter/android/moments/data/ae;->b:Lcom/twitter/android/moments/data/d;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/d;->close()V

    .line 60
    return-void
.end method
