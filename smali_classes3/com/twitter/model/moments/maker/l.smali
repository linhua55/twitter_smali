.class public Lcom/twitter/model/moments/maker/l;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/moments/maker/MomentEditOperation;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Boolean;

.field d:Lcom/twitter/model/moments/maker/n;

.field e:Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;)Lcom/twitter/model/moments/maker/l;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/twitter/model/moments/maker/l;->e:Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;

    .line 77
    return-object p0
.end method

.method public a(Lcom/twitter/model/moments/maker/n;)Lcom/twitter/model/moments/maker/l;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/twitter/model/moments/maker/l;->d:Lcom/twitter/model/moments/maker/n;

    .line 70
    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Lcom/twitter/model/moments/maker/l;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/twitter/model/moments/maker/l;->c:Ljava/lang/Boolean;

    .line 64
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/moments/maker/l;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/model/moments/maker/l;->a:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/moments/maker/l;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/twitter/model/moments/maker/l;->b:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/twitter/model/moments/maker/l;->e()Lcom/twitter/model/moments/maker/MomentEditOperation;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/moments/maker/MomentEditOperation;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/twitter/model/moments/maker/MomentEditOperation;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/maker/MomentEditOperation;-><init>(Lcom/twitter/model/moments/maker/l;)V

    return-object v0
.end method
