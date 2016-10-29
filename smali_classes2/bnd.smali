.class public Lbnd;
.super Lbmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbmv",
        "<",
        "Lbnb;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lbmv;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbnd;->a:Z

    .line 83
    return-void
.end method

.method static synthetic a(Lbnd;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lbnd;->a:Z

    return v0
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lbnd;->e()Lbnb;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lbnb;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lbnb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbnb;-><init>(Lbnd;Lbnc;)V

    return-object v0
.end method
