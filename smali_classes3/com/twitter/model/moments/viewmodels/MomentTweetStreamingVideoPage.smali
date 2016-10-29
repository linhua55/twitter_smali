.class public Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;
.super Lcom/twitter/model/moments/viewmodels/y;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/moments/viewmodels/e;
.implements Lcom/twitter/model/moments/viewmodels/g;
.implements Lcom/twitter/model/moments/viewmodels/h;


# instance fields
.field public final a:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

.field public final b:Lcom/twitter/model/moments/k;


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/ae;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/y;-><init>(Lcom/twitter/model/moments/viewmodels/z;)V

    .line 31
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/ae;->j:Lcom/twitter/model/moments/k;

    sget-object v1, Lcom/twitter/model/moments/k;->b:Lcom/twitter/model/moments/k;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/k;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->b:Lcom/twitter/model/moments/k;

    .line 32
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/ae;->k:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->a:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/twitter/model/moments/viewmodels/ae;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/ae;-><init>(Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;)V

    invoke-static {p0, v0, p1}, Lcom/twitter/model/moments/viewmodels/o;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/moments/viewmodels/l;Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->r()Lcom/twitter/model/moments/viewmodels/ae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/model/moments/viewmodels/ae;->b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/ae;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    return-object v0
.end method

.method public c()Lcom/twitter/model/moments/k;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->b:Lcom/twitter/model/moments/k;

    return-object v0
.end method

.method public e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->c:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    return-object v0
.end method

.method public m()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->b:Lcom/twitter/model/moments/k;

    invoke-static {v0}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/twitter/model/moments/viewmodels/l;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->r()Lcom/twitter/model/moments/viewmodels/ae;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/twitter/model/moments/viewmodels/ae;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/twitter/model/moments/viewmodels/ae;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/ae;-><init>(Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;)V

    return-object v0
.end method

.method public v()Z
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->a:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    sget-object v1, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;->b:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->a:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    sget-object v1, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;->c:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Z
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->a:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    sget-object v1, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;->c:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->a:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    sget-object v1, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;->b:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->a:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    sget-object v1, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;->a:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
