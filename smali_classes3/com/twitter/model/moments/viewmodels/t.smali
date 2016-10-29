.class public Lcom/twitter/model/moments/viewmodels/t;
.super Lcom/twitter/model/moments/viewmodels/q;
.source "Twttr"


# direct methods
.method private constructor <init>(Lcom/twitter/model/moments/viewmodels/v;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/q;-><init>(Lcom/twitter/model/moments/viewmodels/r;)V

    .line 9
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/moments/viewmodels/v;Lcom/twitter/model/moments/viewmodels/u;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/t;-><init>(Lcom/twitter/model/moments/viewmodels/v;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/twitter/model/moments/viewmodels/r;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/t;->b()Lcom/twitter/model/moments/viewmodels/v;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/twitter/model/moments/viewmodels/v;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/model/moments/viewmodels/v;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/v;-><init>(Lcom/twitter/model/moments/viewmodels/t;)V

    return-object v0
.end method

.method public e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->g:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    return-object v0
.end method

.method public synthetic o()Lcom/twitter/model/moments/viewmodels/l;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/t;->b()Lcom/twitter/model/moments/viewmodels/v;

    move-result-object v0

    return-object v0
.end method
