.class public Lcom/twitter/android/moments/viewmodels/ao;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/viewmodels/m;


# instance fields
.field private final a:Lcom/twitter/android/moments/viewmodels/m;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/viewmodels/m;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/ao;->a:Lcom/twitter/android/moments/viewmodels/m;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/viewmodels/MomentGuideSection;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/viewmodels/MomentGuideSection;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/ao;->a:Lcom/twitter/android/moments/viewmodels/m;

    .line 22
    invoke-interface {v0, p1, p2, p3}, Lcom/twitter/android/moments/viewmodels/m;->a(Lcom/twitter/android/moments/viewmodels/MomentGuideSection;II)Ljava/util/List;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/viewmodels/x;

    invoke-direct {v2}, Lcom/twitter/android/moments/viewmodels/x;-><init>()V

    .line 24
    invoke-virtual {v1, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 23
    return-object v0
.end method
