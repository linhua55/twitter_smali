.class public Lcom/twitter/android/moments/ui/maker/d;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lces;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/maker/d;->b:Z

    .line 16
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/d;->a:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 22
    invoke-static {}, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->values()[Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 23
    sget-object v5, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->c:Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    if-ne v4, v5, :cond_0

    iget-boolean v5, p0, Lcom/twitter/android/moments/ui/maker/d;->b:Z

    if-eqz v5, :cond_1

    .line 24
    :cond_0
    invoke-virtual {v1, v4}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 22
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
