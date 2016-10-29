.class public final Lcom/twitter/model/dms/dt;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/dms/ds;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/dms/dt;)Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/model/dms/dt;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/model/dms/dt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/model/dms/dt;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/model/dms/dt;)Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/model/dms/dt;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/model/dms/dt;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/twitter/model/dms/dt;->b:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/model/dms/dt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/Participant;",
            ">;)",
            "Lcom/twitter/model/dms/dt;"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/twitter/model/dms/dt;->a:Ljava/util/List;

    .line 88
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/twitter/model/dms/dt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/twitter/model/dms/dt;"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/twitter/model/dms/dt;->c:Ljava/util/List;

    .line 100
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/twitter/model/dms/dt;->e()Lcom/twitter/model/dms/ds;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/ds;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/twitter/model/dms/ds;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/ds;-><init>(Lcom/twitter/model/dms/dt;Lcom/twitter/model/dms/dq;)V

    return-object v0
.end method
