.class public final Lcsk;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcsi;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcse;

.field private b:Lcse;

.field private c:Lcse;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcrt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 48
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcsk;->d:Ljava/util/List;

    .line 47
    return-void
.end method

.method static synthetic a(Lcsk;)Lcse;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcsk;->a:Lcse;

    return-object v0
.end method

.method static synthetic b(Lcsk;)Lcse;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcsk;->b:Lcse;

    return-object v0
.end method

.method static synthetic c(Lcsk;)Lcse;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcsk;->c:Lcse;

    return-object v0
.end method

.method static synthetic d(Lcsk;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcsk;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lcse;)Lcsk;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcsk;->a:Lcse;

    .line 53
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcsk;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcrt;",
            ">;)",
            "Lcsk;"
        }
    .end annotation

    .prologue
    .line 70
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcsk;->d:Ljava/util/List;

    .line 71
    return-object p0

    .line 70
    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object p1

    goto :goto_0
.end method

.method public b(Lcse;)Lcsk;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcsk;->b:Lcse;

    .line 59
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcsk;->a:Lcse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcse;)Lcsk;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcsk;->c:Lcse;

    .line 65
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcsk;->e()Lcsi;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcsi;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcsi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcsi;-><init>(Lcsk;Lcsj;)V

    return-object v0
.end method
