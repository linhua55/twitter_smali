.class public Lcom/twitter/library/media/util/ad;
.super Lcom/twitter/media/request/d;
.source "Twttr"


# instance fields
.field private final a:Lcpu;


# direct methods
.method public constructor <init>(Lcpu;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/twitter/media/request/d;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/twitter/library/media/util/ad;->a:Lcpu;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/twitter/util/math/Size;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/twitter/util/math/Size;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/twitter/library/media/util/ad;->a:Lcpu;

    iget-object v1, v1, Lcpu;->d:Lcpk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/library/media/util/ad;->a:Lcpu;

    iget-object v1, v1, Lcpu;->d:Lcpk;

    iget-object v1, v1, Lcpk;->b:Lcom/twitter/util/math/Size;

    invoke-virtual {v1, p2}, Lcom/twitter/util/math/Size;->b(Lcom/twitter/util/math/Size;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/twitter/library/media/util/ad;->a:Lcpu;

    iget-object v1, v1, Lcpu;->d:Lcpk;

    iget-object v1, v1, Lcpk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/twitter/library/media/util/ad;->a:Lcpu;

    iget-object v1, v1, Lcpu;->e:Lcpk;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/library/media/util/ad;->a:Lcpu;

    iget-object v1, v1, Lcpu;->e:Lcpk;

    iget-object v1, v1, Lcpk;->b:Lcom/twitter/util/math/Size;

    invoke-virtual {v1, p2}, Lcom/twitter/util/math/Size;->b(Lcom/twitter/util/math/Size;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    iget-object v1, p0, Lcom/twitter/library/media/util/ad;->a:Lcpu;

    iget-object v1, v1, Lcpu;->e:Lcpk;

    iget-object v1, v1, Lcpk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/twitter/library/media/util/ad;->a:Lcpu;

    iget-object v1, v1, Lcpu;->f:Lcpk;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/library/media/util/ad;->a:Lcpu;

    iget-object v1, v1, Lcpu;->f:Lcpk;

    iget-object v1, v1, Lcpk;->b:Lcom/twitter/util/math/Size;

    invoke-virtual {v1, p2}, Lcom/twitter/util/math/Size;->b(Lcom/twitter/util/math/Size;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    iget-object v1, p0, Lcom/twitter/library/media/util/ad;->a:Lcpu;

    iget-object v1, v1, Lcpu;->f:Lcpk;

    iget-object v1, v1, Lcpk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 33
    :cond_2
    iget-object v1, p0, Lcom/twitter/library/media/util/ad;->a:Lcpu;

    iget-object v1, v1, Lcpu;->g:Lcpk;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/twitter/library/media/util/ad;->a:Lcpu;

    iget-object v1, v1, Lcpu;->g:Lcpk;

    iget-object v1, v1, Lcpk;->b:Lcom/twitter/util/math/Size;

    invoke-virtual {v1, p2}, Lcom/twitter/util/math/Size;->b(Lcom/twitter/util/math/Size;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    iget-object v1, p0, Lcom/twitter/library/media/util/ad;->a:Lcpu;

    iget-object v1, v1, Lcpu;->g:Lcpk;

    iget-object v1, v1, Lcpk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 36
    :cond_3
    iget-object v1, p0, Lcom/twitter/library/media/util/ad;->a:Lcpu;

    iget-object v1, v1, Lcpu;->c:Lcpk;

    iget-object v1, v1, Lcpk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 37
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
