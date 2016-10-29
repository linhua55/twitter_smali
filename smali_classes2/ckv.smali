.class public final Lckv;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lckt;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lckv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lckv;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lckv;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lckv;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lckv;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lckv;->a:Ljava/lang/String;

    .line 32
    return-object p0
.end method

.method public a(Ljava/util/List;)Lckv;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/t;",
            ">;)",
            "Lckv;"
        }
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lckv;->b:Ljava/util/List;

    .line 38
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lckv;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lckv;->e()Lckt;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lckt;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lckt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lckt;-><init>(Lckv;Lcku;)V

    return-object v0
.end method
