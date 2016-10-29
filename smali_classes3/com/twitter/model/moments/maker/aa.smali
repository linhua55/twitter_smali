.class public Lcom/twitter/model/moments/maker/aa;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/moments/maker/y;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/maker/w;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/twitter/model/moments/maker/aa;
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/twitter/model/moments/maker/aa;->a:J

    .line 82
    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/twitter/model/moments/maker/aa;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/twitter/model/moments/maker/aa;->c:Ljava/lang/Integer;

    .line 94
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/model/moments/maker/aa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/maker/w;",
            ">;)",
            "Lcom/twitter/model/moments/maker/aa;"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/twitter/model/moments/maker/aa;->b:Ljava/util/List;

    .line 88
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/twitter/model/moments/maker/aa;->e()Lcom/twitter/model/moments/maker/y;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/moments/maker/y;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/twitter/model/moments/maker/y;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/maker/y;-><init>(Lcom/twitter/model/moments/maker/aa;)V

    return-object v0
.end method
