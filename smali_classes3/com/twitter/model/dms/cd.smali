.class public Lcom/twitter/model/dms/cd;
.super Lcom/twitter/model/dms/j;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/j",
        "<",
        "Lcom/twitter/model/dms/cb;",
        "Lcom/twitter/model/dms/cd;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/twitter/model/dms/j;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/dms/cd;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/twitter/model/dms/cd;->b:I

    return v0
.end method


# virtual methods
.method public c(I)Lcom/twitter/model/dms/cd;
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/twitter/model/dms/cd;->b:I

    .line 40
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/twitter/model/dms/cd;->e()Lcom/twitter/model/dms/cb;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/cb;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/twitter/model/dms/cb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/cb;-><init>(Lcom/twitter/model/dms/cd;Lcom/twitter/model/dms/cc;)V

    return-object v0
.end method
