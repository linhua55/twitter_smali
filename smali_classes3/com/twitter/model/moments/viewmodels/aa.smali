.class public Lcom/twitter/model/moments/viewmodels/aa;
.super Lcom/twitter/model/moments/viewmodels/y;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/moments/viewmodels/e;
.implements Lcom/twitter/model/moments/viewmodels/g;
.implements Lcom/twitter/model/moments/viewmodels/h;


# static fields
.field static final synthetic c:Z


# instance fields
.field public final a:J

.field public final b:Lcom/twitter/model/moments/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/twitter/model/moments/viewmodels/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/model/moments/viewmodels/aa;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/ab;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/y;-><init>(Lcom/twitter/model/moments/viewmodels/z;)V

    .line 24
    iget-wide v0, p1, Lcom/twitter/model/moments/viewmodels/ab;->j:J

    iput-wide v0, p0, Lcom/twitter/model/moments/viewmodels/aa;->a:J

    .line 25
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/ab;->k:Lcom/twitter/model/moments/k;

    sget-object v1, Lcom/twitter/model/moments/k;->b:Lcom/twitter/model/moments/k;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/k;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/aa;->b:Lcom/twitter/model/moments/k;

    .line 26
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/twitter/model/moments/viewmodels/aa;->b(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/aa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/twitter/model/moments/viewmodels/aa;->b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/aa;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/aa;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/twitter/model/moments/viewmodels/ab;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/ab;-><init>(Lcom/twitter/model/moments/viewmodels/aa;)V

    invoke-static {p0, v0, p1}, Lcom/twitter/model/moments/viewmodels/o;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/moments/viewmodels/l;Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/aa;

    return-object v0
.end method

.method public b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/aa;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/aa;->v()Lcom/twitter/model/moments/viewmodels/ab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/model/moments/viewmodels/ab;->b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/ab;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/aa;

    return-object v0
.end method

.method public c()Lcom/twitter/model/moments/k;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/aa;->b:Lcom/twitter/model/moments/k;

    return-object v0
.end method

.method public e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->b:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

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
    .line 72
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/aa;->b:Lcom/twitter/model/moments/k;

    invoke-static {v0}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/twitter/model/moments/viewmodels/l;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/aa;->v()Lcom/twitter/model/moments/viewmodels/ab;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/twitter/model/core/MediaEntity;
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/aa;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 38
    sget-boolean v1, Lcom/twitter/model/moments/viewmodels/aa;->c:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/aa;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    .line 40
    iget-wide v2, p0, Lcom/twitter/model/moments/viewmodels/aa;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/ac;->a(J)Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Lcom/twitter/model/moments/viewmodels/ab;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/twitter/model/moments/viewmodels/ab;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/ab;-><init>(Lcom/twitter/model/moments/viewmodels/aa;)V

    return-object v0
.end method
