.class public Lyp;
.super Lwz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwz",
        "<",
        "Lcom/twitter/model/dms/dp;",
        "Lxu;",
        "Lyp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lwz;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lyp;->d()Lyn;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lyn;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lyn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyn;-><init>(Lyp;Lyo;)V

    return-object v0
.end method
