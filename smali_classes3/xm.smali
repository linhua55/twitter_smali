.class public Lxm;
.super Lwz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwz",
        "<",
        "Lcom/twitter/model/dms/eh;",
        "Lxn;",
        "Lxm;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lwz;-><init>()V

    return-void
.end method

.method static synthetic a(Lxm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lxm;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lxm;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lxm;->c:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method protected b()Lxk;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lxk;

    invoke-direct {v0, p0}, Lxk;-><init>(Lxm;)V

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lxm;->b()Lxk;

    move-result-object v0

    return-object v0
.end method
