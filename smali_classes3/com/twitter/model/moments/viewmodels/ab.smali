.class public Lcom/twitter/model/moments/viewmodels/ab;
.super Lcom/twitter/model/moments/viewmodels/z;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/moments/viewmodels/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/moments/viewmodels/z",
        "<",
        "Lcom/twitter/model/moments/viewmodels/aa;",
        "Lcom/twitter/model/moments/viewmodels/ab;",
        ">;",
        "Lcom/twitter/model/moments/viewmodels/f",
        "<",
        "Lcom/twitter/model/moments/viewmodels/aa;",
        "Lcom/twitter/model/moments/viewmodels/ab;",
        ">;"
    }
.end annotation


# instance fields
.field j:J

.field k:Lcom/twitter/model/moments/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/twitter/model/moments/viewmodels/z;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/aa;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/z;-><init>(Lcom/twitter/model/moments/viewmodels/y;)V

    .line 86
    iget-wide v0, p1, Lcom/twitter/model/moments/viewmodels/aa;->a:J

    iput-wide v0, p0, Lcom/twitter/model/moments/viewmodels/ab;->j:J

    .line 87
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/aa;->b:Lcom/twitter/model/moments/k;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/ab;->k:Lcom/twitter/model/moments/k;

    .line 88
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/l;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/twitter/model/moments/viewmodels/ab;->b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/ab;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lcom/twitter/model/moments/viewmodels/ab;
    .locals 1

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/twitter/model/moments/viewmodels/ab;->j:J

    .line 99
    return-object p0
.end method

.method public b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/ab;
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/ab;->k:Lcom/twitter/model/moments/k;

    .line 106
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/ab;->e()Lcom/twitter/model/moments/viewmodels/aa;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/moments/viewmodels/aa;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/twitter/model/moments/viewmodels/aa;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/aa;-><init>(Lcom/twitter/model/moments/viewmodels/ab;)V

    return-object v0
.end method
