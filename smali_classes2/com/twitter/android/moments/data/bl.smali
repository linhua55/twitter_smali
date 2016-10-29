.class public Lcom/twitter/android/moments/data/bl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lazt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lazt",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcrc;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcep",
            "<",
            "Ljava/lang/String;",
            "Lcrc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcep;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcep",
            "<",
            "Ljava/lang/String;",
            "Lcrc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/twitter/android/moments/data/bl;->a:Lcep;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/data/bl;)Lcep;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/moments/data/bl;->a:Lcep;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lcrc;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p1}, Lrx/o;->a(Ljava/lang/Iterable;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/bn;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/bn;-><init>(Lcom/twitter/android/moments/data/bl;)V

    .line 38
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/bm;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/bm;-><init>(Lcom/twitter/android/moments/data/bl;)V

    .line 44
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 50
    invoke-static {}, Ldcn;->d()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lrx/o;->p()Lrx/o;

    move-result-object v0

    .line 52
    invoke-static {}, Ldcn;->b()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    .line 37
    return-object v0
.end method

.method public synthetic a_(Ljava/lang/Object;)Lrx/o;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/bl;->a(Ljava/util/List;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method
