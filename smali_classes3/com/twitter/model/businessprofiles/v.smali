.class public final Lcom/twitter/model/businessprofiles/v;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/businessprofiles/t;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/model/businessprofiles/an;

.field b:Lcom/twitter/model/businessprofiles/an;

.field c:Lcom/twitter/model/businessprofiles/an;

.field d:Lcom/twitter/model/businessprofiles/an;

.field e:Lcom/twitter/model/businessprofiles/an;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/businessprofiles/an;)Lcom/twitter/model/businessprofiles/v;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/twitter/model/businessprofiles/v;->a:Lcom/twitter/model/businessprofiles/an;

    .line 66
    return-object p0
.end method

.method public b(Lcom/twitter/model/businessprofiles/an;)Lcom/twitter/model/businessprofiles/v;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/twitter/model/businessprofiles/v;->b:Lcom/twitter/model/businessprofiles/an;

    .line 72
    return-object p0
.end method

.method public c(Lcom/twitter/model/businessprofiles/an;)Lcom/twitter/model/businessprofiles/v;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/twitter/model/businessprofiles/v;->c:Lcom/twitter/model/businessprofiles/an;

    .line 78
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/twitter/model/businessprofiles/v;->e()Lcom/twitter/model/businessprofiles/t;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/twitter/model/businessprofiles/an;)Lcom/twitter/model/businessprofiles/v;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/twitter/model/businessprofiles/v;->d:Lcom/twitter/model/businessprofiles/an;

    .line 84
    return-object p0
.end method

.method protected e()Lcom/twitter/model/businessprofiles/t;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/twitter/model/businessprofiles/t;

    invoke-direct {v0, p0}, Lcom/twitter/model/businessprofiles/t;-><init>(Lcom/twitter/model/businessprofiles/v;)V

    return-object v0
.end method

.method public e(Lcom/twitter/model/businessprofiles/an;)Lcom/twitter/model/businessprofiles/v;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/twitter/model/businessprofiles/v;->e:Lcom/twitter/model/businessprofiles/an;

    .line 89
    return-object p0
.end method
