.class public Lxg;
.super Lwz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwz",
        "<",
        "Lcom/twitter/model/dms/z;",
        "Lxu;",
        "Lxg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lwz;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Lxe;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lxe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxe;-><init>(Lxg;Lxf;)V

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lxg;->b()Lxe;

    move-result-object v0

    return-object v0
.end method
