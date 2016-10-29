.class public Lcno;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcno;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcnq;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Date;

.field public final f:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcns;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcns;-><init>(Lcnp;)V

    sput-object v0, Lcno;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcnq;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcno;->b:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcno;->c:I

    .line 36
    invoke-static {p3}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcno;->d:Ljava/util/List;

    .line 37
    iput-object p4, p0, Lcno;->e:Ljava/util/Date;

    .line 38
    iput-object p5, p0, Lcno;->f:Ljava/util/Date;

    .line 39
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcno;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnq;

    .line 45
    iget v3, v0, Lcnq;->c:I

    add-int/2addr v1, v3

    .line 46
    if-ge p1, v1, :cond_0

    .line 47
    iget-object v0, v0, Lcnq;->b:Ljava/lang/String;

    .line 50
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "unassigned"

    goto :goto_0
.end method
