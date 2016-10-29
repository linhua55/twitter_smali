.class public Ladm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ladj;


# instance fields
.field private final a:Ladj;

.field private final b:Lcup;


# direct methods
.method public constructor <init>(Ladk;Lcup;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Ladm;->a:Ladj;

    .line 31
    iput-object p2, p0, Ladm;->b:Lcup;

    .line 32
    return-void
.end method

.method static synthetic a(Ladm;)Ladj;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Ladm;->a:Ladj;

    return-object v0
.end method


# virtual methods
.method public a(J)Lrx/o;
    .locals 3
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
    .line 41
    iget-object v0, p0, Ladm;->b:Lcup;

    invoke-virtual {v0, p1, p2}, Lcup;->b(J)Lrx/o;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->d(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    new-instance v1, Ladn;

    invoke-direct {v1, p0}, Ladn;-><init>(Ladm;)V

    invoke-virtual {v0, v1}, Lrx/o;->f(Ldjj;)Lrx/o;

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
    .line 52
    iget-object v0, p0, Ladm;->a:Ladj;

    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 53
    return-void
.end method
