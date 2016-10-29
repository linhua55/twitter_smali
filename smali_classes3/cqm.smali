.class public final Lcqm;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcqk;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/twitter/model/moments/MomentGuideSectionType;

.field c:Lcom/twitter/util/collection/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/r",
            "<",
            "Lcqq;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 33
    sget-object v0, Lcom/twitter/model/moments/MomentGuideSectionType;->c:Lcom/twitter/model/moments/MomentGuideSectionType;

    iput-object v0, p0, Lcqm;->b:Lcom/twitter/model/moments/MomentGuideSectionType;

    .line 34
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    iput-object v0, p0, Lcqm;->c:Lcom/twitter/util/collection/r;

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/MomentGuideSectionType;)Lcqm;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcqm;->b:Lcom/twitter/model/moments/MomentGuideSectionType;

    .line 48
    return-object p0
.end method

.method public a(Ljava/lang/Iterable;)Lcqm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcqq;",
            ">;)",
            "Lcqm;"
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcqm;->c:Lcom/twitter/util/collection/r;

    invoke-virtual {v0, p1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    .line 74
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcqm;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcqm;->a:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcqm;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcqm;->d:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcqm;->c:Lcom/twitter/util/collection/r;

    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcqm;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcqm;->e:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcqm;->e()Lcqk;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcqm;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcqm;->f:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method protected e()Lcqk;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcqk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcqk;-><init>(Lcqm;Lcql;)V

    return-object v0
.end method
