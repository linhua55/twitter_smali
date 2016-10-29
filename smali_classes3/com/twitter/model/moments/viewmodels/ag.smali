.class public abstract Lcom/twitter/model/moments/viewmodels/ag;
.super Lcom/twitter/model/moments/viewmodels/z;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/model/moments/viewmodels/af;",
        "B:",
        "Lcom/twitter/model/moments/viewmodels/ag",
        "<TT;TB;>;>",
        "Lcom/twitter/model/moments/viewmodels/z",
        "<TT;TB;>;"
    }
.end annotation


# instance fields
.field j:Lcom/twitter/model/moments/bd;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/twitter/model/moments/viewmodels/z;-><init>()V

    .line 54
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/model/moments/viewmodels/af;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/z;-><init>(Lcom/twitter/model/moments/viewmodels/y;)V

    .line 58
    invoke-static {p1}, Lcom/twitter/model/moments/viewmodels/af;->a(Lcom/twitter/model/moments/viewmodels/af;)Lcom/twitter/model/moments/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/ag;->j:Lcom/twitter/model/moments/bd;

    .line 59
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/bd;)Lcom/twitter/model/moments/viewmodels/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/bd;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/ag;->j:Lcom/twitter/model/moments/bd;

    .line 64
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/ag;

    return-object v0
.end method
