.class public Lcqh;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcqg;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcqt;

.field b:Lcom/twitter/model/moments/MomentPageDisplayMode;

.field c:Lcom/twitter/model/moments/ak;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 42
    sget-object v0, Lcom/twitter/model/moments/MomentPageDisplayMode;->b:Lcom/twitter/model/moments/MomentPageDisplayMode;

    iput-object v0, p0, Lcqh;->b:Lcom/twitter/model/moments/MomentPageDisplayMode;

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcqh;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcqh;->b:Lcom/twitter/model/moments/MomentPageDisplayMode;

    .line 54
    return-object p0
.end method

.method public a(Lcom/twitter/model/moments/ak;)Lcqh;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcqh;->c:Lcom/twitter/model/moments/ak;

    .line 60
    return-object p0
.end method

.method public a(Lcqt;)Lcqh;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcqh;->a:Lcqt;

    .line 48
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcqh;->e()Lcqg;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcqg;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcqg;

    invoke-direct {v0, p0}, Lcqg;-><init>(Lcqh;)V

    return-object v0
.end method
