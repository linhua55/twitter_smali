.class public Lbnf;
.super Lbmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbmv",
        "<",
        "Lbne;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lbmv;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 63
    return-void
.end method

.method static synthetic a(Lbnf;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lbnf;->a:Z

    return v0
.end method


# virtual methods
.method public a(Z)Lbnf;
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lbnf;->a:Z

    .line 68
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lbnf;->e()Lbne;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lbne;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lbne;

    invoke-direct {v0, p0}, Lbne;-><init>(Lbnf;)V

    return-object v0
.end method
