.class public Lcom/twitter/model/dms/dk;
.super Lcom/twitter/model/dms/as;
.source "Twttr"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/cy;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/al;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/ev;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/ev;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/al;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/g;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/cy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/twitter/model/dms/as;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/twitter/model/dms/dk;->b:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/twitter/model/dms/dk;->e:Ljava/util/List;

    .line 30
    iput-object p3, p0, Lcom/twitter/model/dms/dk;->c:Ljava/util/List;

    .line 31
    iput-object p4, p0, Lcom/twitter/model/dms/dk;->d:Ljava/util/List;

    .line 32
    iput-object p5, p0, Lcom/twitter/model/dms/dk;->a:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/model/dms/dk;->d:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/model/dms/dk;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/al;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/model/dms/dk;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x4

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 82
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public g()Lcom/twitter/model/dms/bo;
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/twitter/model/dms/dk;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    .line 38
    invoke-virtual {v0}, Lcom/twitter/model/dms/g;->i()I

    move-result v2

    if-nez v2, :cond_0

    .line 39
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bo;

    .line 43
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
