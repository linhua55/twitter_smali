.class Lcom/twitter/android/periscope/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/data/b;


# instance fields
.field private final a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ltv/periscope/model/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/twitter/android/periscope/f;-><init>(Landroid/util/LruCache;)V

    .line 21
    return-void
.end method

.method constructor <init>(Landroid/util/LruCache;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ltv/periscope/model/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/twitter/android/periscope/f;->a:Landroid/util/LruCache;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ltv/periscope/model/o;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/android/periscope/f;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/model/o;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ltv/periscope/model/o;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/periscope/f;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public b(Ljava/lang/String;)Ltv/periscope/model/r;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/twitter/android/periscope/f;->a(Ljava/lang/String;)Ltv/periscope/model/o;

    move-result-object v0

    return-object v0
.end method
