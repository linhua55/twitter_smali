.class public Lcom/twitter/model/dms/cq;
.super Lcom/twitter/model/dms/g;
.source "Twttr"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/model/dms/cs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/dms/cs",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/g;-><init>(Lcom/twitter/model/dms/h;)V

    .line 27
    invoke-static {p1}, Lcom/twitter/model/dms/cs;->a(Lcom/twitter/model/dms/cs;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/dms/cq;->a:Ljava/util/List;

    .line 28
    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/dj;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/twitter/model/dms/cr;

    invoke-direct {v0}, Lcom/twitter/model/dms/cr;-><init>()V

    invoke-static {p0, v0}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public i()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x7

    return v0
.end method
