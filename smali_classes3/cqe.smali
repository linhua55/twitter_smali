.class public final Lcqe;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcqc;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/twitter/model/moments/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/x;)Lcqe;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcqe;->c:Lcom/twitter/model/moments/x;

    .line 49
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcqe;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcqe;->a:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcqe;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcqe;->b:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcqe;->e()Lcqc;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcqc;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcqc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcqc;-><init>(Lcqe;Lcqd;)V

    return-object v0
.end method
