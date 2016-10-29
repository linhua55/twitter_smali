.class public Lbod;
.super Lbnp;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnp",
        "<",
        "Lbod;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lbnp;-><init>()V

    return-void
.end method

.method static synthetic a(Lbod;)Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lbod;->b:Z

    return v0
.end method


# virtual methods
.method public b(Z)Lbod;
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lbod;->b:Z

    .line 106
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lbod;->e()Lboc;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lboc;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lboc;

    invoke-direct {v0, p0}, Lboc;-><init>(Lbod;)V

    return-object v0
.end method
