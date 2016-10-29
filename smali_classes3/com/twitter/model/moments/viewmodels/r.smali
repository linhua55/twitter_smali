.class public abstract Lcom/twitter/model/moments/viewmodels/r;
.super Lcom/twitter/model/moments/viewmodels/l;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/twitter/model/moments/viewmodels/q;",
        "B:",
        "Lcom/twitter/model/moments/viewmodels/r",
        "<TP;TB;>;>",
        "Lcom/twitter/model/moments/viewmodels/l",
        "<TP;TB;>;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field g:Lcom/twitter/util/math/Size;

.field h:Lcom/twitter/model/moments/k;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/twitter/model/moments/viewmodels/l;-><init>()V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/model/moments/viewmodels/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/l;-><init>(Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    .line 48
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/q;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/r;->a:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/q;->b:Lcom/twitter/util/math/Size;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/r;->g:Lcom/twitter/util/math/Size;

    .line 50
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/q;->c:Lcom/twitter/model/moments/k;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/r;->h:Lcom/twitter/model/moments/k;

    .line 51
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/k;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/r;->h:Lcom/twitter/model/moments/k;

    .line 68
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/r;

    return-object v0
.end method

.method public a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/viewmodels/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/math/Size;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/r;->g:Lcom/twitter/util/math/Size;

    .line 62
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/r;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/moments/viewmodels/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 55
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/r;->a:Ljava/lang/String;

    .line 56
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/r;

    return-object v0
.end method
