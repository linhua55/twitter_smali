.class public Lcom/twitter/android/moments/data/n;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/twitter/library/service/b;",
        ":",
        "Lbqe;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/client/bd;

.field private b:Lcom/twitter/library/service/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Ljava/lang/String;",
            ">;TR;>;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/twitter/library/client/bd;ILcom/twitter/util/object/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/client/bd;",
            "I",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Ljava/lang/String;",
            ">;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/twitter/android/moments/data/n;->a:Lcom/twitter/library/client/bd;

    .line 46
    iput-object p3, p0, Lcom/twitter/android/moments/data/n;->c:Lcom/twitter/util/object/c;

    .line 47
    iput p2, p0, Lcom/twitter/android/moments/data/n;->d:I

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/bk;Lcet;Lcom/twitter/library/client/bd;Lbqa;)Lcom/twitter/android/moments/data/n;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/twitter/android/moments/data/n;

    const/16 v1, 0x224d

    new-instance v2, Lcom/twitter/android/moments/data/o;

    invoke-direct {v2, p0, p1, p2, p4}, Lcom/twitter/android/moments/data/o;-><init>(Landroid/content/Context;Lcom/twitter/library/client/bk;Lcet;Lbqa;)V

    invoke-direct {v0, p3, v1, v2}, Lcom/twitter/android/moments/data/n;-><init>(Lcom/twitter/library/client/bd;ILcom/twitter/util/object/c;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/bf;)Z
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/moments/data/n;->c:Lcom/twitter/util/object/c;

    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/b;

    iput-object v0, p0, Lcom/twitter/android/moments/data/n;->b:Lcom/twitter/library/service/b;

    .line 52
    iget-object v0, p0, Lcom/twitter/android/moments/data/n;->a:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/moments/data/n;->b:Lcom/twitter/library/service/b;

    iget v2, p0, Lcom/twitter/android/moments/data/n;->d:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/twitter/library/client/bf;)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/data/n;->b:Lcom/twitter/library/service/b;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/twitter/android/moments/data/n;->b:Lcom/twitter/library/service/b;

    check-cast v0, Lbqe;

    invoke-interface {v0}, Lbqe;->g()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/twitter/android/moments/data/n;->c:Lcom/twitter/util/object/c;

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/b;

    iput-object v0, p0, Lcom/twitter/android/moments/data/n;->b:Lcom/twitter/library/service/b;

    .line 59
    iget-object v0, p0, Lcom/twitter/android/moments/data/n;->a:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/moments/data/n;->b:Lcom/twitter/library/service/b;

    iget v2, p0, Lcom/twitter/android/moments/data/n;->d:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 61
    :cond_0
    return-void
.end method
