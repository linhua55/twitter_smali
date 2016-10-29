.class public final Lcom/twitter/library/scribe/bd;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/library/scribe/bb;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/bf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/twitter/library/scribe/bd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/bf;",
            ">;)",
            "Lcom/twitter/library/scribe/bd;"
        }
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/twitter/library/scribe/bd;->a:Ljava/util/List;

    .line 72
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/twitter/library/scribe/bd;->e()Lcom/twitter/library/scribe/bb;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/library/scribe/bb;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/twitter/library/scribe/bb;

    invoke-direct {v0, p0}, Lcom/twitter/library/scribe/bb;-><init>(Lcom/twitter/library/scribe/bd;)V

    return-object v0
.end method
