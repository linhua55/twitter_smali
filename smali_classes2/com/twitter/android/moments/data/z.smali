.class public Lcom/twitter/android/moments/data/z;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lcom/twitter/android/moments/data/w;

.field private final b:J


# direct methods
.method public constructor <init>(JLcom/twitter/android/moments/data/w;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/twitter/android/moments/data/z;->b:J

    .line 24
    iput-object p3, p0, Lcom/twitter/android/moments/data/z;->a:Lcom/twitter/android/moments/data/w;

    .line 25
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
            "Lcmf",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lavj;

    invoke-direct {v0}, Lavj;-><init>()V

    .line 30
    invoke-static {p1, p2}, Lcom/twitter/library/provider/bx;->a(J)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/moments/data/z;->b:J

    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lavj;->a(Landroid/net/Uri;)Lavj;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Lavj;->a([Ljava/lang/String;)Lavj;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lavj;->a()Lavh;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/twitter/android/moments/data/z;->a:Lcom/twitter/android/moments/data/w;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/data/w;->a(Lavh;)Lrx/o;

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
    .line 38
    iget-object v0, p0, Lcom/twitter/android/moments/data/z;->a:Lcom/twitter/android/moments/data/w;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/w;->close()V

    .line 39
    return-void
.end method
