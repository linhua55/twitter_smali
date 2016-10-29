.class public Lbbd;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field a:Lbbb;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbbf;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbbe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbbb;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lbbd;->a:Lbbb;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbd;->b:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbd;->c:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Lbbd;
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lbbd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbf;

    .line 38
    iget-object v2, p0, Lbbd;->a:Lbbb;

    invoke-interface {v0, v2}, Lbbf;->a(Lbbb;)V

    goto :goto_0

    .line 40
    :cond_0
    return-object p0
.end method

.method public a(Lbbe;)Lbbd;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lbbd;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-object p0
.end method

.method public a(Lbbf;)Lbbd;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lbbd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-object p0
.end method

.method public b()Lbbd;
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lbbd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbe;

    .line 46
    iget-object v2, p0, Lbbd;->a:Lbbb;

    invoke-interface {v0, v2}, Lbbe;->a(Lbbb;)V

    goto :goto_0

    .line 48
    :cond_0
    return-object p0
.end method
